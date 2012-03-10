class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.date :Date
      t.string :Day
      t.time :Time
      t.integer :Temperature
      t.integer :Precipitation
      t.integer :AirPressure
      t.integer :WindSpeed
      t.string :WindDirection

      t.timestamps
    end
  end
end
