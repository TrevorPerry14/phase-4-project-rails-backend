class CreateTimeTrials < ActiveRecord::Migration[6.1]
  def change
    create_table :time_trials do |t|
      t.belongs_to :track, null: false, foreign_key: true
      t.belongs_to :driver, null: false, foreign_key: true
      t.integer :Lap_Time
      t.string :date

      t.timestamps
    end
  end
end
