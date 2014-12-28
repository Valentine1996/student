class RecordbooksController < ApplicationController
  before_action :set_recordbook, only: [:show, :edit, :update, :destroy]

  http_basic_authenticate_with name: "admin", password: "admin", except: [:index, :show]
  # GET /recordbooks
  # GET /recordbooks.json
  def index
    @recordbooks = Recordbook.search(params[:search])
  end

  # GET /recordbooks/1
  # GET /recordbooks/1.json
  def show
  end

  # GET /recordbooks/new
  def new
    @recordbook = Recordbook.new
  end

  # GET /recordbooks/1/edit
  def edit
  end

  # POST /recordbooks
  # POST /recordbooks.json
  def create
    @recordbook = Recordbook.new(recordbook_params)

    respond_to do |format|
      if @recordbook.save
        format.html { redirect_to @recordbook, notice: 'Recordbook was successfully created.' }
        format.json { render :show, status: :created, location: @recordbook }
      else
        format.html { render :new }
        format.json { render json: @recordbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recordbooks/1
  # PATCH/PUT /recordbooks/1.json
  def update
    respond_to do |format|
      if @recordbook.update(recordbook_params)
        format.html { redirect_to @recordbook, notice: 'Recordbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @recordbook }
      else
        format.html { render :edit }
        format.json { render json: @recordbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recordbooks/1
  # DELETE /recordbooks/1.json
  def destroy
    @recordbook.destroy
    respond_to do |format|
      format.html { redirect_to recordbooks_url, notice: 'Recordbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recordbook
      @recordbook = Recordbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recordbook_params
      params.require(:recordbook).permit(:gpatests, :gpaexams, :bursaly)
    end
end
