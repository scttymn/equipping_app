class AuthTokensController < ApplicationController
  before_action :set_auth_token, only: %i[ show edit update destroy ]

  # GET /auth_tokens or /auth_tokens.json
  def index
    @auth_tokens = AuthToken.all
  end

  # GET /auth_tokens/1 or /auth_tokens/1.json
  def show
  end

  # GET /auth_tokens/new
  def new
    @auth_token = AuthToken.new
  end

  # GET /auth_tokens/1/edit
  def edit
  end

  # POST /auth_tokens or /auth_tokens.json
  def create
    @auth_token = AuthToken.new(auth_token_params)

    respond_to do |format|
      if @auth_token.save
        format.html { redirect_to auth_token_url(@auth_token), notice: "Auth token was successfully created." }
        format.json { render :show, status: :created, location: @auth_token }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @auth_token.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auth_tokens/1 or /auth_tokens/1.json
  def update
    respond_to do |format|
      if @auth_token.update(auth_token_params)
        format.html { redirect_to auth_token_url(@auth_token), notice: "Auth token was successfully updated." }
        format.json { render :show, status: :ok, location: @auth_token }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @auth_token.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auth_tokens/1 or /auth_tokens/1.json
  def destroy
    @auth_token.destroy!

    respond_to do |format|
      format.html { redirect_to auth_tokens_url, notice: "Auth token was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auth_token
      @auth_token = AuthToken.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def auth_token_params
      params.require(:auth_token).permit(:person_id, :token, :expires_at)
    end
end
