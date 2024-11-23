class CourseRegistrationsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new create]
  before_action :set_course_registration, only: %i[show edit update destroy]
  before_action :set_course, only: %i[new create]

  # GET /registrations or /registrations.json
  def index
    @course_registrations = CourseRegistration.all
  end

  # GET /registrations/1 or /registrations/1.json
  def show
  end

  # GET /course_registrations/new
  def new
    @course = Course.find(params[:course_id])
    @course_registration = @course.course_registrations.build
  end

  # GET /registrations/1/edit
  def edit
  end

  # POST /course_registrations
  def create
    @course_registration = CourseRegistration.new(course_registration_params)
    @course_registration.course = @course
    @course_registration.user = current_user

    respond_to do |format|
      if @course_registration.save
        format.html { redirect_to @course_registration, notice: "Registration was successfully created." }
        format.json { render :show, status: :created, location: @course_registration }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @course_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registrations/1 or /registrations/1.json
  def update
    respond_to do |format|
      if @course_registration.update(course_registration_params)
        format.html { redirect_to @course_registration, notice: "Course registration was successfully updated." }
        format.json { render :show, status: :ok, location: @course_registration }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registrations/1 or /registrations/1.json
  def destroy
    @course_registration.destroy!

    respond_to do |format|
      format.html { redirect_to course_registrations_path, status: :see_other, notice: "Registration was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_registration
      @course_registration = CourseRegistration.find(params[:id])
    end

    def set_course
      @course = Course.find(params[:course_id])
    end

    # Only allow a list of trusted parameters through.
    def course_registration_params
      params.require(:course_registration).permit(:course_id, :user_id)
    end
end
