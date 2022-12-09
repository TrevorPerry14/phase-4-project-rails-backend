class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :location
      t.string :length
      t.string :description

      t.timestamps
    end
  end
end
