class AlterUsers < ActiveRecord::Migration[8.0]
  def change
    remove_column :users, :track

    add_column :users, :DOB, :date
    add_column :users, :email, :string
    add_column :users, :phone_number, :string
    add_column :users, :address, :string
  end
end
