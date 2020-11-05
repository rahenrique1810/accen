#language: pt

  Funcionalidade: Solicitar cotação de seguro
    -Eu como usuário quero poder fazer a cotação de um seguro para meu veículo corretamnete

  Cenário: Preenhcer o formulário 'Enter data vehicle' corretamente com os dados do meu veículo
    Dado estou na aba Enter Vehicle Data
    Quando preencher todos os campos com as informações do veículo que deverá ser feito a cotação
    E clicar no botão next
    Então deverá avançar para aba Enter Insurant Data

  Cenário: Preencher o formulário 'Enter Insurante Data' corretamente com os dados do segurado
    Dado estou na aba Enter Insurant Data
    Quando preencher todos os campos com as informações do segurado para cotação do seguro
    E clicar no botão next para avançar para próxima etapa
    Então deverá avançar para aba Enter Product Data

  Cenário: : Preencher o formulário 'Enter Product Data' corretamente com os dados do produto
    Dado estou na aba Enter Product Data
    Quando preencher todos os campos com as informações do produto que deverá ser feito a cotação
    E clicar no botão next para avançar para aba Select Option Price
    Então deverá avançar para aba Select Option Price

  Cenário: Selecionar um plano de seguro
    Dado preenchi todos os formulários anteriores
    E estou na aba de Select Option Price
    Quando selecionar um plano de seguro
    E clicar no botão next para avançar para a ultima aba
    Então deverá avançar para aba Send Quote

  Cenário: Preencher email para cadastro de usuário e envio da contação
    Dado estou na página de envio de contação
    Quando preencher o formulário com as informações cadastrais
    E clicar no botão Send
    Então aparecerá a mensagem "Sending e-mail success!"

