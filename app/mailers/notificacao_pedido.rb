class NotificacaoPedido < ActionMailer::Base
  default :from => "ruby_on_rails_uri@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notificacao_pedido.recebido.subject
  #
  def recebido(pedido)
    @pedido = pedido

    mail :to => @pedido.email,
      :subject => 'Pedido recebido'
  end
end
