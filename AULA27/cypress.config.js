const { defineConfig } = require("cypress");

module.exports = defineConfig({
  projectId: "bzbcf3",
  allowCypressEnv: false,
  e2e: {
    baseUrl:'https://automationpratice.com.br/',
    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
  },
});
