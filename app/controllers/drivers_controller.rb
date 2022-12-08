class DriversController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    before_action :select_driver, only: [:show, :update]
    before_action :authorize

    def index 
        render json: Driver.all
    end

    def driver_times
        render json: Driver.all, serializer: DriverTimesSerializer
    end

    def show 
        render json: @driver, serializer: DriverTimesSerializer
    end

    def create 
        driver = Driver.create!(driver_params) 
        render json: driver, status: :created
    end

    def destroy 
        driver = select_driver 
        driver.destroy 
        head :no_content
    end

    def update 
        if @driver
            @driver.update(driver_params)
            render json: @driver
        else
            render_not_found_response
        end
    end

    private 

    def select_driver 
        @driver = Driver.find(params[:id])
    end

    def driver_params 
        params.permit( :name, :age, :country, :username, :password, :car, :bio, :admin)
    end

    def render_not_found_response 
        render json: { error: "Driver not found" }, status: :not_found
    end
end
