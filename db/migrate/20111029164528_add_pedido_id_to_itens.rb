class AddPedidoIdToItens < ActiveRecord::Migration
  def self.up
    add_column :itens, :pedido_id, :integer
  end

  def self.down
    remove_column :itens, :pedido_id
  end
end
