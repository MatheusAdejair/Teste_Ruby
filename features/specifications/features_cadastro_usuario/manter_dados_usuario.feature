#language: pt

@usuario
Funcionalidade: Manter dados de usuários atraves da API
  Como um admin de sistema
  Eu quero realizar requisição de API
  A fim de manipular as informações de registro de usuário

Cenário: Cadastrar usuário válido
  Dado que o endereço de API de POST de usuários esteja OK
  Quando realizar uma requisição para registrar um novo usuário
  Então a API deverá retornar confirmação de sucesso do cadastro com sucesso com código 201

Cenário: Consultar dados usuário válido
  Dado que o endereço de API de GET de usuários esteja OK
  Quando realizar uma requisição para consultar um usuário válido
  Então a API deverá retornar confirmação de sucesso da consulta com código 200

Cenário: Atualizar dados usuário válido
  Dado que o endereço de API de PUT de usuários esteja OK
  Quando realizar uma requisição para atualizar dados um usuário válido
  Então a API deverá retornar confirmação de sucesso da consulta com código 200