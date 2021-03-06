module Api
  module V1
    class LinksController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_link, only: [:show, :update, :destroy]

      # GET /links
      def index
        subject = params[:subject_id].to_s
        if subject != ""
          @links = Link.where("subject_id = #{subject}")
        else
          @links = Link.all
        end
        render json: @links, :except => [:semester_id, :field_id]
      end

      # GET /links/1
      def show
        render json: @link
      end

      # POST /links
      def create
        @link = Link.new(link_params)

        if @link.save
          render json: @link, status: :created
        else
          render json: @link.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /links/1
      def update
        if @link.update(link_params)
          render json: @link
        else
          render json: @link.errors, status: :unprocessable_entity
        end
      end

      # DELETE /links/1
      def destroy
        @link.destroy
      end

      # PATCH/PUT /links/type
      def type
        if Link.where("subject_id = #{params[:subject_id]} AND type_id = #{params[:type_old]}").update_all(type_id: params[:type_new])
          render status: :ok
        else
          render status: :unprocessable_entity
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_link
          @link = Link.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def link_params
          params.require(:link).permit(:linkUrl, :linkWeek, :subject_id, :type_id, :creator, :editor)
        end
    end
  end
end
