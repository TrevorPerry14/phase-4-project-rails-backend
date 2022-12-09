class TracksController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    before_action :select_track, only: [:show, :update, :destroy]

    def index 
        render json: Track.all
    end

    def show 
        render json: @track, serializer: TrackTimesSerializer
    end

    def create 
        track = Track.create!(track_params)
        render json: track, status: :created
    end

    def update 
        if @track
            @track.update(track_params)
            render json: @track
        else
            render_not_found_response
        end
    end

    def destroy 
       track = Track.find_by(id: params[:id])
       track.destroy
       head :no_content
    end

    private 

    def select_track 
        @track = Track.find(params[:id])
    end

    def track_params 
        params.permit(:name, :location, :length)
    end

    def render_not_found_response 
        render json: { error: "Track not found" }, status: :not_found
    end
end

#Driver.last.tracks.first.time_trials.where(driver_id: 22) - Shows the time trials for a specific track by the selected driver

#Track.first.time_trials.order(:Lap_Time) - Shows time_trials for each track in order