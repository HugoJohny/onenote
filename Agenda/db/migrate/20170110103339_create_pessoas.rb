class CreatePessoas < ActiveRecord::Migration[5.0]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :fantasia
      t.string :comercial
      t.string :celular
      t.string :residencial
      t.string :email
      t.string :endereco
      t.string :cidade
      t.string :pais
      t.string :estado
      t.string :cep
      t.text :observacao

      t.timestamps
    end
  end
end
