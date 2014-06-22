class AddUvToLehrers < ActiveRecord::Migration
  def change
    add_column :lehrers, :uv, :integer
  end
end
