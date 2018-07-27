class NotaCursosController < ApplicationController
  before_action :set_nota_curso, only: [:show, :update, :destroy]

  # GET /nota_cursos
  def index
    @nota_cursos = NotaCurso.all

    render json: @nota_cursos
  end

  # GET /nota_cursos/1
  def show
    render json: @nota_curso
  end

  # POST /nota_cursos
  def create
    @nota_curso = NotaCurso.new(nota_curso_params)

    if @nota_curso.save
      render json: @nota_curso, status: :created, location: @nota_curso
    else
      render json: @nota_curso.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nota_cursos/1
  def update
    if @nota_curso.update(nota_curso_params)
      render json: @nota_curso
    else
      render json: @nota_curso.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nota_cursos/1
  def destroy
    @nota_curso.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nota_curso
      @nota_curso = NotaCurso.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def nota_curso_params
      params.require(:nota_curso).permit(:user_id, :nota)
    end
end
