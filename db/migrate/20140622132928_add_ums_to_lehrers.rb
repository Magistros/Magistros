class AddUmsToLehrers < ActiveRecord::Migration
  def change
    add_column :lehrers, :ums, :integer
  end
end
