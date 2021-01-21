module.exports = (req, res, next) => {
  if (req.user.role !== 'admin') {
    return res.status(401).send({
      status: 'Failed',
      statusCode: 401,
      message: 'Access denied!'
    })
  }

  return next()
}