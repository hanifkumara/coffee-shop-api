const db = require('./database')

exports.modelAddMessage = (data) => {
  return db(`INSERT INTO message SET id = '${data.id}', idSender = '${data.idSender}', idReceiver = '${data.idReceiver}', message = "${data.message}"`)
  .then(result => {
    return result
  })
  .catch(error => {
    throw error
  })
}

exports.modelChatPrivate = (idSender, idReceiver) => {
  return db(`SELECT message.*, sender_name.displayName as senderMessage, receiver_name.displayName as receiverMessage FROM message INNER JOIN users sender_name ON message.idSender = sender_name.id INNER JOIN users receiver_name ON message.idReceiver = receiver_name.id WHERE sender_name.id = '${idSender}' AND receiver_name.id = '${idReceiver}' OR sender_name.id = '${idReceiver}' AND receiver_name.id = '${idSender}' ORDER BY message.createdAt ASC`)
  .then(result => {
    return result
  })
  .catch(error => {
    throw error
  })
}

exports.modelAllStaff = () => {
  return db(`SELECT id, displayName, firstName, lastName, CONCAT('${process.env.BASE_URL}/images/', avatar) as avatar, mobileNumber, deliveryAddress, birthDate, avatar as image, gender, email FROM users WHERE role = 'admin'`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    }) 
}

exports.modelListStaffChat = (myId) => {
  return db(`SELECT * FROM message WHERE idReceiver = '${myId}'`)
  .then(result => {
    return result
  })
  .catch(error => {
    throw error
  })
}