class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.text :subtitle
      t.string :video_id

      t.timestamps
    end
  end
end
