class Participant < ActiveRecord::Base
  attr_accessible :hit_id, :worker_id, :assignment_id, :video_id_array, :distribution_array
end
