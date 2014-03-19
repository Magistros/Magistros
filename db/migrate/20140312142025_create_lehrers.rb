class CreateLehrers < ActiveRecord::Migration
  def change
    create_table :lehrers do |t|
      t.string :name
      t.string :fach1
      t.string :fach2
      t.string :fach3
      t.string :fach4

      t.timestamps
    end
    Lehrer.create(:name=>"Gerhard Beermann",:fach1=>"Musik",:fach2=>"Geologie",:fach3=>"---",:fach4=>"---")
  end
end
