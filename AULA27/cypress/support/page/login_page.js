export function preencheEmail(email) {
    cy.get('#user').type(email)
}

export function preencheSenha(senha) {
    cy.get('#password').type(senha)
}

export function clicaBotao() {
    cy.get('#btnLogin').click()
}

export function validaLogin(mensagem) {
    cy.get('#swal2-title').should('have.text', 'Login realizado')
    cy.get('#swal2-html-container').should('have.text', mensagem)
}

export function validaMensagemErro(mensagem) {
    cy.get('.invalid_input').should('be.visible').should('have.text', mensagem)
}

export function logar(email, senha, mensagem) {
    preencheEmail(email)
    preencheSenha(senha)
    clicaBotao()
    validaLogin(mensagem)
}