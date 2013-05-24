class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.date :showtime_date
      t.string :showtime_time
      t.string :time

      t.timestamps
    end
  end
end
