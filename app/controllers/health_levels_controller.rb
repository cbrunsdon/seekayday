class HealthLevelsController < ApplicationController
  filter_resource_access

  # GET /health_levels
  # GET /health_levels.json
  def index
    @health_levels = HealthLevel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @health_levels }
    end
  end

  # GET /health_levels/1
  # GET /health_levels/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @health_level }
    end
  end

  # GET /health_levels/new
  # GET /health_levels/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @health_level }
    end
  end

  # GET /health_levels/1/edit
  def edit
  end

  # POST /health_levels
  # POST /health_levels.json
  def create
    respond_to do |format|
      if @health_level.save
        format.html { redirect_to @health_level, notice: 'Health level was successfully created.' }
        format.json { render json: @health_level, status: :created, location: @health_level }
      else
        format.html { render action: "new" }
        format.json { render json: @health_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /health_levels/1
  # PUT /health_levels/1.json
  def update
    respond_to do |format|
      if @health_level.update_attributes(params[:health_level])
        format.html { redirect_to @health_level, notice: 'Health level was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @health_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_levels/1
  # DELETE /health_levels/1.json
  def destroy
    @health_level.destroy

    respond_to do |format|
      format.html { redirect_to health_levels_url }
      format.json { head :no_content }
    end
  end
end
