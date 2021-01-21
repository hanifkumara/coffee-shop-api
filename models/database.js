require('dotenv').config()
const mysql = require('mysql2')
const { DB_HOST, DB_USER, DB_PASSWORD, DB_NAME } = process.env

const conn = mysql.createConnection({
  host: DB_HOST,
  user: DB_USER,
  password: DB_PASSWORD,
  database: DB_NAME
})

module.exports = (sql) => {
  return new Promise((resolve, reject) => {
    conn.query(sql, (error, result) => {
      if (error) reject(error)
      resolve(result)
    })
  })
}