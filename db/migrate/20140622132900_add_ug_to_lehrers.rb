class AddUgToLehrers < ActiveRecord::Migration
  def change
    add_column :lehrers, :ug, :integer
  end
end
