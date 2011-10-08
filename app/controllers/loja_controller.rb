class LojaController < ApplicationController
  def index
    @produtos = Produto.all
  end

end
