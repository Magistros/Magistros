class CreateLehrerbewertungs < ActiveRecord::Migration
  def change
    create_table :lehrerbewertungs do |t|
      t.integer :ug
      t.integer :uv
      t.integer :fr
      t.integer :ums 
      t.integer :lehrerid 
      t.integer :anzahl
      
      t.timestamps
    end
  end
end
