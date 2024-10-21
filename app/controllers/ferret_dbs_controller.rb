class FerretDbsController < ApplicationController
  before_action :set_ferret_db, only: %i[ show edit update destroy ]

  # GET /ferret_dbs or /ferret_dbs.json
  def index
    @ferret_dbs = FerretDb.all
  end

  # GET /ferret_dbs/1 or /ferret_dbs/1.json
  def show
  end

  # GET /ferret_dbs/new
  def new
    @ferret_db = FerretDb.new
  end

  # GET /ferret_dbs/1/edit
  def edit
  end

  # POST /ferret_dbs or /ferret_dbs.json
  def create
    @ferret_db = FerretDb.new(ferret_db_params)

    respond_to do |format|
      if @ferret_db.save
        format.html { redirect_to ferret_db_url(@ferret_db), notice: "Ferret db was successfully created." }
        format.json { render :show, status: :created, location: @ferret_db }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ferret_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ferret_dbs/1 or /ferret_dbs/1.json
  def update
    respond_to do |format|
      if @ferret_db.update(ferret_db_params)
        format.html { redirect_to ferret_db_url(@ferret_db), notice: "Ferret db was successfully updated." }
        format.json { render :show, status: :ok, location: @ferret_db }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ferret_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ferret_dbs/1 or /ferret_dbs/1.json
  def destroy
    @ferret_db.destroy!

    respond_to do |format|
      format.html { redirect_to ferret_dbs_url, notice: "Ferret db was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ferret_db
      @ferret_db = FerretDb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ferret_db_params
      params.require(:ferret_db).permit(:date_of_birth, :genotype, :identifiers, :location, :owner)
    end
end
