## Testes com Cucumber e Cypres:

Projeto com fins acadêmicos do tutorial dos testes E2E usando o Cucumber com Cypress com funcionalidades descritas usando BDD. 

### 1. Comandos necessários para instalar o projeto localmente

- Documentação do cypress: https://docs.cypress.io/guides/getting-started/installing-cypress

```bash
# Primeira vez que for instalar o cypress
npm install cypress --save-dev
```

- Documentação do cucumber: https://cucumber.io/docs/installation/javascript/

```bash
# Primeira vez que for instalar o cypress cucumber processor
npm install --save-dev cypress cypress-cucumber-processor
```
- Testar a instalação do Cypress e depois fechar o navegador.
```bash 
npx cypress@9.7.0 open
```

### 2. Configurando o Cucumber no Cypress:Adicione ao arquivo cypress/plugins/index.js:

```bash
const cucumber = require('cypress-cucumber-preprocessor').default
module.exports = (on, config) => {
  on('file:preprocessor', cucumber())
}
```

### 3. Adicione o seguinte código no arquivo package.json:

```bash
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
```

### 4. Executar o projeto:

```bash
# No servidor
npm run test
```

```bash
# Localmente
npx cypress open
```
