class EnrollmentsController < ApplicationController
  # GET /enrollments
  # GET /enrollments.json
  def index
    @enrollment = Enrollment.find(params[:id])
  end

  # GET /enrollments/1
  # GET /enrollments/1.json
  def show
  end

  # GET /enrollments/new
  def new
    @enrollment = Enrollment.new
  end

  # GET /enrollments/1/edit
  def edit
  end

  # POST /enrollments
  # POST /enrollments.json
  def create
    @enrollment = Enrollment.new(enrollment_params)

    respond_to do |format|
      if @enrollment.save
        format.html { redirect_to home_index_path, notice: 'Enrollment was successfully created.' }
        format.json { render :show, status: :created, location: @enrollment }
      else
        format.html { render :new }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /enrollments/1
  # PATCH/PUT /enrollments/1.json
  def update
  end

  # DELETE /enrollments/1
  # DELETE /enrollments/1.json
  def destroy
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def enrollment_params
      params.require(:enrollment).permit(:user_id, :course_id)
    end
end
