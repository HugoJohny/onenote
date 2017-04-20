class AddPessoaToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :pessoa, foreign_key: true
  end
end
