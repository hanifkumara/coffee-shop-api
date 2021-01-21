const multer = require('multer')

const storage = multer.diskStorage({
  destination: (req, file, callback) => {
    callback(null, './images')
  },
  filename: (req, file, callback) => {
    callback(null, Date.now() + '-' + file.originalname)
  }
})

const fileFilter = (req, file, callback) => {
  if (file.mimetype === 'image/jpeg' || file.mimetype === 'image/png') {
    return callback(null, true)
  }

  req.res.status(400).send({
    status: 'Failed',
    statusCode: 400,
    message: 'Product image must be an image file!'
  })
}

module.exports = multer({ storage, fileFilter, limits: { fileSize: 1500000 }})