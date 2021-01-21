require('dotenv').config()
const userModel = require('../models/user')
const bcrypt = require('bcrypt')
const { v4: uuid } = require('uuid')
const jwt = require('jsonwebtoken')
const fs = require('fs')
const {sendEmail} = require('../helpers/email')

module.exports = {
  register: async (req, res) => {
    try {
      const user = await userModel.getUserByEmail(req.body.email)
      // if (user[0]) return res.status(400).send({
      //   status: 'Failed',
      //   statusCode: 400,
      //   message: 'Email already exists!'
      // })
      
      const salt = await bcrypt.genSalt(10)
      const hashedPassword = await bcrypt.hash(req.body.password, salt)
      const id = uuid()
      jwt.sign({ user: id }, process.env.JWT_SECRET_KEY, { expiresIn: '1d' }, (err, emailToken) => {
        console.log(emailToken)
        const url = `${process.env.BASE_URL_FRONTEND}/confirmation-email/${emailToken}`;
        sendEmail(req.body.email, url)
      },
      );

      await userModel.insertUser({
        id: id,
        email: req.body.email,
        mobileNumber: req.body.mobileNumber,
        password: hashedPassword
      })

      return res.status(201).send({
        status: 'Success',
        statusCode: 201,
        message: 'Register success!'
      })
    } catch (error) {
      console.log(error)
      return res.status(500).send({
        status: 'Failed',
        statusCode: 500,
        message: 'Internal server error!'
      })
    }
  },
  login: async (req, res) => {
    try {
      const user = await userModel.getUserByEmail(req.body.email)
      if (!user[0]) return res.status(404).send({
        status: 'Failed',
        statusCode: 404,
        message: 'User not found!'
      })
      if (user[0].confirmed !== 1) return res.status(400).send({
        status: 'Failed',
        statusCode: 400,
        message: 'You have not verified your email. If there is no message. Wait for a moment !'
      })
      console.log('ini result user', user[0].confirmed)

      const passwordMatched = await bcrypt.compare(req.body.password, user[0].password)
      if (!passwordMatched) return res.status(400).send({
        status: 'Failed',
        statusCode: 400,
        message: 'Password wrong!'
      })

      const token = jwt.sign({ userId: user[0].id, role: user[0].role }, process.env.JWT_SECRET_KEY)
      return res.status(200).send({
        status: 'Success',
        statusCode: 200,
        authToken: token,
        userId: user[0].id,
        userRole: user[0].role,
        message: 'Login success!'
      })
    } catch (error) {
      console.log(error)
      return res.status(500).send({
        status: 'Failed',
        statusCode: 500,
        message: 'Internal server error!'
      })
    }
  },
  getUserById: async (req, res) => {
    try {
      const result = await userModel.getUserById(req.params.id)
      if (!result[0]) return res.status(404).send({
        status: 'Failed',
        statusCode: 404,
        message: 'User not found!'
      })

      return res.status(200).send({
        status: 'Success',
        statusCode: 200,
        data: result[0]
      })
    } catch (error) {
      console.log(error)
      return res.status(500).send({
        status: 'Failed',
        statusCode: 500,
        message: 'Internal server error!'
      })
    }
  },
  updateUser: async (req, res) => {
    try {
      const user = await userModel.getUserById(req.params.id)
      if (!user[0]) {
        if(req.file) {
          fs.unlinkSync(process.env.BASE_PATH + '/images/' + user[0].image)
        }
        return res.status(404).send({
          status: 'Failed',
          statusCode: 404,
          message: 'User not found!'
        })
      }

      let avatar = null
      if (req.file) {
        avatar = req.file.filename
      }

      if (req.file && user[0].image !== 'default.jpg') {
        fs.unlinkSync(process.env.BASE_PATH + '/images/' + user[0].image)
      }

      const newUserData = {
        displayName: req.body.displayName || user[0].displayName,
        firstName: req.body.firstName || user[0].firstName,
        lastName: req.body.lastName || user[0].lastName,
        mobileNumber: req.body.mobileNumber || user[0].mobileNumber,
        deliveryAddress: req.body.deliveryAddress || user[0].deliveryAddress,
        gender: req.body.gender || user[0].gender,
        birthDate: req.body.birthDate || user[0].birthDate,
        avatar: avatar || user[0].image
      }

      await userModel.updateUser(newUserData, req.params.id)
      return res.status(200).send({
        status: 'Success',
        statusCode: 200,
        updateId: req.params.id,
        message: 'User profile updated!'
      })
    } catch (error) {
      console.log(error)
      return res.status(500).send({
        status: 'Failed',
        statusCode: 500,
        message: 'Internal server error!'
      })
    }
  }
}