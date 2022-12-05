class TracksController < ApplicationController

    before_action :select_track, only: [:show]

    def index 
        render json: Track.all
    end

    def show 
        render json: @track, serializer: TrackTimesSerializer
    end

    private 

    def select_track 
        @track = Track.find(params[:id])
    end
end
