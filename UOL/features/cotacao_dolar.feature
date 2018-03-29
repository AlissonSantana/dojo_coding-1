#language: pt
#utf-8

Funcionalidade: Verificar valor do dólar no UOL
	Eu como usuário
	Quero acessar  o site do UOL
	Para verificar a cotação do dólar está abaixo de R$3,20

	@cotacao
	Cenário: Verificar se cotação do dólar está abaixo de 3.20
	 Dado que estou no site do Uol
	 Quando quandos acesso a página de economia
	 Então verifico se o valor do dólar está abaixo de 3 e 20
