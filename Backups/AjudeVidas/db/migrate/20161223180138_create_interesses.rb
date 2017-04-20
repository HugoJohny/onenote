class CreateInteresses < ActiveRecord::Migration[5.0]
  def change
    create_table :interesses do |t|
      t.string :status
      t.references :produto, foreign_key: true
      t.references :pessoa, foreign_key: true

      t.timestamps
    end
  end
end
