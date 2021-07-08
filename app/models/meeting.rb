class Meeting < ApplicationRecord
  has_many :speakers, through: :meeting_speaker

  def create
    meeting = Meeting.new(
      title: params[:title],
      agenda: params[:agenda],
      location: params[:location],
      time: params[:time],
    )
    if meeting.save
      render json: { message: "Meeting created successfully" }, status: :created
    else
      render json: { errors: meeting.errors.full_messages }, status: :bad_request
    end
  end
end
