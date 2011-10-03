class Produto < ActiveRecord::Base

  def campo_imagem=(img)
    self.imagem = img.read
    self.tipo_imagem = img.content_type.chomp
  end

end

