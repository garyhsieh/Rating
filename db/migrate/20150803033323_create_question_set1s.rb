class CreateQuestionSet1s < ActiveRecord::Migration
  def change
    create_table :question_set1s do |t|
      t.integer		:participant_id

      t.timestamps
    end
  end
end
