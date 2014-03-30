class ClassroomsController < ApplicationController
  def new
    @classroom = Classroom.new
    @classroom.build_incentive_scheme
    @classroom.build_subject
  end

  def create

    @subject = Subject.find_or_create_by_name(params[:classroom][:subject_attributes])
    @subject.save

    @classroom = Classroom.new(classroom_params)
    @classroom.subject_id = @subject.id
    @classroom.save

    @incentive = IncentiveScheme.new(params[:classroom][:incentive_scheme_attributes])
    @incentive.classroom_id = @classroom.id
    @incentive.save


    redirect_to :root
  end

  def classroom_params
    params[:classroom].slice(:name)
  end
end
