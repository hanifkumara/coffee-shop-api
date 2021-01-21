const product = require('../controllers/product')
const verifyUser = require('../middlewares/verifyUser')
const verifyRole = require('../middlewares/verifyRole')
const upload = require('../middlewares/upload')
const router = require('express').Router()

module.exports = router
  .get('/', verifyUser, product.getAllProducts)
  .get('/:id', verifyUser, product.getProductById)
  .post('/create', [verifyUser, verifyRole, upload], product.createProduct)
  .patch('/:id', [verifyUser, verifyRole, upload], product.updateProduct)
  .delete('/:id', [verifyUser, verifyRole], product.deleteProduct)