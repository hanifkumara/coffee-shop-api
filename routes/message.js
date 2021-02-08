const { verify } = require('jsonwebtoken')
const { addMessage, historyMessage, getAllStaff, getListStaffChat } = require('../controllers/message')
const verifyUser = require('../middlewares/verifyUser')
const router = require('express').Router()

module.exports = router
  .post('/', verifyUser, addMessage)
  .get('/all-staff', verifyUser, getAllStaff)
  .get('/list-staff-chat', verifyUser, getListStaffChat)
  .get('/:idReceiver', verifyUser, historyMessage)