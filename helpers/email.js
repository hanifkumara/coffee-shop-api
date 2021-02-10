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
      subject: 'Verification Account ✔',
      html: `<!DOCTYPE html>
      <html lang="en">
      <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Document</title>
          <style>
              body{
                  padding: 50px 0;
              }
              .container{
                  display: flex;
                  justify-content: center;
                  align-items: center;
              }
              .wrapper {
                  text-align: center;
                  width: 100%;
                  height: fit-content;
              }
              .message {
                  width: 100%;
                  margin-top: 20px;
                  margin-bottom: 20px;
              }
              .message>p {
                  display:block;
                  margin: auto;
                  width: 35%;
                  margin-top: 10px;
              }
              .logo{
                  width: 120px;
                  height: 120px;
                  display: flex;
                  margin: auto;
              }
              .logo>img{
                  object-fit: contain;
                  width: 100%;
                  height: 100%;
              }
              .wrapper>a{
                  color: black;
                  text-decoration: none;
                  padding: 10px 20px;
                  background-color: #4460ff;
                  border-radius: 5px;
                  color: white
              }
              .wrapper>a:hover{
                  border: none;
              }
              .text-danger{
                  font-size: 11px;
                  margin-top: 20px;
                  color: red;
              }
              @media screen and (max-width: 768px) {
                  .message>p {
                      width: 85%;
                  }
                  .text-danger{
                      font-size: 7px;
                      margin-top: 18px;
                      color: red;
                  }
              }
          </style>
      </head>
      <body>
          <!-- <button onclick="getUser()">Get API</button> -->
          <div class="container">
              <div class="wrapper">            
                  <h3>Congratulation</h3><div class="logo">
                      <img src="https://www.freeiconspng.com/uploads/success-icon-10.png" alt="success" />
                  </div>
                  <div class="message">
                      <p>Thank you for registering on <span style="color: #4460ff;">Coffee Shop</span> </p>
                      <p>Please click the button to verify your account</p>
                  </div>
                  <a href="${url}">Go to Coffee Shop</a>
                  <p class="text-danger text-align-center">The link will expire within 5 hours</p>
              </div>
          </div>
      </body>
      </html>`
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
      html: `<!DOCTYPE html>
      <html lang="en">
      <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Document</title>
          <style>
              body{
                  padding: 50px 0;
              }
              .container{
                  display: flex;
                  justify-content: center;
                  align-items: center;
              }
              .wrapper {
                  text-align: center;
                  width: 100%;
                  height: fit-content;
              }
              .message {
                  width: 100%;
                  margin-top: 20px;
                  margin-bottom: 20px;
              }
              .message>p {
                  display:block;
                  margin: auto;
                  width: 25%;
                  margin-top: 10px;
              }
              .logo{
                  width: 120px;
                  height: 120px;
                  display: flex;
                  margin: auto;
              }
              .logo>img{
                  object-fit: contain;
                  width: 100%;
                  height: 100%;
              }
              .wrapper>a{
                  color: black;
                  text-decoration: none;
                  padding: 10px 20px;
                  background-color: #4460ff;
                  border-radius: 5px;
                  color: white
              }
              .wrapper>a:hover{
                  border: none;
              }
              .text-danger{
                  font-size: 11px;
                  margin-top: 20px;
                  color: red;
              }
              @media screen and (max-width: 768px) {
                  .message>p {
                      width: 85%;
                  }
                  .text-danger{
                      font-size: 7px;
                      margin-top: 18px;
                      color: red;
                  }
              }
          </style>
      </head>
      <body>
          <!-- <button onclick="getUser()">Get API</button> -->
          <div class="container">
              <div class="wrapper">     
                  <div class="logo">
                      <img src="https://i.ibb.co/DGsWm4f/logo-coffee-shop.png" alt="Logo Coffee Shop" />
                  </div>
                  <div class="message">
                      <p>Thanks for using <span style="color: #4460ff;">Coffee Shop</span> </p>
                      <p>Please click the button to reset password</p>
                  </div>
                  <a href="${url}">Reset Password</a>
                  <p class="text-danger text-align-center">The link will expire within 5 hours</p>
              </div>
          </div>
      </body>
      </html>`, // html body
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