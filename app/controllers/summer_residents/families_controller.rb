module SummerResidents
  class FamiliesController < SummerResidentsController
    # GET /families
    # GET /families.json
    def index
      @families = Family.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @families }
      end
    end
  
    # GET /families/1
    # GET /families/1.json
    def show
      @family = Family.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @family }
      end
    end
  
    # GET /families/new
    # GET /families/new.json
    def new
      @family = Family.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @family }
      end
    end
  
    # POST /families
    # POST /families.json
    def create
      mass_assign Family
      @family.father_id = params[:family][:father_id]
      @family.mother_id = params[:family][:mother_id]

      respond_to do |format|
        if @family.save
          format.html { redirect_to @family, notice: 'Family was successfully created.' }
          format.json { render json: @family, status: :created, location: @family }
        else
          format.html { render action: "new" }
          format.json { render json: @family.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /families/1
    # DELETE /families/1.json
    def destroy
      Family.find(params[:id]).destroy
  
      respond_to do |format|
        format.js { render nothing: true }
      end
    end
  end
end
