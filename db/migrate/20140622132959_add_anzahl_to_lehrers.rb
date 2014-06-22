class AddAnzahlToLehrers < ActiveRecord::Migration
  def change
    add_column :lehrers, :Anzahl, :integer
  end
end
