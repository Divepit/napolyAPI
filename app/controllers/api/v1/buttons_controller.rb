module Api
  module V1
    class ButtonsController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_button, only: [:show, :update, :destroy]

      # GET /buttons
      def index
        subject = params[:subject_id].to_s
        @buttons = Button.where("subject_id = #{subject}")
        render json: @buttons
      end

      # GET /buttons/1
      def show
        render json: @button
      end

      # POST /buttons
      def create
        @button = Button.new(button_params)

        if @button.save
          render json: @button, status: :created, location: api_v1_button_url(@button)
        else
          render json: @button.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /buttons/1
      def update
        if @button.update(button_params)
          render json: @button
        else
          render json: @button.errors, status: :unprocessable_entity
        end
      end

      # DELETE /buttons/1
      def destroy
        @button.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_button
          @button = Button.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def button_params
          params.require(:button).permit(:buttonLabel, :buttonUrl, :subject_id)
        end
    end
  end
end
