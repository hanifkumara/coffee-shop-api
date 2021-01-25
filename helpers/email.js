const nodemailer = require('nodemailer')
const transporter = nodemailer.createTransport({
  host: 'smtp.gmail.com',
  port: 587,
  secure: false,
  auth: {
    user: process.env.EMAIL_USERNAME,
    pass: process.env.EMAIL_PASSWORD
  }
})
exports.sendEmail = (email, url) => {
  return new Promise((resolve, reject) => {
    const message = {
      from: process.env.EMAIL_USERNAME, // sender address
      to: email,
      subject: 'Confirm Email',
      html: `Please click this email to confirm your email: <a href="${url}">Go to Login</a>`
    }
    transporter.sendMail(message, (error, info) => {
      if (error) {
        reject(error)
      } else {
        resolve(info)
      }
    }
    )
  })
}
exports.emailForgotPassword = (email, url) => {
  return new Promise((resolve, reject) => {
    let message = {
      from: process.env.EMAIL_USERNAME, // sender address
      to: email, // list of receivers
      subject: "Reset Password ✔", // Subject line
      html: `Please click this link for reset your password <a href='${url}'>Reset Password</a>`, // html body
    }
    transporter.sendMail(message, (error, info) => {
      if (error) {
        reject(error)
      } else {
        resolve(info)
      }
    })
  })
}