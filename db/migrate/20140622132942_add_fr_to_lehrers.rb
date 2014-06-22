class AddFrToLehrers < ActiveRecord::Migration
  def change
    add_column :lehrers, :fr, :integer
  end
end
