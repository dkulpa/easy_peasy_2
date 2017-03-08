class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :phone_number
      t.date :accepted_at

      t.timestamps
    end
  end
end
