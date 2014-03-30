require "net/http"
require "uri"

class StaticController < ApplicationController
  def index
    @random = get_random_fact
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

  private
  def get_random_fact
    endpoint = "http://numbersapi.com/#{Date.today.month}/#{Date.today.day}/date"
    uri = URI.parse(endpoint)
    res = Net::HTTP.get_response(uri)
    res.body
  end
end
