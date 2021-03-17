class Api::LanguagesController < ApplicationController
  def index
    response = HTTP.get("https://calendarific.com/api/v2/holidays?&api_key=#{Rails.application.credentials.holidays_api[:api_key]}&country=#{params[:search]}&year=2017")
    render json: response.parse
  end
end
