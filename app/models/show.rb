class Show < ActiveRecord::Base
  validates_presence_of :title, :video_id
  validates_length_of :title, :minimum => 1
  has_many :comments, :as => :commentable
end
