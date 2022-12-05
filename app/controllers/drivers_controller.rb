class DriversController < ApplicationController

    before_action :select_driver, only: [:show]

    def index 
        render json: Driver.all
    end

    def show 
        render json: @driver, serializer: DriverTimesSerializer
    end

    private 

    def select_driver 
        @driver = Driver.find(params[:id])
    end
end
