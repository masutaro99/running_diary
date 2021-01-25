class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :board, foreign_key: true
      t.string :name, null: false
      t.string :comment, null: false
      t.string :text

      t.timestamps
    end
  end
end
