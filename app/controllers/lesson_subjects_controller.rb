class LessonSubjectsController < ApplicationController
  before_action :set_lesson_subject, only: [:show, :edit, :update, :destroy]

  # GET /lesson_subjects
  # GET /lesson_subjects.json
  def index
    @lesson_subjects = LessonSubject.all
  end

  # GET /lesson_subjects/1
  # GET /lesson_subjects/1.json
  def show
  end

  # GET /lesson_subjects/new
  def new
    @lesson_subject = LessonSubject.new
  end

  # GET /lesson_subjects/1/edit
  def edit
  end

  # POST /lesson_subjects
  # POST /lesson_subjects.json
  def create
    @lesson_subject = LessonSubject.new(lesson_subject_params)

    respond_to do |format|
      if @lesson_subject.save
        format.html { redirect_to @lesson_subject, notice: 'Lesson subject was successfully created.' }
        format.json { render :show, status: :created, location: @lesson_subject }
      else
        format.html { render :new }
        format.json { render json: @lesson_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_subjects/1
  # PATCH/PUT /lesson_subjects/1.json
  def update
    respond_to do |format|
      if @lesson_subject.update(lesson_subject_params)
        format.html { redirect_to @lesson_subject, notice: 'Lesson subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson_subject }
      else
        format.html { render :edit }
        format.json { render json: @lesson_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_subjects/1
  # DELETE /lesson_subjects/1.json
  def destroy
    @lesson_subject.destroy
    respond_to do |format|
      format.html { redirect_to lesson_subjects_url, notice: 'Lesson subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_subject
      @lesson_subject = LessonSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_subject_params
      params.require(:lesson_subject).permit(:lesson_id, :subject_id)
    end
end
