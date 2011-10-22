class ApplicationController < ActionController::Base
  protect_from_forgery

  def carrinho_atual
    begin
      Carrinho.find(session[:id_carrinho])
    rescue
      carrinho = Carrinho.create
      session[:id_carrinho] = carrinho.id
      carrinho
    end
  end
end
