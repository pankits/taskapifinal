class AddStatusToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :catalogs, :status, :integer
  end
end
