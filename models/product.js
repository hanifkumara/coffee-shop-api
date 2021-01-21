const db = require('./database')
require('dotenv').config()

module.exports = {
  getNumOfProducts: (data) => {
    return db(`SELECT * FROM products WHERE name LIKE '%${data.keyword}%' OR category LIKE '%${data.keyword}%' ORDER BY price ${data.sort}`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    }) 
  },
  getAllProducts: (data) => {
    return db(`SELECT id, name, CONCAT('${process.env.BASE_URL}/images/', image) as image, price FROM products WHERE name LIKE '%${data.keyword}%' OR category LIKE '%${data.keyword}%' ORDER BY price ${data.sort} LIMIT ${data.page * 12 - 12}, 12`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    }) 
  },
  insertProduct: (data) => {
    return db(`INSERT INTO products SET id = '${data.id}', name = '${data.name}', description = '${data.description}', image = '${data.image}', stock = ${data.stock}, category = '${data.category}', price = ${data.price}`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    }) 
  },
  insertDeliveryMethod: (data) => {
    return db(`INSERT INTO product_delivery_methods SET id = '${data.id}', productId = '${data.productId}', deliveryMethod = '${data.deliveryMethod}'`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    })
  },
  insertProductSizes: (data) => {
    return db(`INSERT INTO product_sizes SET id = '${data.id}', productId = '${data.productId}', size = '${data.size}'`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    })
  },
  getProductById: (id) => {
    return db(`SELECT id, name, CONCAT('${process.env.BASE_URL}/images/', image) as image, price, image as imageFile, description FROM products WHERE id = '${id}'`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    })
  },
  getDeliveryMethods: (id) => {
    return db(`SELECT * FROM product_delivery_methods WHERE productId = '${id}'`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    })
  },
  getSizes: (id) => {
    return db(`SELECT * FROM product_sizes WHERE productId = '${id}'`)
    .then(result => {
      return result
    })
    .catch(error => {
      throw error
    })
  },
  deleteProduct: (id) => {
    return db(`DELETE FROM products WHERE id = '${id}'`)
      .then(result => {
        return result
      })
      .catch(error => {
        throw error
      })
  },
  updateProduct: (data, id) => {
    return db(`UPDATE products SET name = '${data.name}', description = '${data.description}', price = ${data.price}, image = '${data.image}' WHERE id = '${id}'`)
      .then(result => {
        return result
      })
      .catch(error => {
        throw error
      })
  }
}