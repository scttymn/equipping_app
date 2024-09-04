class OrganizationPeopleController < ApplicationController
  before_action :set_organization_person, only: %i[ show edit update destroy ]

  # GET /organization_people or /organization_people.json
  def index
    @organization_people = OrganizationPerson.all
  end

  # GET /organization_people/1 or /organization_people/1.json
  def show
  end

  # GET /organization_people/new
  def new
    @organization_person = OrganizationPerson.new
  end

  # GET /organization_people/1/edit
  def edit
  end

  # POST /organization_people or /organization_people.json
  def create
    @organization_person = OrganizationPerson.new(organization_person_params)

    respond_to do |format|
      if @organization_person.save
        format.html { redirect_to organization_person_url(@organization_person), notice: "Organization person was successfully created." }
        format.json { render :show, status: :created, location: @organization_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @organization_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization_people/1 or /organization_people/1.json
  def update
    respond_to do |format|
      if @organization_person.update(organization_person_params)
        format.html { redirect_to organization_person_url(@organization_person), notice: "Organization person was successfully updated." }
        format.json { render :show, status: :ok, location: @organization_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @organization_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_people/1 or /organization_people/1.json
  def destroy
    @organization_person.destroy!

    respond_to do |format|
      format.html { redirect_to organization_people_url, notice: "Organization person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_person
      @organization_person = OrganizationPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_person_params
      params.require(:organization_person).permit(:person_id, :organization_id, :title, :type)
    end
end
