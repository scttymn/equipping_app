class GuardianshipsController < ApplicationController
  before_action :set_guardianship, only: %i[ show edit update destroy ]

  # GET /guardianships or /guardianships.json
  def index
    @guardianships = Guardianship.all
  end

  # GET /guardianships/1 or /guardianships/1.json
  def show
  end

  # GET /guardianships/new
  def new
    @guardianship = Guardianship.new
  end

  # GET /guardianships/1/edit
  def edit
  end

  # POST /guardianships or /guardianships.json
  def create
    @guardianship = Guardianship.new(guardianship_params)

    respond_to do |format|
      if @guardianship.save
        format.html { redirect_to guardianship_url(@guardianship), notice: "Guardianship was successfully created." }
        format.json { render :show, status: :created, location: @guardianship }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @guardianship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guardianships/1 or /guardianships/1.json
  def update
    respond_to do |format|
      if @guardianship.update(guardianship_params)
        format.html { redirect_to guardianship_url(@guardianship), notice: "Guardianship was successfully updated." }
        format.json { render :show, status: :ok, location: @guardianship }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @guardianship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guardianships/1 or /guardianships/1.json
  def destroy
    @guardianship.destroy!

    respond_to do |format|
      format.html { redirect_to guardianships_url, notice: "Guardianship was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guardianship
      @guardianship = Guardianship.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def guardianship_params
      params.require(:guardianship).permit(:person_id, :guardian_id)
    end
end
