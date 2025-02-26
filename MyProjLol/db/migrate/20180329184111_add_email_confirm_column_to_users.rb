class AddEmailConfirmColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :email_confirmed, :boolean, default: false
    add_column :users, :confirm_token, :string
    add_column :users, :email, :string, unique :true
  end
end
