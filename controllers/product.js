const { v4: uuid } = require('uuid')
const productModel = require('../models/product')
const fs = require('fs')

module.exports = {
  getAllProducts: async (req, res) => {
    try {
      const page = parseInt(req.query.page) || 1
      const result = await productModel.getAllProducts({
        keyword: req.query.keyword || '',
        sort: req.query.sort || 'ASC',
        page: page
      })

      if(result.length < 1) return res.status(404).send({
        status: 'Failed',
        statusCode: 404,
        message: 'No product found!'
      })

      const numOfProducts = await productModel.getNumOfProducts({
        keyword: req.query.keyword || '',
        sort: req.query.sort || 'ASC'
      })

      const pagination = {
        previous: page - 1 > 0 ? page - 1 : null,
        current: page,
        next: page + 1 <= Math.ceil(numOfProducts.length / 12) ? page + 1 : null
      }

      return res.status(200).send({
        status: 'Success',
        statusCode: 200,
        products: result,
        pagination: pagination
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
  getProductById: async (req, res) => {
    try {
      const result = await productModel.getProductById(req.params.id)
      if(!result[0]) return res.status(404).send({
        status: 'Failed',
        statusCode: 404,
        message: 'Product not found!'
      })

      const deliveryMethods = []
      const sizes = []

      const productDeliveryMethods = await productModel.getDeliveryMethods(req.params.id)
      const productSizes = await productModel.getSizes(req.params.id)

      for (size of productSizes) {
        sizes.push(size.size)
      }

      for (deliveryMethod of productDeliveryMethods) {
        deliveryMethods.push(deliveryMethod.deliveryMethod)
      }

      return res.status(200).send({
        status: 'Success',
        statusCode: 200,
        product: result[0],
        sizes: sizes,
        deliveryMethods: deliveryMethods 
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
  createProduct: async (req, res) => {
    try {
      let image = 'default_product.jpg'
      if(req.file) image = req.file.filename
      const product = {
        id: uuid(),
        name: req.body.name,
        description: req.body.description,
        image: image,
        price: req.body.price,
        stock: req.body.stock,
        category: req.body.category
      }
      await productModel.insertProduct(product)

      if (typeof req.body.productSizes === 'string') req.body.productSizes = JSON.parse(req.body.productSizes).productSizes
      if (typeof req.body.deliveryMethods === 'string') req.body.deliveryMethods = JSON.parse(req.body.deliveryMethods).deliveryMethods

      for (size of req.body.productSizes) {
        await productModel.insertProductSizes({
          id: uuid(),
          productId: product.id,
          size: size
        })
      }

      for (deliveryMethod of req.body.deliveryMethods) {
        await productModel.insertDeliveryMethod({
          id: uuid(),
          productId: product.id,
          deliveryMethod: deliveryMethod
        })
      }

      return res.status(201).send({
        status: 'Success',
        statusCode: 201,
        insertId: product.id,
        message: 'Create product success'
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
  deleteProduct: async (req, res) => {
    try {
      const products = await productModel.getProductById(req.params.id)
      if (!products[0]) return res.status(404).send({
        status: 'Failed',
        statusCode: 404,
        message: 'Product not found!'
      })

      await productModel.deleteProduct(req.params.id)
      return res.status(200).send({
        status: 'Success',
        statusCode: 200,
        deleteId: req.params.id,
        message: 'Product deleted'
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
  updateProduct: async (req, res) => {
    try {
      const products = await productModel.getProductById(req.params.id)
      if (!products[0]) return res.status(404).send({
        status: 'Failed',
        statusCode: 404,
        message: 'Product not found!'
      })

      let image = null
      if (req.file) {
        image = req.file.filename
      }

      if (req.file && products[0].imageFile !== 'default_product.jpg') {
        fs.unlinkSync(process.env.BASE_PATH + '/images/' + products[0].imageFile)
      }

      const newProductData = {
        name: req.body.name || products[0].name,
        price: req.body.price || products[0].price,
        description: req.body.description || products[0].description,
        image: image || products[0].imageFile
      }

      await productModel.updateProduct(newProductData, req.params.id)

      return res.status(201).send({
        status: 'Success',
        statusCode: 201,
        updateId: req.params.id,
        message: 'Update product success'
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