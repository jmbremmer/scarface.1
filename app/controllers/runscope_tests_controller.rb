class RunscopeTestsController < ApplicationController
  before_action :set_runscope_test, only: [:show, :edit, :update, :destroy]

  # GET /runscope_tests
  # GET /runscope_tests.json
  def index
    @runscope_tests = RunscopeTest.all
  end

  # GET /runscope_tests/1
  # GET /runscope_tests/1.json
  def show
  end

  # GET /runscope_tests/new
  def new
    @runscope_test = RunscopeTest.new
  end

  # GET /runscope_tests/1/edit
  def edit
  end

  # POST /runscope_tests
  # POST /runscope_tests.json
  def create
    @runscope_test = RunscopeTest.new(runscope_test_params)

    respond_to do |format|
      if @runscope_test.save
        format.html { redirect_to @runscope_test, notice: 'Runscope test was successfully created.' }
        format.json { render :show, status: :created, location: @runscope_test }
      else
        format.html { render :new }
        format.json { render json: @runscope_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /runscope_tests/1
  # PATCH/PUT /runscope_tests/1.json
  def update
    respond_to do |format|
      if @runscope_test.update(runscope_test_params)
        format.html { redirect_to @runscope_test, notice: 'Runscope test was successfully updated.' }
        format.json { render :show, status: :ok, location: @runscope_test }
      else
        format.html { render :edit }
        format.json { render json: @runscope_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /runscope_tests/1
  # DELETE /runscope_tests/1.json
  def destroy
    @runscope_test.destroy
    respond_to do |format|
      format.html { redirect_to runscope_tests_url, notice: 'Runscope test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_runscope_test
      @runscope_test = RunscopeTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def runscope_test_params
      params.require(:runscope_test).permit(:name, :url)
    end
end
