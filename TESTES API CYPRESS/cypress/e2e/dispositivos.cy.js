describe('Manipulando dispositivos', () => {
    it('Buscar dispositivo existente', () => {
        cy.request({
            method: 'GET',
            url: '/objects/3'
        })
            .then((resposta) => {
                expect(resposta.status).to.equal(200)
                expect(resposta.body.id).to.equal('3')
                expect(resposta.body.name).to.equal('Apple iPhone 12 Pro Max')
            })
    })

    it('Buscar dispositivo inexistente', () => {
        cy.request({
            method: 'GET',
            url: '/objects/456',
            failOnStatusCode: false
        })
            .then((resposta) => {
                expect(resposta.status).to.equal(404)
            })
    })

    it('Cadastrar dispositivo com sucesso', () => {
        cy.request({
            method: 'POST',
            url: '/objects',
            body: {
                "name": "Celular da Rebeca",
                "data": {
                    "year": 2026,
                    "price": 100,
                    "CPU model": "Intel Core i9",
                    "Hard disk size": "1 TB"
                }
            }
        })
            .then((resposta) => {
                expect(resposta.status).to.equal(200)
                expect(resposta.body.id).not.to.empty
            })
    })
})