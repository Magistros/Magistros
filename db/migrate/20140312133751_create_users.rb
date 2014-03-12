class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :vorname
      t.string :nachname
      t.string :klasse
      t.integer :berechtigung
      t.string :passwort

      t.timestamps
    end
    User.create(:vorname=>"Daniel",:nachname=>"Ehrmanntraut",:klasse=>"11c1",:berechtigung=>"0",:passwort=>"dan.ehr")
    User.create(:vorname=>"Aaron",:nachname=>"Asman",:klasse=>"11a1",:berechtigung=>"0",:passwort=>"aar.aas")
    User.create(:vorname=>"Baris",:nachname=>"Bektas",:klasse=>"11a1",:berechtigung=>"0",:passwort=>"bar.bis")
  end
end
