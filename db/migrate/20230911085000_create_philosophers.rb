class CreatePhilosophers < ActiveRecord::Migration[7.0]
  def change
    create_table :philosophers do |t|
      t.string :fname, null:false
      t.string :lname, null:true
      t.integer :birth_year, null:false
      t.integer :death_year, null:true
      t.string :short_bio, null:true

      t.timestamps
    end
  end
end
