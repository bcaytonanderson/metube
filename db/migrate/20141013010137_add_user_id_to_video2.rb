class AddUserIdToVideo2 < ActiveRecord::Migration
  def change
    change_table :videos do |t|
      t.references :user
    end
  end
end