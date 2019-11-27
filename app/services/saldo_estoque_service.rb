class SaldoEstoqueService

    def self.vender(produto, data)
        new(produto, data).vender
    end

    def initialize(produto, data)
        @produto = produto
        @data = data   
    end

    def vender
        MovimentodeEstoque.create(produto: @produto, data: @data)
    end

end