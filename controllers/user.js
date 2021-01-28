require('dotenv').config()
const userModel = require('../models/user')
const bcrypt = require('bcrypt')
const { v4: uuid } = require('uuid')
const jwt = require('jsonwebtoken')
const fs = require('fs')
const { sendEmail, emailForgotPassword } = require('../helpers/email')

module.exports = {
  register: async (req, res) => {
    try {
      const user = await userModel.getUserByEmail(req.body.email)
      if (user[0]) return res.status(400).send({
        status: 'Failed',
        statusCode: 400,
        message: 'Email already exists!'
      })
      
      const salt = await bcrypt.genSalt(10)
      const hashedPassword = await bcrypt.hash(req.body.password, salt)
      const id = uuid()
      jwt.sign({ user: id }, process.env.JWT_SECRET_KEY, { expiresIn: '1d' }, (err, emailToken) => {
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
          fs.unlinkSync('./images/' + user[0].image)
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
        fs.unlinkSync('./images/' + user[0].image)
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
  },
  forgotPassword:  async (req, res) => {
    try {
      const { email } = req.body
      const resEmail = await userModel.getUserByEmail(email)
      if (resEmail.length < 1) {
        return res.status(401).send({
          status: 'Success',
          statusCode: 401,
          message: 'Email not found!!'
        })
      } else {
        jwt.sign({ myId: resEmail[0].id }, process.env.JWT_SECRET_KEY, { expiresIn: '1d' }, (err, emailToken) => {
          const url = `${process.env.BASE_URL_FRONTEND}/auth/create-password/${emailToken}`;
          emailForgotPassword(email, url)
            .then(result => {
              console.log(result)
              return res.status(201).send({
                status: 'Success',
                statusCode: 200,
                message: 'Send email success!'
              })
            })
            .catch(err => {
              console.log(err)
            })
        })
      }
    } catch (err) {
      console.log(error)
      return res.status(500).send({
        status: 'Failed',
        statusCode: 500,
        message: 'Internal server error!'
      })
    }
  },
  resetPassword: (req, res) => {
    try {
      const { password } = req.body
      const authorization = req.headers.authorization
      if (!authorization) return response(res, 201, null, { message: 'You not have token!!' })
      let token = authorization.split(' ')
      token = token[1]
      jwt.verify(token, process.env.JWT_SECRET_KEY, function (err, decoded) {
        if (err) {
          if (err.name === 'JsonWebTokenError') {
            return res.status(201).send({
              status: 'Failed',
              statusCode: 201,
              message: 'Invalid Token!!'
            })
          } else if (err.name === 'TokenExpiredError') {
            return res.status(500).send({
              status: 'Failed',
              statusCode: 500,
              message: 'Token expred!!'
            })
          }
        }
        bcrypt.genSalt(10, function (err, salt) {
          bcrypt.hash(password, salt, async function (err, hash) {
            await userModel.updatePassword({ password: hash}, decoded.myId)
            return res.status(201).send({
              status: 'Success',
              statusCode: 201,
              message: 'Reset password success!'
            })
          })
        })
      })
    } catch (error) {
      return res.status(500).send({
        status: 'Failed',
        statusCode: 500,
        message: 'Something went wrong!!!'
      })
    }
  }
}