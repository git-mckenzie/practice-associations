class Meeting < ApplicationRecord
  has_many :speakers, through :meeting_speaker
end
