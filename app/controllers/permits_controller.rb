class PermitsController < ApplicationController
    def index
        @permits = Permit.all 

        render json: @permits
    end

    def show
        @permit = Permit.find(params[:permit_id])

        render json: @permit
    end

    def create
        @permit = Permit.create({
            location: params[:location],
            permite_type: params[:permite_type]
        })
        render json: @permit
    end

    def update
        @permit = Permit.find(params[:permit_id])
        @permit.update({
            location: params[:location],
            permite_type: params[:permite_type]
        })

        render json: @permit
    end

    def destroy
        @permits = Permit.all 
        @permit = Permit.find(params[:permit_id])
        @permit.destroy

        render json: @permits
    end
end
