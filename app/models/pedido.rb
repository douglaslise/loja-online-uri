class Pedido < ActiveRecord::Base

  has_many :itens

  validates :nome, :endereco, :email,
    :presence => true

  def adiciona_itens_do_carrinho(carrinho)
    carrinho.itens.each do |item|
      item.carrinho = nil
      itens << item
    end
  end

end
