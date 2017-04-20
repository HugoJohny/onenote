class CreatePos < ActiveRecord::Migration[5.0]
  def change
    create_table :pos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
