// load dependencies
const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const compression = require('compression')
const morgan = require('morgan')
const { logger } = require('@util/logger')

// AUTH MIDDLEWARE
const { getMySqlConnection } = require('@middleware')

const router = express.Router()

const controller = require('@controllers/controller')

router.post('/public/createApp', controller.main)
router.post('/public/createAppTemplate', controller.main)
router.post('/public/createScreen', controller.main)
router.post('/public/createScreenTemplate', controller.main)
router.post('/public/createAppTemplateScreen', controller.main)
router.get('/public/getApp', controller.main)
router.get('/public/getApps', controller.main)
router.get('/public/getAppScreens', controller.main)
router.get('/public/getAppTemplate', controller.main)
router.get('/public/getAppTemplates', controller.main)
router.get('/public/getAppTemplateScreen', controller.main)
router.get('/public/getAppTemplateScreens', controller.main)
router.put('/public/updateAppTemplateScreen', controller.main)
router.get('/public/getScreen', controller.main)
router.get('/public/getScreenTemplate', controller.main)
router.get('/public/getForm', controller.main)
router.get('/public/getFormFile', controller.main)
router.get('/public/getForms', controller.main)
router.get('/public/getFormTemplate', controller.main)
router.get('/public/getFormTemplates', controller.main)
router.get('/public/getScreens', controller.main)
router.get('/public/getScreenTemplates', controller.main)
router.get('/public/preview', controller.main)
router.get('/public/publish', controller.main)
router.get('/public/testApi', controller.main)
router.put('/public/updateFormTemplate', controller.main)
router.put('/public/updateScreen', controller.main)
router.put('/public/updateScreenTemplate', controller.main)

// Start express app
const app = express()

// Log requests with morgan, streamed to winston for writing log files
if (process.env.NODE_ENV === 'local') {
  app.use(morgan('dev', { stream: logger.stream }))
} else {
  // deployed app logs more details
  app.use(morgan('combined', { stream: logger.stream }))
}

// Increase default Content-Length limit to 1mb for large uploads (e.g. images)
app.use(bodyParser.json({ limit: '1mb' }))

// Parse URL-encoded data to JSON
app.use(bodyParser.urlencoded({ extended: true }))

// Add cors
app.use(cors())

// Compress all responses
app.use(compression())

// handle auth errors
app.use((err, req, res, next) => {
  if (err) {
    // handle unauthorized
    if (err.name === 'UnauthorizedError') {
      return res.status(err.status).json({ error: 'Unauthorized Access' })
    }
    // handle others
    return res.json({ error: err.message })
  }
  next()
})

app.use(getMySqlConnection)

// Add routes
app.use('/api', router)

module.exports = app
