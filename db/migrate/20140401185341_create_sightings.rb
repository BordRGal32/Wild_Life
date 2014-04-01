class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.string :region_id
      t.string :lat
      t.string :long

      t.string :specie_id

      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
