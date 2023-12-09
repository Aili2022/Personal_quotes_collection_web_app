class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.text :text, null:false
      t.integer :publication_year, null:true
      t.boolean :is_public, null:false, default:true
      t.string :comment, null:true
      t.references :users, null: false, foreign_key: true
      t.references :philosophers, null: true, foreign_key: true

      t.timestamps
    end
  end
end
