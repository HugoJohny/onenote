class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :nome
      t.string :nomeFantasia
      t.string :cpf
      t.string :cnpj
      t.string :rg
      t.string :tipoPessoa

      t.timestamps
    end
  end
end
