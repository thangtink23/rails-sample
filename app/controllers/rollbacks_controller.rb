class RollbacksController < ApplicationController
  before_action :set_rollback, only: [:show, :edit, :update, :destroy]

  # GET /rollbacks
  # GET /rollbacks.json
  def index
    @rollbacks = Rollback.all
  end

  # GET /rollbacks/1
  # GET /rollbacks/1.json
  def show
  end

  # GET /rollbacks/new
  def new
    @rollback = Rollback.new
  end

  # GET /rollbacks/1/edit
  def edit
  end

  # POST /rollbacks
  # POST /rollbacks.json
  def create
    @rollback = Rollback.new(rollback_params)

    respond_to do |format|
      if @rollback.save
        format.html { redirect_to @rollback, notice: 'Rollback was successfully created.' }
        format.json { render :show, status: :created, location: @rollback }
      else
        format.html { render :new }
        format.json { render json: @rollback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rollbacks/1
  # PATCH/PUT /rollbacks/1.json
  def update
    respond_to do |format|
      if @rollback.update(rollback_params)
        format.html { redirect_to @rollback, notice: 'Rollback was successfully updated.' }
        format.json { render :show, status: :ok, location: @rollback }
      else
        format.html { render :edit }
        format.json { render json: @rollback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rollbacks/1
  # DELETE /rollbacks/1.json
  def destroy
    @rollback.destroy
    respond_to do |format|
      format.html { redirect_to rollbacks_url, notice: 'Rollback was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rollback
      @rollback = Rollback.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rollback_params
      params.fetch(:rollback, {})
    end
end
