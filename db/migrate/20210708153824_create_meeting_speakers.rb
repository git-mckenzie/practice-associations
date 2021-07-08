class CreateMeetingSpeakers < ActiveRecord::Migration[6.1]
  def change
    create_table :meeting_speakers do |t|

      t.timestamps
    end
  end
end
