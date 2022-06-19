const interpolate = (template, args, updateList, body) => {
  return template(args, updateList, body)
}

const getStatement = (req, args, updateList) => {
  const cleanArgs = args && args.map(arg => req.conn.escape(arg)) // escape all arguments to prevent injection
  const { method, body } = req
  const { path } = req.route
  const statement = interpolate(config[path][method], cleanArgs, updateList, body)
  console.log('STATEMENT', statement)
  return statement
}

const deleteMember = args => {
  return `
    UPDATE company_user
    SET 
      deletedAt = ROUND(UNIX_TIMESTAMP(UTC_TIME(4)) * 1000),
      deleted = 1
    WHERE memberID = ${args[0]}
  `
}


const insertApp = (args, updateList, body) => {
  console.log('insertApp body', body)
  const { name } = body
  return `
    INSERT INTO app 
      (id, name) VALUES 
        (0, '${name.replace(/'/g, "\\'")}')
  `
}

const insertAppTemplate = (args, updateList, body) => {
  console.log('insertAppTemplate body', body)
  const { name } = body
  return `
    INSERT INTO app_template 
      (id, name) VALUES 
        (0, '${name.replace(/'/g, "\\'")}')
  `
}

const insertFormTemplate = (args, updateList, body) => {
  console.log('insertFormTemplate updateList', updateList)
  console.log('insertFormTemplate body', body)
  const { name } = body
  return `
    INSERT INTO form_template 
      (name, data) VALUES 
        ('${name.replace(/'/g, "\\'")}', '${JSON.stringify({ data: [] })}')
  `
}

const insertScreen = (args, updateList, body) => {
  console.log('insertScreen updateList', updateList)
  console.log('insertScreen body', body)
  const { name, app_id } = body
  return `
    INSERT INTO screen 
      (name, app_id, content) VALUES 
        ('${name.replace(/'/g, "\\'")}', ${app_id}, '${JSON.stringify({ content: [] })}')
  `
}

const insertScreenTemplate = (args, updateList, body) => {
  console.log('insertScreenTemplate updateList', updateList)
  console.log('insertScreenTemplate body', body)
  const { name } = body
  return `
    INSERT INTO screen_template 
      (name, content) VALUES 
        ('${name.replace(/'/g, "\\'")}', '${JSON.stringify({ content: [] })}')
  `
}

const insertAppTemplateScreen = (args, updateList, body) => {
  console.log('insertAppTemplateScreen updateList', updateList)
  console.log('insertAppTemplateScreen body', body)
  const { name, app_template_id } = body
  return `
    INSERT INTO app_template_screen 
      (name, app_template_id, content) VALUES 
        ('${name.replace(/'/g, "\\'")}', ${app_template_id}, '${JSON.stringify({ content: [] })}')
  `
}

const updateAppTemplateScreen = (args, updateList, body) => {
  console.log('updateAppTemplateScreen updateList', updateList)
  console.log('updateAppTemplateScreen body', body)
  let { content, id } = body

  content = content.map(({ componentName: ScreenComponent, ...rest }) => ({
    ScreenComponent,
    ...rest,
  }))

  content.forEach((item, i) => {
    item.orderId = i + 1
  })

  const content2 = { content }
  return `UPDATE app_template_screen set content = '${JSON.stringify(content2)}' where id = ${id}`
}

const preview = args => {
  return `SELECT * FROM screen WHERE id = ${args[0]}`
}

const publish = args => {
  return `CALL createInstance()`
}

const selectCompany = args => {
  return `
    SELECT 
    name, nickname, aboutUs, category, EIN, website, founded, size, corpGroup,
    addressOne, addressTwo, city, state, zipCode, hqAddressOne, hqAddressTwo, 
    hqCity, hqState, hqZipCode, companyID, memberSince,
    facebookUrl, linkedinUrl, twitterUrl, instagramUrl
    FROM company
    WHERE companyID = ${args[0]}
  `
}


const selectApp = args => {
  return `SELECT * FROM app WHERE id = ${args[0]}`
}

const selectApps = args => {
  console.log('in selectApps', args)
  return `SELECT id, name FROM app`
}

const selectAppScreens = args => {
  return `SELECT id, name FROM screen WHERE app_id = ${args[0]}`
}

const selectAppTemplate = args => {
  return `SELECT * FROM app_template WHERE id = ${args[0]}`
}

const selectAppTemplates = args => {
  return `SELECT id, name FROM app_template`
}

const selectAppTemplateScreen = args => {
  return `SELECT * FROM app_template_screen WHERE id = ${args[0]}`
}

const selectAppTemplateScreens = args => {
  return `SELECT id, name FROM app_template_screen WHERE app_template_id = ${args[0]}`
}

const selectForm = args => {
  return `SELECT id, template FROM form WHERE id = ${args[0]}`
}

const selectForms = args => {
  return `SELECT id, name FROM form WHERE app_id = ${args[0]}`
}

const selectFormTemplate = args => {
  return `SELECT id, name, data FROM form_template WHERE id = ${args[0]}`
}

const selectFormTemplates = args => {
  return `SELECT id, name FROM form_template`
}

const selectScreen = args => {
  return `SELECT * FROM screen WHERE id = ${args[0]}`
}

const selectScreens = args => {
  return `SELECT id, name FROM screen WHERE app_id = ${args[0]}`
}

const selectScreenTemplate = args => {
  return `SELECT * FROM screen_template WHERE id = ${args[0]}`
}

const selectScreenTemplates = args => {
  return `SELECT id, name FROM screen_template`
}

const selectUser = args => {
  return `
    SELECT 
    aboutMe, currentCity, currentState, userID, username, firstName, lastName, citizenType,
    memberSince,addressOne, addressTwo, phone, city, state, zipCode,
    facebookUrl, linkedinUrl, twitterUrl, instagramUrl
    FROM user
    WHERE userID = ${args[0]}
  `
}

const updateCompany = (args, updateList) => {
  return `
    UPDATE company
    SET 
      updatedAt = ROUND(UNIX_TIMESTAMP(UTC_TIME(4)) * 1000),
      ${updateList}
    WHERE companyID = ${args[0]}
  `
}

const updateFormTemplate = (args, updateList, body) => {
  console.log('updateFormTemplate updateList', updateList)
  console.log('updateFormTemplate body', body)
  let { data, id } = body

  const processedData = data.data.map(({ componentName: ScreenComponent, ...rest }) => ({
    ScreenComponent,
    ...rest,
  }))

  processedData.forEach((item, i) => {
    item.orderId = i + 1
  })

  const dataWrapped = { data: processedData }
  return `UPDATE form_template set data = '${JSON.stringify(dataWrapped)}' where id = ${id}`
}

const updateScreen = (args, updateList, body) => {
  console.log('updateScreen updateList', updateList)
  console.log('updateScreen body', body)
  let { content, id } = body

  content = content.map(({ componentName: ScreenComponent, ...rest }) => ({
    ScreenComponent,
    ...rest,
  }))

  content.forEach((item, i) => {
    item.orderId = i + 1
  })

  const content2 = { content }
  return `UPDATE screen set content = '${JSON.stringify(content2)}' where id = ${id}`
}

const updateScreenTemplate = (args, updateList, body) => {
  console.log('updateScreenTemplate updateList', updateList)
  console.log('updateScreenTemplate body', body)
  let { templateContent, id } = body

  const content = templateContent.map(({ componentName: ScreenComponent, ...rest }) => ({
    ScreenComponent,
    ...rest,
  }))

  content.forEach((item, i) => {
    item.orderId = i + 1
  })

  const content2 = { content }
  return `UPDATE screen_template set content = '${JSON.stringify(content2)}' where id = ${id}`
}

const updateUser = (args, updateList) => {
  return `
    UPDATE user
    SET 
      updatedAt = ROUND(UNIX_TIMESTAMP(UTC_TIME(4)) * 1000),
      ${updateList}
    WHERE userID = ${args[0]}
  `
}

const config = {
  ['/public/createApp']: { POST: insertApp },
  ['/public/createAppTemplate']: { POST: insertAppTemplate },
  ['/public/createAppTemplateScreen']: { POST: insertAppTemplateScreen },
  ['/public/createFormTemplate']: { POST: insertFormTemplate },
  ['/public/createScreen']: { POST: insertScreen },
  ['/public/createScreenTemplate']: { POST: insertScreenTemplate },
  ['/public/getAppTemplateScreen']: { GET: selectAppTemplateScreen },
  ['/public/getApp']: { GET: selectApp },
  ['/public/getApps']: { GET: selectApps },
  ['/public/getAppScreens']: { GET: selectAppScreens },
  ['/public/getAppTemplate']: { GET: selectAppTemplate },
  ['/public/getAppTemplates']: { GET: selectAppTemplates },
  ['/public/getAppTemplateScreens']: { GET: selectAppTemplateScreens },
  ['/public/getForm']: { GET: selectForm },
  ['/public/getForms']: { GET: selectForms },
  ['/public/getFormTemplate']: { GET: selectFormTemplate },
  ['/public/getFormTemplates']: { GET: selectFormTemplates },
  ['/public/getScreen']: { GET: selectScreen },
  ['/public/getScreens']: { GET: selectScreens },
  ['/public/getScreenTemplate']: { GET: selectScreenTemplate },
  ['/public/getScreenTemplates']: { GET: selectScreenTemplates },
  ['/public/preview']: { GET: preview },
  ['/public/publish']: { GET: publish },
  ['/public/updateAppTemplateScreen']: { PUT: updateAppTemplateScreen },
  ['/public/updateFormTemplate']: { PUT: updateFormTemplate },
  ['/public/updateScreen']: { PUT: updateScreen },
  ['/public/updateScreenTemplate']: { PUT: updateScreenTemplate },
}

module.exports = { getStatement }
