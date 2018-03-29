#language: pt
#utf-8

Funcionalidade: Quem Somos
	Eu como usuário do site Inmetrics
	Quero acessar a pagina Quem Somos
	Para acessar suas funcionalidades

@validar_texto
Cenario: Validar texto de informação
	Dado que eu esteja na pagina da inmetrics
	Quando acessar a página Quem Somos
	Então o texto é exibido "ATUAÇÃO LADO A LADO COM NOSSOS CLIENTES"
