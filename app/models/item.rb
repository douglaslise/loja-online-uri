class Item < ActiveRecord::Base

  belongs_to :carrinho
  belongs_to :produto
  
end
