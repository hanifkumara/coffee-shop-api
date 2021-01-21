const multer = require('multer')

const fileHandler = require('../helpers/fileHandler').single('image')

module.exports = (req, res, next) => {
  fileHandler(req, res, error => {
    if (error instanceof multer.MulterError) {
      return res.status(400).send({
        status: 'Failed',
        statusCode: 400,
        message: 'Image too large!'
      })
    }

    if (error) {
      console.lo0g(error)
      return res.status(500).send({
        status: 'Failed',
        statusCode: 500,
        message: 'Internal server error'
      })
    }

    next()
  })
}
