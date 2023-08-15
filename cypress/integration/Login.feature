Feature: Login no site da ultima

    Scenario: Visualizar opção de login
        Given que estou na página inicial da Ultima
        When clico em login
        Then a página são exibidos os campos email, senha e botão conecte-se