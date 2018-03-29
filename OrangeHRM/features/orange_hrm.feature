#language: pt
#encoding: utf-8

@orangehrm
Funcionalidade: orange hrm website
   Eu como usuário do site orange hrm
   Quero acessar a aplicação
   Para fazer o gerenciamento dos
   funcionários da minha empresa.

   @cadastrar
   Cenário: Cadastrar novo empregado
    Dado Que já esteja logado ORANGEHRM website
    Quando já acessado a funcionalidade de cadastro
    E salvo o formulário com os dados preenchidos
    Então eu terei o cadastro de um novo empregado

   @editar
   Cenário: Editar Empregado
    Dado Que já esteja logado no ORANGEHRM website e acessado a funcionalidade de cadastro
    Quando já salvo o formulário com os dados preenchidos
    E a edição do empregado realizada
    Então o empregado será editado

   @pesquisar
   Cenário: Pesquisar Empregado
    Dado Que já esteja logado ORANGEHRM website
    Quando selecionar a funcionalidade Employee List e esquisar um funionário cadastrado
    Então validar a pesquisa
