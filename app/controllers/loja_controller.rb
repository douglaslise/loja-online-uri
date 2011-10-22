class LojaController < ApplicationController
  def index
    @produtos = Produto.all
    @carrinho = carrinho_atual
  end

end
