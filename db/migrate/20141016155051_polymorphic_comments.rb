class PolymorphicComments < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.remove :video_id
      t.references :commentable, polymorphic: true
    end
  end
end
