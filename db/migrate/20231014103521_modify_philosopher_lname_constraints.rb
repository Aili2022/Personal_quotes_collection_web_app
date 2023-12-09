class ModifyPhilosopherLnameConstraints < ActiveRecord::Migration[7.0]
  def change
    change_column :philosophers, :lname, :string, null: true
  end
end
