class EmpsController < ApplicationController
  before_action :set_emp, only: [:show, :edit, :update, :destroy]

  # GET /emps
  # GET /emps.json
  def index
    @emps = Emp.all
  end

  # GET /emps/1
  # GET /emps/1.json
  def show
  end

  # GET /emps/new
  def new
    @emp = Emp.new
  end

  # GET /emps/1/edit
  def edit
  end

  # POST /emps
  # POST /emps.json
  def create
    @emp = Emp.new(emp_params)

    respond_to do |format|
      if @emp.save
        format.html { redirect_to @emp, notice: 'Emp was successfully created.' }
        format.json { render :show, status: :created, location: @emp }
      else
        format.html { render :new }
        format.json { render json: @emp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emps/1
  # PATCH/PUT /emps/1.json
  def update
    respond_to do |format|
      if @emp.update(emp_params)
        format.html { redirect_to @emp, notice: 'Emp was successfully updated.' }
        format.json { render :show, status: :ok, location: @emp }
      else
        format.html { render :edit }
        format.json { render json: @emp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emps/1
  # DELETE /emps/1.json
  def destroy
    @emp.destroy
    respond_to do |format|
      format.html { redirect_to emps_url, notice: 'Emp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emp
      @emp = Emp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emp_params
      params.require(:emp).permit(:name, :age, :gender, :designation)
    end
end
