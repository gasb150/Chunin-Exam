class AddUserToUrlsShorters < ActiveRecord::Migration[6.1]
  def change
    add_column :urls_shorters, :user_id, :integer
    add_foreign_key :urls_shorters, :users, column: :user_id
  end
 
end
