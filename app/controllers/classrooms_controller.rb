class ClassroomsController < ApplicationController
  def new
    @classroom = Classroom.new
    @classroom.build_incentive_scheme
  end

  def create
    @classroom = Classroom.new(classroom_params)
    @classroom.save
    @incentive = IncentiveScheme.new(params[:incentive_schemes])
    @incentive.classroom_id = @classroom.id
    @incentive.save
    redirect_to :root
  end

  def classroom_params
    params[:classroom].slice(:name)
  end
end
