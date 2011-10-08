class CreateCarrinhos < ActiveRecord::Migration
  def self.up
    create_table :carrinhos do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :carrinhos
  end
end
