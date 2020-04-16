module Api
  module V1
    class InfosController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_info, only: [:show, :update, :destroy]

      # GET /infos
      def index
        subject = params[:subject_id].to_s
        @infos = Info.where("subject_id = #{subject}")

        render json: @infos
      end

      # GET /infos/1
      def show
        render json: @info
      end

      # POST /infos
      def create
        @info = Info.new(info_params)

        if @info.save
          render json: @info, status: :created, location: api_v1_info_url(@info)
        else
          render json: @info.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /infos/1
      def update
        if @info.update(info_params)
          render json: @info
        else
          render json: @info.errors, status: :unprocessable_entity
        end
      end

      # DELETE /infos/1
      def destroy
        @info.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_info
          @info = Info.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def info_params
          params.require(:info).permit(:infoTitle, :infoText, :subject_id)
        end
    end
  end
end
