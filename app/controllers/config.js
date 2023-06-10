const mysqldump = require('mysqldump')
const fs = require('fs');
const db = require('@util/db')
const { isObject } = require('@util/constants')
const testForm = require('@data/fields.json')
const { runStatement } = require('@persistence/sql/runStatement')
const { getStatement } = require('@persistence/sql/config')
const axios = require('axios')

// HELPERS
const { logAction } = require('./helper')

const getProcessor = req => {
  const { method } = req
  const { path } = req.route
  return config[path][method]
}

const sendParsedResponse = (res, result) => {
  const template = JSON.parse(result[0].template)
  if (result) {
    // res.json({ error: null, result })
    res.json({ error: null, result: { ...result, template } })
  }
}

const sendResponse = (res, result) => {
  if (result) {
    res.json({ error: null, result })
  }
}

const config = {
  ['/public/createApp']: {
    POST: async (req, res) => {
      sendResponse(res, await runStatement(res, req.conn, getStatement(req)))
    },
  },
  ['/public/createAppTemplate']: {
    POST: async (req, res) => {
      sendResponse(res, await runStatement(res, req.conn, getStatement(req)))
    },
  },
  ['/public/createFormTemplate']: {
    POST: async (req, res) => {
      sendResponse(res, await runStatement(res, req.conn, getStatement(req)))
    },
  },
  ['/public/createScreen']: {
    POST: async (req, res) => {
      sendResponse(res, await runStatement(res, req.conn, getStatement(req)))
    },
  },
  ['/public/createScreenSubcomponent']: {
    POST: async (req, res) => {
      // console.log('/public/createScreenSubcomponent: req.body', req.body)
      const json = await runStatement(res, req.conn, `SELECT * FROM screen WHERE id = ${req.body.screenId}`, isObject)

      const jsonObject = JSON.parse(json.content)
      const content = jsonObject.content

      for(let i = 0; i < content.length; i++) {
        const component = content[i];
        if (component.id === req.body.data?.parentId) {
          if (!component.subcomponents) {
            component.subcomponents = []
          }
          component.subcomponents.push(req.body.data)
          content[i] = component
          jsonObject.content = content
          await runStatement(res, req.conn, `UPDATE screen set content = '${JSON.stringify(jsonObject)}' WHERE id = ${req.body.screenId}`, isObject)
        }
      }

      sendResponse(res, await runStatement(res, req.conn, `SELECT * FROM screen WHERE id = ${req.body.screenId}`))
    },
  },
  ['/public/createScreenTemplate']: {
    POST: async (req, res) => {
      sendResponse(res, await runStatement(res, req.conn, getStatement(req)))
    }
  },
  ['/public/createAppTemplateScreen']: {
    POST: async (req, res) => {
      sendResponse(res, await runStatement(res, req.conn, getStatement(req)))
    },
  },
  ['/public/getApp']: {
    GET: async (req, res) => {
      const { id } = req.query
      sendResponse(res, await runStatement(res, req.conn, getStatement(req, [id]), isObject))
    },
  },
  ['/public/getApps']: {
    GET: async (req, res) => {
      sendResponse(res, await runStatement(res, req.conn, getStatement(req)))
    },
  },
  ['/public/getAppScreens']: {
    GET: async (req, res) => {
      const { appId } = req.query
      sendResponse(res, await runStatement(res, req.conn, getStatement(req, [appId])))
    },
  },
  ['/public/getAppTemplate']: {
    GET: async (req, res) => {
      const { id } = req.query
      sendResponse(res, await runStatement(res, req.conn, getStatement(req, [id]), isObject))
    },
  },
  ['/public/getAppTemplates']: {
    GET: async (req, res) => {
      sendResponse(res, await runStatement(res, req.conn, getStatement(req)))
    },
  },
  ['/public/getAppTemplateScreen']: {
    GET: async (req, res) => {
      const { id } = req.query
      sendResponse(res, await runStatement(res, req.conn, getStatement(req, [id]), isObject))
    },
  },
  ['/public/getAppTemplateScreens']: {
    GET: async (req, res) => {
      const { appTemplateId } = req.query
      sendResponse(res, await runStatement(res, req.conn, getStatement(req, [appTemplateId])))
    },
  },
  ['/public/getFormFile']: {
    GET: (req, res) => {
      res.json({ form: testForm })
    },
  },
  ['/public/getForm']: {
    GET: async (req, res) => {
      const { id } = req.query
      sendParsedResponse(res, await runStatement(res, req.conn, getStatement(req, [id])))
    },
  },
  ['/public/getForms']: {
    GET: async (req, res) => {
      const { id } = req.query
      sendResponse(res, await runStatement(res, req.conn, getStatement(req, [id])))
    },
  },
  ['/public/getFormTemplate']: {
    GET: async (req, res) => {
      const { id } = req.query
      sendResponse(res, await runStatement(res, req.conn, getStatement(req, [id]), isObject))
    },
  },
  ['/public/getFormTemplates']: {
    GET: async (req, res) => {
      sendResponse(res, await runStatement(res, req.conn, getStatement(req)))
    },
  },
  ['/public/getScreen']: {
    GET: async (req, res) => {
      const { id } = req.query
      sendResponse(res, await runStatement(res, req.conn, getStatement(req, [id]), isObject))
    },
  },
  ['/public/getScreens']: {
    GET: async (req, res) => {
      const { id } = req.query
      sendResponse(res, await runStatement(res, req.conn, getStatement(req, [id])))
    },
  },
  ['/public/getScreenTemplate']: {
    GET: async (req, res) => {
      const { id } = req.query
      sendResponse(res, await runStatement(res, req.conn, getStatement(req, [id]), isObject))
    },
  },
  ['/public/getScreenTemplates']: {
    GET: async (req, res) => {
      sendResponse(res, await runStatement(res, req.conn, getStatement(req)))
    },
  },
  ['/public/preview']: {
    GET: async (req, res) => {
      const { id } = req.query
      console.log('Previewing App id:', id)
      sendResponse(res, await runStatement(res, req.conn, getStatement(req, [id])))
    },
  },
  ['/public/publish']: {
    GET: async (req, res) => {
      const { id } = req.query
      console.log('Publishing App id:', id)
      await sendResponse(res, await runStatement(res, req.conn, getStatement(req, [id])))
      await mysqldump({
        connection: {
          host: 'localhost',
          user: 'turing_studio',
          password: 'turing_studio',
          database: 'turing_studio',
        },
        dumpToFile: './tmp/dump.sql',
        dump: {
          tables: ['app_instance', 'screen_instance', 'form_instance'],
          schema: {
            table: {
              dropIfExist: true,
            }
          }
        },
      });
      fs.readFile('./tmp/dump.sql', 'utf8', function(err, data) {
        if (err) throw err;
          axios.put('http://localhost:4001/api/public/publish', {data});
        // axios.put('http://209.10.74.162:4001/api/public/publish', {data});
      });
    },
  },
  ['/public/testApi']: {
    GET: (req, res) => {
      res.json({ message: 'testing' })
    },
  },
  ['/public/updateAppTemplateScreen']: {
    PUT: async (req, res) => {
      sendResponse(res, await runStatement(res, req.conn, getStatement(req)))
    },
  },
  ['/public/updateFormTemplate']: {
    PUT: async (req, res) => {
      await runStatement(res, req.conn, getStatement(req))
      sendResponse(res, await runStatement(res, req.conn, `SELECT id, name, data FROM form_template WHERE id = ${req.body.id}`, isObject))
    },
  },
  ['/public/updateScreen']: {
    PUT: async (req, res) => {
      sendResponse(res, await runStatement(res, req.conn, getStatement(req)))
    },
  },
  ['/public/updateScreenTemplate']: {
    PUT: async (req, res) => {
      sendResponse(res, await runStatement(res, req.conn, getStatement(req)))
    },
  },
}

module.exports = { getProcessor }
