class CotfcGroupsController < ApplicationController
  before_action :set_cotfc_group, only: %i[ show edit update destroy ]

  # GET /cotfc_groups or /cotfc_groups.json
  def index
    @cotfc_groups = CotfcGroup.where(active: true).order(:host)
  end

  # GET /cotfc_groups/1 or /cotfc_groups/1.json
  def show
  end

  # GET /cotfc_groups/new
  def new
    @cotfc_group = CotfcGroup.new
  end

  # GET /cotfc_groups/1/edit
  def edit
  end

  # POST /cotfc_groups or /cotfc_groups.json
  def create
    @cotfc_group = CotfcGroup.new(cotfc_group_params)

    respond_to do |format|
      if @cotfc_group.save
        format.html { redirect_to cotfc_group_url(@cotfc_group), notice: "Cotfc group was successfully created." }
        format.json { render :show, status: :created, location: @cotfc_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cotfc_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cotfc_groups/1 or /cotfc_groups/1.json
  def update
    respond_to do |format|
      if @cotfc_group.update(cotfc_group_params)
        format.html { redirect_to cotfc_group_url(@cotfc_group), notice: "Cotfc group was successfully updated." }
        format.json { render :show, status: :ok, location: @cotfc_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cotfc_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cotfc_groups/1 or /cotfc_groups/1.json
  def destroy
    @cotfc_group.destroy!

    respond_to do |format|
      format.html { redirect_to cotfc_groups_url, notice: "Cotfc group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cotfc_group
      @cotfc_group = CotfcGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cotfc_group_params
      params.require(:cotfc_group).permit(:host, :subject, :day, :time, :location, :child_friendly, :intended_audience, :form_url, :photo_url, :description)
    end
end
