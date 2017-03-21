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
