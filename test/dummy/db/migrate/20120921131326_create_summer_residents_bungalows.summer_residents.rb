# This migration comes from summer_residents (originally 20120910030736)
class CreateSummerResidentsBungalows < ActiveRecord::Migration
  def change
    create_table :summer_residents_bungalows do |t|
      t.string :name
      t.string :unit
      t.integer :phone

      t.timestamps
    end
  end
end
