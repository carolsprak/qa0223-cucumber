Testes com Cucumber e Cypres

Acessar: https://docs.cypress.io/guides/getting-started/installing-cypress
npm install cypress --save-dev

Acessar: https://cucumber.io/docs/installation/javascript/
npm install --save-dev @cucumber/cucumber
npm install --save-dev cypress cypress-cucumber-processor

npx cypress@9.7.0 open

Configurando o Cucumber no Cypress:Adicione ao arquivo cypress/plugins/index.js:

const cucumber = require('cypress-cucumber-preprocessor').default
module.exports = (on, config) => {
  on('file:preprocessor', cucumber())
}


Adicione o seguinte código no arquivo package.json:

{
    "scripts": {
        "test": "cypress run --browser chrome"
    },
    "cypress-cucumber-preprocessor": {
        "step_definitions": "cypress/support/steps"
    },
    "devDependencies": {
      "cypress": "^9.7.0",
      "cypress-cucumber-preprocessor": "^4.3.1"
    }
}


servidor: npm run test
local: npx cypress open
