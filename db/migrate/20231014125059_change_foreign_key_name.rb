class ChangeForeignKeyName < ActiveRecord::Migration[7.0]
  def change
    # Rename foreign key columns and change foreign key constraints
    remove_foreign_key "quote_categories", column: "catergories_id"
    rename_column "quote_categories", "catergories_id", "category_id"
    add_foreign_key "quote_categories", "categories", column: "category_id"

    remove_foreign_key "quote_categories", column: "quotes_id"
    rename_column "quote_categories", "quotes_id", "quote_id"
    add_foreign_key "quote_categories", "quotes", column: "quote_id"

    remove_foreign_key "quotes", column: "users_id"
    rename_column "quotes", "users_id", "user_id"
    add_foreign_key "quotes", "users", column: "user_id"

    remove_foreign_key "quotes", column: "philosophers_id"
    rename_column "quotes", "philosophers_id", "philosopher_id"
    add_foreign_key "quotes", "philosophers", column: "philosopher_id"
  end
end
