const db = require('./database')

module.exports = {
  insertUser: (data) => {
    return db(`INSERT INTO users SET id = '${data.id}', email = '${data.email}', password = '${data.password}', mobileNumber = '${data.mobileNumber}'`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    }) 
  },
  getUserByEmail: (email) => {
    return db(`SELECT * FROM users WHERE email = '${email}'`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    })
  },
  getUserById: (id) => {
    return db(`SELECT id, displayName, firstName, lastName, CONCAT('${process.env.BASE_URL}/images/', avatar) as avatar, mobileNumber, deliveryAddress, birthDate, avatar as image, gender, email FROM users WHERE id = '${id}'`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    })
  },
  updateUser: (data, id) => {
    return db(`UPDATE users SET displayName = '${data.displayName}', firstName = '${data.firstName}', lastName = '${data.lastName}', deliveryAddress = '${data.deliveryAddress}', mobileNumber = '${data.mobileNumber}', avatar = '${data.avatar}', gender = '${data.gender}' WHERE id  = '${id}'`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    }) 
  },
  verifyUserModel: (id) => {
    return db(`UPDATE users SET confirmed = 1 WHERE id = '${id}'`)
      .then(result => {
        return result
      })
      .catch(error => {
        throw error
      }) 
  },
  updatePassword: (data, id) => {
    return db(`UPDATE users SET password = '${data.password}' WHERE id  = '${id}'`)
      .then(result => {
        return result
      })
      .catch(error => {
        throw error
      }) 
  }
}