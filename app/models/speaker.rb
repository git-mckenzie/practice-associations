class Speaker < ApplicationRecord
  has_many :meetings, through :meeting_speaker
end
