const user = require('../controllers/user')
const router = require('express').Router()
const verifyUser = require('../middlewares/verifyUser')
const upload = require('../middlewares/upload')
const jwt = require('jsonwebtoken')
const { verifyUserModel } = require('../models/user')

module.exports = router
  .post('/register', user.register)
  .post('/login', user.login)
  .get('/:id', verifyUser, user.getUserById)
  .get('/confirmation/:token', async (req, res) => {
    try {
      const result = jwt.verify(req.params.token, process.env.JWT_SECRET_KEY)
      const id = result.user
      await verifyUserModel(id)
    } catch (error) {
      return res.status(401).send({
        status: 'Failed',
        statusCode: 401,
        message: 'Something Went Wrong!'
      })
    }
    return res.status(200).send({
      status: 'Success',
      statusCode: 200,
      message: 'Verification account Success'
    })
  })
  .patch('/:id', [verifyUser, upload], user.updateUser)