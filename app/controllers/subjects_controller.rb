class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new params[:subject]
    if @subject.save
      redirect_to subjects_path
    else
      render 'new'
    end
  end
end
