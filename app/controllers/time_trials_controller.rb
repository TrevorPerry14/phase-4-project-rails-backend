class TimeTrialsController < ApplicationController

    before_action :authorize

    def index
        render json: TimeTrial.all
    end

    def create 
        time = TimeTrial.create(time_params)
        render json: time, status: :created
    end

    private

    def time_params 
        params.permit(:track_id, :driver_id, :Lap_Time, :date)
    end
end
