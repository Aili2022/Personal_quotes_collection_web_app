class AddNullConstraints < ActiveRecord::Migration[7.0]
  def change
    change_column :categories, :cat_name, :string, null: false
    change_column :philosophers, :lname, :string, null: false
    change_column :philosophers, :death_year, :integer, null: true
    change_column :philosophers, :short_bio, :text, null: true
    change_column :quotes, :publication_year, :integer, null: true
    change_column :quotes, :comment, :text, null: true
    change_column :users, :fname, :string, null: false
    change_column :users, :lname, :string, null: false
    change_column :users, :email, :string, unique: true, null: false
    change_column :users, :password_digest, :string, null: false
    change_column :users, :status, :string, null: false
    change_column :users, :is_admin, :boolean, null: false, default: false
  end
end
