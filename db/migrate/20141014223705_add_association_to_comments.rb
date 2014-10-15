class AddAssociationToComments < ActiveRecord::Migration
  def change
    change_column :comments, :video_id, :integer
  end
end
