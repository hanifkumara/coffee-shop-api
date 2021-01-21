const order = require('../controllers/order')
const verifyUser = require('../middlewares/verifyUser')
const verifyRole = require('../middlewares/verifyRole')
const router = require('express').Router()

module.exports = router
  .post('/add-to-cart', verifyUser, order.addToCart)
  .get('/get-cart', verifyUser, order.getCart)
  .patch('/checkout', verifyUser, order.checkout)
  .get('/get-order', [verifyUser, verifyRole], order.getOrder)
  .patch('/complete-order', [verifyUser, verifyRole], order.completeOrder)
  .get('/history', verifyUser, order.orderHistory)
