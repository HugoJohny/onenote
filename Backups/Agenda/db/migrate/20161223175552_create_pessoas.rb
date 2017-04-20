class CreatePessoas < ActiveRecord::Migration[5.0]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :endereco
      t.float :latitude
      t.float :longitude
      t.string :telefone

      t.timestamps
    end
  end
end
