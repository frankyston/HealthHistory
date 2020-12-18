class ExamsController < ApplicationController
  before_action :set_consultation
  before_action :set_exam, only: [:show, :edit, :update, :destroy]

  # GET /exams
  # GET /exams.json
  def index
    @exams = @consultation.exams.all
    if params[:title].present?
      @exams = @consultation.exams.where("lower(title) ilike '%#{params[:title].downcase}%'")
    end
  end

  # GET /exams/1
  # GET /exams/1.json
  def show
  end

  # GET /exams/new
  def new
    @exam = @consultation.exams.new
  end

  # GET /exams/1/edit
  def edit
  end

  # POST /exams
  # POST /exams.json
  def create
    @exam = @consultation.exams.new(exam_params)

    respond_to do |format|
      if @exam.save
        format.html { redirect_to consultation_exams_path(@consultation), notice: 'Exame criado com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /exams/1
  # PATCH/PUT /exams/1.json
  def update
    respond_to do |format|
      if @exam.update(exam_params)
        format.html { redirect_to consultation_exams_path(@consultation), notice: 'Exame atualizado com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /exams/1
  # DELETE /exams/1.json
  def destroy
    @exam.destroy
    respond_to do |format|
      format.html { redirect_to consultation_exams_path(@consultation), notice: 'Exame apagado.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam
      @exam = @consultation.exams.find(params[:id])
    end

    def set_consultation
      @consultation = current_user.consultations.find(params[:consultation_id])
    end

    # Only allow a list of trusted parameters through.
    def exam_params
      params.require(:exam).permit(:title, :exam_date, :exam_location, :user_id, :shared, files: [])
    end
end
