#language: pt
#encoding: utf-8

@registro
Funcionalidade: Registro DemoQa
	Eu como usuário do site demoqa
	Quero acessar a aplicação na pagina de registro
	Para realizar um cadastro de um novo usuário

Cenario: Cadastro de usuario
	Dado que eu esteja na pagina de registro
	Quando o formulário preenchdo é enviado com os dados
	Então é exibida a mensagem de sucesso
