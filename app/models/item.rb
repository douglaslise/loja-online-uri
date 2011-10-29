class Item < ActiveRecord::Base

  belongs_to :carrinho
  belongs_to :produto
  belongs_to :pedido

  def valor_total
    self.quantidade * produto.preco
  end
  
end
