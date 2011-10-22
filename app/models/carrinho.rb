class Carrinho < ActiveRecord::Base

  has_many :itens, :dependent => :destroy

end
