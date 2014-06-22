class CreateLehrers < ActiveRecord::Migration
  def change
    create_table :lehrers do |t|
      t.string :name
      t.string :fach1
      t.string :fach2
      t.string :fach3
      t.string :fach4
      t.string :ug
      t.string :uv
      t.string :ums
      t.string :fr
      t.string :anzahl

      t.timestamps
    end
    Lehrer.create(:name=>"Gerhard Beermann",:fach1=>"Musik",:fach2=>"Geologie",:fach3=>"---",:fach4=>"---", :ug=>0, :uv=>0, :ums=>0, :fr=>0, :Anzahl=>0)
  end
end
