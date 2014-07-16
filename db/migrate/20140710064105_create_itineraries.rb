class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :date
      t.string :destination
      t.integer :rating
      t.string :starting
      t.string :hotel
      t.integer :tfd
      t.string :hotelurl



      t.timestamps
    end
  end
end
