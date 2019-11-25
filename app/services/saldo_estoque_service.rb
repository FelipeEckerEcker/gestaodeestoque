class SaldoEstoqueService

    def initialize(produto, data)
        @produto = produto
        @data = data   
    end

    def produto
        raise StandardError, 'Produto já produzido nesta data' if ja_produzido? 
        
        produto = Produto.new(produto: @produto, produto: @produto, data: @data)
        produto.save
        produto
     end

    private 

    def ja_produzido?
        !Produto.where(produto: @produto, data: @data).empty?
    end

end