class ChangeDataLevelToUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :level, :string
  end
end
