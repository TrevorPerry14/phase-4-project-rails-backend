class TimeTrialsController < ApplicationController

    def index
        render json: TimeTrial.all
    end
end
