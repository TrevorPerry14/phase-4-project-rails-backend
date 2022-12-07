class SessionsController < ApplicationController
    def create 
        driver = Driver.find_by(username: params[:username])
        if driver&.authenticate(params[:password])
            session[:driver_id] = driver.id 
            render json: driver, status: :created
        else 
            render json: { errors: "Invalid Password or User" }, status: :unauthorized
        end
    end

    def show 
        driver = Driver.find_by(id: session[:driver_id])
        if driver 
            render json: driver 
        else
            render json: { error: "Not Authorized" }, status: :unauthorized 
        end
    end

    def destroy 
        session.delete :driver_id 
        head :no_content
    end
end
