# encoding: utf-8
class Produto < ActiveRecord::Base

  validates :titulo, :presence => true,
    :uniqueness => 
    {:message => 'já utilizado em outro produto'}
  validates :descricao, :presence => true
  validates :preco, :numericality => {
    :greater_than => 0.0
  }
  validates :tipo_imagem, :format => {
    :with => /^image/,
    :message => 'não é uma imagem'
  }

  def campo_imagem=(img)
    self.imagem = img.read
    self.tipo_imagem = img.content_type.chomp
  end

end

