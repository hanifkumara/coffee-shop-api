require('dotenv').config()
const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const app = express()

const user = require('./routes/user')
const product = require('./routes/product')
const order = require('./routes/order')

app.use(bodyParser.json())
app.use(cors())
app.use('/images', express.static(__dirname + '/images'))
app.use(bodyParser.urlencoded({ extended: false }))

app.get('/', (req, res) => {
  res.send({
    status: 200,
    message: 'Connected Success',
    app: 'Coffee Shop'
  })
})
app.use('/api/v1/users', user)
app.use('/api/v1/products', product)
app.use('/api/v1/orders', order)

const port = process.env.PORT || 5000
app.listen(port, () => console.log(`Server running on port ${port}`))