class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :obtem_carrinho,
    :except => [:create]

  before_filter :define_idioma
  def define_idioma
    if params[:idioma]
      if I18n.available_locales.
          include?(params[:idioma].to_sym)
        I18n.locale = params[:idioma]
      end
    end
  end

  def obtem_carrinho
    @carrinho = carrinho_atual
  end

  def carrinho_atual
    begin
      Carrinho.find(session[:id_carrinho])
    rescue
      carrinho = Carrinho.create
      session[:id_carrinho] = carrinho.id
      carrinho
    end
  end

  def default_url_options
    {:idioma => I18n.locale}
  end
end
