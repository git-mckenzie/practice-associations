class Speaker < ApplicationRecord
  has_many :meetings, through :meeting_speaker

  def create
    speaker = Speaker.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
    )
    if speaker.save
      render json: { message: "Speaker created successfully" }, status: :created
    else
      render json: { errors: speaker.errors.full_messages }, status: :bad_request
    end
  end
end
