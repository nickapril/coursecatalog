class EnrollmentsController < ApplicationController
  # GET /enrollments
  # GET /enrollments.json
  def index
    @enrollments = Enrollment.find(params[:id])
  end

  # GET /enrollments/1
  # GET /enrollments/1.json
  def show
  end

  # GET /enrollments/new
  def new
    @enrollments = Enrollment.new
  end

  # GET /enrollments/1/edit
  def edit
  end

  # POST /enrollments
  # POST /enrollments.json
  def create
    @enrollments = Enrollment.new(enrollment_params)

    respond_to do |format|
      if @enrollments.save
        format.html { redirect_to current_user, notice: 'Enrollment was successfully created.' }
        format.json { render :show, status: :created, location: @enrollments }
      else
        format.html { render :new }
        format.json { render json: @enrollments.errors, status: :unprocessable_entity }
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
    # Never trust parameters from the internet
    def enrollment_params
      params.require(:enrollments).permit(:user_id, :lesson_id)
    end
end
