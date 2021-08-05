class ChangeDataLevelToPosts < ActiveRecord::Migration[5.1]
  def change
    change_column :posts, :level, :string
  end
end
