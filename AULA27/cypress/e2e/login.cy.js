/// <reference types="cypress" />

import { faker } from '@faker-js/faker';
import * as login_page from '../support/page/login_page'

describe('Realizar login', () => {
    const tamanhoTela = ['ipad-2', 'iphone-5', 'iphone-xr', 'samsung-s10', 'macbook-16']

    tamanhoTela.forEach(tamanho => {
        describe(`Viewport ${tamanho}`, () => {
            beforeEach(() => {
                cy.viewport(tamanho)
                cy.visit('/login')
            })
            it('Cadastro realizado com sucesso', () => {

                const email = faker.internet.email()

                login_page.logar(email, faker.internet.password({ length: 6 }), `Olá, ${email}`)
            })

            it('Tentar logar com o campo "E-mail" vazio', () => {
                login_page.preencheSenha(faker.internet.password({ length: 6 }))
                login_page.clicaBotao()
                login_page.validaMensagemErro('E-mail inválido.')
            })

            it('Tentar logar com o campo "Senha" vazio', () => {

                const email = faker.internet.email()

                login_page.preencheEmail(email)
                login_page.clicaBotao()
                login_page.validaMensagemErro('Senha inválida.')
            })
        })
    })
})