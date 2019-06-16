module Api
  module V1
    class FieldsController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_field, only: [:show, :update, :destroy]

      # GET /fields
      def index
        @fields = Field.all

        render json: @fields
      end

      # GET /fields/1
      def show
        render json: @field
      end

      # POST /fields
      def create
        @field = Field.new(field_params)

        if @field.save
          render json: @field, status: :created, location: @field
        else
          render json: @field.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /fields/1
      def update
        if @field.update(field_params)
          render json: @field
        else
          render json: @field.errors, status: :unprocessable_entity
        end
      end

      # DELETE /fields/1
      def destroy
        @field.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_field
          @field = Field.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def field_params
          params.require(:field).permit(:fieldName)
        end
    end
  end
end
