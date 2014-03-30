class StaticController < ApplicationController
  def index
  end

  def student_new
    @user = Student.new
  end

  def teacher_new
    @user = Teacher.new
  end

  def student_create
    @user = Student.new(params[:student])
    @user.save
    redirect_to :root
  end

  def teacher_create
    @user = Student.new(params[:teacher])
    @user.save
    redirect_to :root
  end

end
