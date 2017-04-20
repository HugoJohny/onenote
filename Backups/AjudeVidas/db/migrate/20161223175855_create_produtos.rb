class CreateProdutos < ActiveRecord::Migration[5.0]
  def change
    create_table :produtos do |t|
      t.string :titulo
      t.string :descricao
      t.string :endereco
      t.float :latidade
      t.float :longitude
      t.string :status
      t.integer :quantidade
      t.references :pessoa, foreign_key: true

      t.timestamps
    end
  end
end
