require('dotenv').config()
const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const app = express()
const http = require('http')
const server = http.createServer(app)
const socket = require('socket.io')
const { modelAddMessage } = require('./models/message')
const { v4: uuidv4 } = require('uuid')

const user = require('./routes/user')
const product = require('./routes/product')
const order = require('./routes/order')
const message = require('./routes/message')

const io = socket(server, {
  cors: {
    origin: '*',
  }
})

io.on('connection', (socket) => {
  console.log('user ' + socket.id + ' connect')

  socket.on('initialUser', (dataUser) => {
    console.log('initial user', dataUser)
    socket.join('Chat:'+dataUser.idSender)
  })
  socket.on('messagePrivate', data => {
    socket.broadcast.to('Chat:'+data.idReceiver).emit('sendBack', data)
    delete data.note
    socket.emit('sendBack', data)
    const id = uuidv4()
    const dataMessage = {
      id,
      idSender: data.idSender,
      idReceiver: data.idReceiver,
      message: data.message
    }
    modelAddMessage(dataMessage)
  })

  socket.on('logout', () => {
    socket.disconnect()
  })

  socket.on('disconnect', ()=>{
    console.log('user ' + socket.id + ' disconnect')
  })
});

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
app.use('/api/v1/message', message)

const port = process.env.PORT || 5000
server.listen(port, () => console.log(`Server running on port ${port}`))