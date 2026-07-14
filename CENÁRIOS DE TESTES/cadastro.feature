Funcionalidade: Cadastrar novo cliente no sistema

CAMPO NOME

Cenário: Cadastro efetuado com sucesso
Dado que o usuário acessou a tela de cadastro
E informa um nome válido
E informa um e-mail válido
E informa uma senha com no mínimo 6 caracteres
Quando clica no botão "Cadastrar"
Então o cadastro é realizado com sucesso
E uma mensagem de sucesso é exibida

------------------------------------------

Cenário: Tentar cadastrar com o campo nome com menos de 3 caracteres
Dado que o usuário acessou a tela de cadastro
Quando preenche o campo nome com menos de 3 caracteres
E informa um e-mail válido
E informa uma senha com no mínimo 6 caracteres
Então o botão "Cadastrar" permanece desabilitado

------------------------------------------

Cenário: Cadastrar usuário utilizando exatamente 3 caracteres
Dado que o usuário acessou a tela de cadastro
Quando preenche o campo nome com exatamente 3 caracteres
E informa um e-mail válido
E informa uma senha com no mínimo 6 caracteres
E clica no botão "Cadastrar"
Então o cadastro é realizado com sucesso
E uma mensagem de sucesso é exibida

------------------------------------------

Cenário: Tentar cadastrar com o campo nome vazio
Dado que o usuário acessou a tela de cadastro
Quando deixa o campo nome em branco
E informa um e-mail válido
E informa uma senha com no mínimo 6 caracteres
Então o botão "Cadastrar" permanece desabilitado

------------------------------------------

CAMPO EMAIL

Cenário: Tentar cadastrar com e-mail já existente
Dado que o usuário acessou a tela de cadastro
E informa um nome válido 
E informa um e-mail já cadastrado no sistema
E informa uma senha com no mínimo 6 caracteres
Quando clica no botão "Cadastrar"
Então é exibida a mensagem "E-mail já cadastrado"
E o cadastro não é realizado

------------------------------------------

Cenário: Tentar cadastrar usuário usando e-mail sem formatação válida
Dado que o usuário acessou a tela de cadastro 
Quando informa um e-mail em formato inválido
E informa um nome válido
E informa uma senha com no mínimo 6 caracteres
Então o botão "Cadastrar" permanece desabilitado

------------------------------------------

Cenário: Tentar cadastrar usuário com o campo e-mail vazio
Dado que o usuário acessou a tela de cadastro
E informa um nome válido
Quando deixa o campo e-mail em branco
E informa uma senha com no mínimo 6 caracteres
Então o botão "Cadastrar" permanece desabilitado

------------------------------------------

CAMPO SENHA

Cenário: Tentar cadastrar usuário com o campo senha em branco
Dado que o usuário acessou a tela de cadastro
E informa um nome válido
E informa um e-mail válido
Quando deixa o campo senha em branco
Então o botão "Cadastrar" permanece desabilitado

------------------------------------------

Cenário: Tentar cadastrar usuário usando uma senha com menos de 6 caracteres
Dado que o usuário acessou a tela de cadastro
E informa um nome válido
E informa um e-mail válido
Quando preenche o campo senha com menos de 6 caracteres
Então o botão "Cadastrar" permanece desabilitado

------------------------------------------

Cenário: Cadastrar usuário usando uma senha com exatamente 6 caracteres
Dado que o usuário acessou a tela de cadastro
E informa um nome válido
E informa um e-mail válido
Quando informa uma senha com exatamente 6 caracteres
E clica no botão "Cadastrar"
Então o cadastro é realizado com sucesso
E uma mensagem de sucesso é exibida
