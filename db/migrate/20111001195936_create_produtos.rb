class CreateProdutos < ActiveRecord::Migration
  def self.up
    create_table :produtos do |t|
      t.string :titulo
      t.string :descricao
      t.decimal :preco
      t.binary :imagem
      t.string :tipo_imagem

      t.timestamps
    end
  end

  def self.down
    drop_table :produtos
  end
end
