class TermDefinitionsController < ApplicationController
  before_action :set_term
  before_action :set_term_definition, only: %i[ show edit update destroy ]

  # GET /term_definitions or /term_definitions.json
  def index
    @term_definitions = TermDefinition.all
  end

  # GET /term_definitions/1 or /term_definitions/1.json
  def show
  end

  # GET /term_definitions/new
  def new
    @term_definition = TermDefinition.new
  end

  # GET /term_definitions/1/edit
  def edit
  end

  # POST /term_definitions or /term_definitions.json
  def create
    @term_definition = TermDefinition.new(term_definition_params)

    respond_to do |format|
      if @term_definition.save
        format.html { redirect_to @term }
        format.json { render :show, status: :created, location: @term_definition }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @term_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /term_definitions/1 or /term_definitions/1.json
  def update
    respond_to do |format|
      if @term_definition.update(term_definition_params)
        format.html { redirect_to @term }
        format.json { render :show, status: :ok, location: @term_definition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @term_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /term_definitions/1 or /term_definitions/1.json
  def destroy
    @term_definition.destroy
    respond_to do |format|
      format.html { redirect_to @term }
      format.json { head :no_content }
    end
  end

  private
    def set_term
      @term = Term.find(params[:term_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_term_definition
      @term_definition = TermDefinition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def term_definition_params
      params.require(:term_definition).permit(:description, :source_name, :source_url, :term_id)
    end
end
