const orderModel = require('../models/order')
const userModel = require('../models/user')
const { v4: uuid } = require('uuid')
const productModel = require('../models/product')

module.exports = {
  addToCart: async (req, res) => {
    try {
      const products = await productModel.getProductById(req.body.productId)
      if (!products[0]) return res.status(404).send({
        status: 'Failed',
        statusCode: 404,
        message: 'Product not found!'
      })
      
      let carts = await orderModel.getCart(req.user.userId)
      if (!carts[0]) {
        await orderModel.createCart(uuid(), req.user.userId)
        carts = await orderModel.getCart(req.user.userId)
      }
      
      let totalPrice = 0
      if (req.body.productSize === 'R' || req.body.productSize === '250gr') totalPrice = (parseInt(products[0].price) + (parseInt(products[0].price) * 0.05)) * req.body.amount
      if (req.body.productSize === 'L' || req.body.productSize === '350gr') totalPrice = (parseInt(products[0].price) + (parseInt(products[0].price) * 0.1)) * req.body.amount
      if (req.body.productSize === 'XL' || req.body.productSize === '500gr') totalPrice = (parseInt(products[0].price) + (parseInt(products[0].price) * 0.15)) * req.body.amount

      await orderModel.insertOrder({
        id: uuid(),
        cartId: carts[0].id,
        productId: products[0].id,
        productSize: req.body.productSize,
        price: totalPrice,
        amount: req.body.amount
      })

      await orderModel.updateSubTotal(carts[0].id, parseInt(carts[0].subTotal) + totalPrice)

      res.status(200).send({
        status: 'Success',
        statusCode: 200,
        message: 'Add to cart success!'
      })
    } catch (error) {
      console.log(error)
      return res.status(500).send({
        status: 'Failed',
        statusCode: 500,
        message: 'Internal server error!'
      })
    }
  },
  getCart: async (req, res) => {
    try {
      const carts = await orderModel.getCart(req.user.userId)
      if (!carts[0]) return res.status(404).send({
        status: 'Failed',
        statusCode: 404,
        message: 'No cart found. Try order product'
      })

      const orders = await orderModel.getOrderByCartId(carts[0].id)

      return res.status(200).send({
        status: 'Success',
        statusCode: 200,
        cart: carts[0],
        orders: orders
      })
    } catch (error) {
      console.log(error)
      return res.status(500).send({
        status: 'Failed',
        statusCode: 500,
        message: 'Internal server error!'
      })
    }
  },
  checkout: async (req, res) => {
    try {
      const carts = await orderModel.getCart(req.user.userId)
      if (!carts[0]) return res.status(404).send({
        status: 'Failed',
        statusCode: 404,
        message: 'No cart found. Try order product'
      })

      await orderModel.checkout(req.user.userId, req.body.paymentMethod)

      return res.status(200).send({
        status: 'Success',
        statusCode: 200,
        message: 'Checkout success'
      })
    } catch (error) {
      console.log(error)
      return res.status(500).send({
        status: 'Failed',
        statusCode: 500,
        message: 'Internal server error!'
      })
    }
  },
  getOrder: async (req, res) => {
    try {
      const orders = await orderModel.getOrder(req.user.userId)
      if (!orders[0]) return res.status(404).send({
        status: 'Failed',
        statusCode: 404,
        message: 'No order found'
      })
      const cartOrders = await orderModel.getOrderByCartId(orders[0].id)
      return res.status(200).send({
        status: 'Success',
        statusCode: 200,
        order: orders[0],
        orders: cartOrders
      })
    } catch (error) {
      console.log(error)
      return res.status(500).send({
        status: 'Failed',
        statusCode: 500,
        message: 'Internal server error!'
      })
    }
  },
  completeOrder: async (req, res) => {
    try {
      const carts = await orderModel.getOrder(req.body.cartId)
      if (!carts[0]) return res.status(404).send({
        status: 'Failed',
        statusCode: 404,
        message: 'No cart found'
      })

      await orderModel.completeOrder(req.body.cartId)

      return res.status(200).send({
        status: 'Success',
        statusCode: 200,
        message: 'Complete order success'
      })
    } catch (error) {
      console.log(error)
      return res.status(500).send({
        status: 'Failed',
        statusCode: 500,
        message: 'Internal server error!'
      })
    }
  },
  orderHistory: async (req, res) => {
    try {
      const history = await orderModel.history(req.user.userId)
      if (history.length < 1) return res.status(404).send({
        status: 'Failed',
        statusCode: 404,
        message: 'No transaction found. Create one!'
      })

      return res.status(200).send({
        status: 'Success',
        statusCode: 200,
        history: history
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
}