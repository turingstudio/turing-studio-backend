const Joi = require('joi')
const { logActionSchema } = require('@validation')

const getValidator = req => {
  const { method } = req
  const { path } = req.route
  return config[path][method]
}

const config = {
  ['/public/createApp']: { POST: undefined },
  ['/public/createAppTemplate']: { POST: undefined },
  ['/public/createFormTemplate']: { POST: undefined },
  ['/public/createScreen']: { POST: undefined },
  ['/public/createScreenTemplate']: { POST: undefined },
  ['/public/createAppTemplateScreen']: { POST: undefined },
  ['/public/getApp']: { GET: undefined },
  ['/public/getApps']: { GET: undefined },
  ['/public/getAppScreens']: { GET: undefined },
  ['/public/getAppTemplate']: { GET: undefined },
  ['/public/getAppTemplateScreen']: { GET: undefined },
  ['/public/getAppTemplateScreens']: { GET: undefined },
  ['/public/getAppTemplates']: { GET: undefined },
  ['/public/getForm']: { GET: undefined },
  ['/public/getFormFile']: { GET: undefined },
  ['/public/getForms']: { GET: undefined },
  ['/public/getFormTemplate']: { GET: undefined },
  ['/public/getFormTemplates']: { GET: undefined },
  ['/public/getScreen']: { GET: undefined },
  ['/public/getScreens']: { GET: undefined },
  ['/public/getScreenTemplate']: { GET: undefined },
  ['/public/getScreenTemplates']: { GET: undefined },
  ['/public/preview']: { GET: undefined },
  ['/public/publish']: { GET: undefined },
  ['/public/testApi']: { GET: undefined },
  ['/public/updateAppTemplateScreen']: { PUT: undefined },
  ['/public/updateFormTemplate']: { PUT: undefined },
  ['/public/updateScreen']: { PUT: undefined },
  ['/public/updateScreenTemplate']: { PUT: undefined },
}

module.exports = { getValidator }
