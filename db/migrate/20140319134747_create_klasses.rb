class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.integer :jahrgang
      t.string :kennzeichnung

      t.timestamps
    end
  end
end
