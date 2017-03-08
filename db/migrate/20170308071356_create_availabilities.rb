class CreateAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availabilities do |t|
      t.references :user, foreign_key: true
      t.date :day_off

      t.timestamps
    end
  end
end
