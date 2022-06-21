class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :contact, :integer
    add_column :users, :age, :integer
    add_column :users, :city, :string
  end
end
