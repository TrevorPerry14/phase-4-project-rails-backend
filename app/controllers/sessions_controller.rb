class SessionsController < ApplicationController
    def create 
        driver = Driver.find_by(username: params[:username])
        if driver&.authenticate(params[:password])
            session[:user_id] = driver.id 
            render json: driver
        else 
            render json: { errors: "Invalid Password or User" }
        end
    end

    def show 
        driver = Driver.find_by(id: session[:user_id])
        if driver 
            render json: driver 
        else
            render json: { error: "Not Authorized" }, status: :unauthorized 
        end
    end

    def destroy 
        session.delete :user_id 
        head :no_content
    end
end
