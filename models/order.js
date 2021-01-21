const db = require('./database')

module.exports = {
  getCart: (userId) => {
    return db(`SELECT * FROM carts WHERE userId = '${userId}' AND status = 'ready'`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    })
  },
  getOrder: () => {
    return db(`SELECT * FROM carts WHERE status = 'waiting'`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    })
  },
  getOrderByCartId: (id) => {
    return db(`SELECT orders.id, products.name, orders.price, orders.productSize, orders.amount, CONCAT('${process.env.BASE_URL}/images/', products.image) as image FROM orders  INNER JOIN products ON products.id = orders.productId WHERE cartId = '${id}'`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    })
  },
  createCart: (id, userId) => {
    return db(`INSERT INTO carts SET id = '${id}', userId = '${userId}', status = 'ready', subTotal = 0, tax = 2500, shipping = 0, deliveryMethod = 'Dine In'`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    })
  },
  insertOrder: (data) => {
    return db(`INSERT INTO orders SET id = '${data.id}', cartId = '${data.cartId}', productId = '${data.productId}', productSize = '${data.productSize}', price = ${data.price}, amount = ${data.amount}`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    })
  },
  updateSubTotal: (cartId, subTotal) => {
    return db(`UPDATE carts SET subTotal = ${subTotal} WHERE id = '${cartId}'`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    })
  },
  checkout: (userId, paymentMethod) => {
    return db(`UPDATE carts SET status = 'waiting', paymentMethod = '${paymentMethod}' WHERE userId = '${userId}' AND status = 'ready'`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    })
  },
  completeOrder: (cartId) => {
    return db(`UPDATE carts SET status = 'complete' WHERE id = '${cartId}' AND status = 'waiting'`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    })
  },
  history: (userId) => {
    return db(`SELECT orders.id, products.name, orders.price, CONCAT('${process.env.BASE_URL}/images/', products.image) as image FROM orders INNER JOIN products ON products.id = orders.productId INNER JOIN carts ON carts.id = orders.cartId
    WHERE carts.userId = '${userId}' AND carts.status = 'complete'`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    })
  }
}