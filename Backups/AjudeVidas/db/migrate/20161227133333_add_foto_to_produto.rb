class AddFotoToProduto < ActiveRecord::Migration[5.0]
  def change
    add_column :produtos, :foto, :oid
  end
end
