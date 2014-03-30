class StudyGuidesController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]

  def new
    @classroom = Classroom.find params[:classroom_id]
    @study_guide = @classroom.study_guides.build
  end

  def create
    @classroom = Classroom.find params[:classroom_id]
    @study_guide = StudyGuide.new params[:study_guide]
    @study_guide.user = current_user
    if @study_guide.save
      redirect_to classroom_study_guide_path(@classroom, @study_guide)
    else
      render 'new'
    end
  end

  def show
    @study_guide = StudyGuide.find params[:id]
  end
end
