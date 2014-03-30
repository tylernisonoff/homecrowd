class StaticController < ApplicationController
  def index
    if user_signed_in?
      redirect_to user_path(current_user)
    end
  end

  def student_new
    @user = Student.new
  end

  def teacher_new
    @user = Teacher.new
  end

  def student_create
    @user = Student.new(params[:student])
    if @user.save
      redirect_to user_path(@user)
    else
      redirect_to '/student/sign_up'
    end
  end

  def teacher_create
    @user = Student.new(params[:teacher])
    if @user.save
      redirect_to user_path(@user)
    else
      redirect_to '/teacher/sign_up'
    end
  end

end
