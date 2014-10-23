class CommentReference < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.remove :video_id
      t.references :video, index: true
    end
  end
end
