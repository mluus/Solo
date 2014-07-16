class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :house_number
      t.string :street_name
      t.string :city
      t.string :beach_holiday
      t.string :sport_holiday
      t.string :family_holiday
      t.string :culture_holiday
      t.string :romantic_holiday
      t.string :city_holiday

      t.timestamps
    end
  end
end
