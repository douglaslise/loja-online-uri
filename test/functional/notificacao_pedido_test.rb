require 'test_helper'

class NotificacaoPedidoTest < ActionMailer::TestCase
  test "recebido" do
    mail = NotificacaoPedido.recebido
    assert_equal "Recebido", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
