class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :date
      t.string :destination
      t.string :rating
      t.string :starting
      t.string :hotel
      t.string :tfd



      t.timestamps
    end
  end
end
