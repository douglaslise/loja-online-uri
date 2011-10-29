class Carrinho < ActiveRecord::Base

  has_many :itens, :dependent => :destroy

  def valor_total
    total = 0.0
    itens.each do |item|
      total += item.valor_total
    end
    total
  end
end
