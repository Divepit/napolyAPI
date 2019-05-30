module Api
  module V1
    class SubjectsController < ApplicationController
      before_action :set_subject, only: [:show, :update, :destroy]

      # GET /subjects
      def index
        semester = params[:semester_id].to_s
        field = params[:field_id].to_s
        year = params[:year].to_s
        @subjects = Subject.where("semester_id = #{semester} AND field_id = #{field} AND year = #{year}")
        render json: @subjects
      end

      # GET /subjects/1
      def show
        render json: @subject
      end

      # POST /subjects
      def create
        @subject = Subject.new(subject_params)

        if @subject.save
          render json: @subject, status: :created, location: @subject
        else
          render json: @subject.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /subjects/1
      def update
        if @subject.update(subject_params)
          render json: @subject
        else
          render json: @subject.errors, status: :unprocessable_entity
        end
      end

      # DELETE /subjects/1
      def destroy
        @subject.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_subject
          @subject = Subject.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def subject_params
          params.require(:subject).permit(:subjectName, :weekCount, :semester_id, :field_id, :year)
        end
    end
  end
end
