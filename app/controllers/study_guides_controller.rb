require "net/http"
require "uri"

class StudyGuidesController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]

  def new
    @classroom = Classroom.find params[:classroom_id]
    @study_guide = @classroom.study_guides.build
  end

  def create
    @classroom = Classroom.find params[:classroom_id]
    @study_guide = @classroom.study_guides.build params[:study_guide]
    @study_guide.user = current_user
    @study_guide.doc_url = get_url
    if @study_guide.save
      save_action(:create, @study_guide)
      redirect_to classroom_path(@classroom)
    else
      render 'new'
    end
  end

  def show
    @study_guide = StudyGuide.find params[:id]
    save_action(:view, @study_guide)
    redirect_to @study_guide.doc_url
  end

  private
  def get_url
    endpoint = "http://boiling-garden-7787.herokuapp.com/"
    Net::HTTP.get_response(URI.parse(endpoint)).body
  end
end
