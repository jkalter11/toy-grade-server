class CoursesController < ApplicationController
  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses }
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @course = Course.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/new
  # GET /courses/new.json
  def new
    @course = Course.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/1/edit
  def edit
    @course = Course.find(params[:id])
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(params[:course])

    respond_to do |format|
      if @course.save
        format.html { redirect_to courses_url, notice: 'Course was successfully created.' }
        format.json { render json: @course, status: :created, location: @course }
      else
        format.html { render action: "new" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /courses/1
  # PUT /courses/1.json
  respond_to :html, :json
  def update
    @course = Course.find(params[:id])
    @course.update_attributes(params[:course])
    respond_with @course
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course = Course.find(params[:id])
    if @course.is_instructor == true
      Course.find_by_sql("select * from courses where course_code like '%#{@course.course_code}%'").each do |course|
        course.destroy
      end
      Assignment.find_by_sql("select * from assignments where course like '%#{@course.course_code}%'").each do |assignment|
        assignment.destroy
      end
      Question.find_by_sql("select * from questions where course like '%#{@course.course_code}%'").each do |question|
        question.destroy
      end
      Answer.find_by_sql("select * from answers where course like '%#{@course.course_code}%'").each do |answer|
        answer.destroy
      end
    end
    
    @course.destroy
    
    
    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end
end
