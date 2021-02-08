const { v4: uuidv4 } = require('uuid')
const { modelAddMessage, modelChatPrivate, modelAllStaff, modelListStaffChat } = require('../models/message')
const { getUserById } = require('../models/user')

exports.getAllStaff = async (req, res) => {
  try {
    const result = await modelAllStaff()
    return res.status(200).send({
      status: 'Success',
      statusCode: 201,
      result
    })
  } catch (error) {
    return res.status(500).send({
      status: 'Failed',
      statusCode: 500,
      message: 'Internal Server Error!!!'
    })
  }
},
exports.getListStaffChat = async (req, res) => {
  try {
    const {user} = req
    const result = await modelListStaffChat(user.userId)
    const container = []
    const listUser = []
    for(let i = 0; i < result.length; i++) {
      if (container.indexOf(result[i].idSender) === -1) {
        container.push(result[i].idSender)
      }
    }
    container.map(async value => {
      const result2 = await getUserById(value)
      listUser.push(result2[0])
    })
    setTimeout(() => {
      return res.status(200).send({
        status: 'Success',
        statusCode: 201,
        result2: listUser
      })
    }, 500);
  } catch (error) {
    return res.status(500).send({
      status: 'Failed',
      statusCode: 500,
      message: 'Internal Server Error!!!'
    })
  }
}
exports.addMessage = async (req, res) => {
  try {
    const {user} = req
    const {message, idReceiver} = req.body
    const id = uuidv4()
    const data = {
      id,
      idSender: user.userId,
      idReceiver,
      message
    }
    const result = await modelAddMessage(data)
    return res.status(201).send({
      status: 'Success',
      statusCode: 201,
      message: 'Send message success!'
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

exports.historyMessage = async (req, res) => {
  try {
    const {user} = req
    const {idReceiver} = req.params
    const result = await modelChatPrivate(user.userId, idReceiver)
    return res.status(201).send({
      status: 'Success',
      statusCode: 200,
      result
    })
  } catch (err) {
    console.log(error)
    return res.status(500).send({
      status: 'Failed',
      statusCode: 500,
      message: 'Internal server error!'
    })
  }
}