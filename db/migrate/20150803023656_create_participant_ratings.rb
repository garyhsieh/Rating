class CreateParticipantRatings < ActiveRecord::Migration
  def change
    create_table :participant_ratings do |t|
      t.integer		:participant_id
      t.decimal		:score
      t.integer		:video_id
      t.timestamps
    end
  end
end
