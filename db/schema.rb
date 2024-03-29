# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111029164528) do

  create_table "carrinhos", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itens", :force => true do |t|
    t.integer  "produto_id"
    t.integer  "carrinho_id"
    t.integer  "quantidade",  :default => 1
    t.decimal  "preco"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pedido_id"
  end

  create_table "pedidos", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produtos", :force => true do |t|
    t.string   "titulo"
    t.string   "descricao"
    t.decimal  "preco"
    t.binary   "imagem"
    t.string   "tipo_imagem"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
