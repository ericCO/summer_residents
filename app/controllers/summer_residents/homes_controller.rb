module SummerResidents
  class HomesController < SummerResidentsController
    # GET /homes/new
    # GET /homes/new.json
    def new
      @home = Home.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render :json => @home }
      end
    end
  
    # GET /homes/1/edit
    def edit
      @home = Home.find(params[:id])
    end
  
    # POST /homes
    # POST /homes.json
    def create
      mass_assign Home
  
      respond_to do |format|
        if @home.save
          format.html { redirect_to @home, :notice => 'Home was successfully created.' }
          format.json { render :json => @home, :status => :created, :location => @home }
        else
          format.html { render :action => "new" }
          format.json { render :json => @home.errors, :status => :unprocessable_entity }
        end
      end
    end
  
    # PUT /homes/1
    # PUT /homes/1.json
    def update
      mass_assign Home
  
      respond_to do |format|
        if @home.save
          format.html { redirect_to @home, :notice => 'Home was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render :action => "edit" }
          format.json { render :json => @home.errors, :status => :unprocessable_entity }
        end
      end
    end
  
    # DELETE /homes/1
    # DELETE /homes/1.json
    def destroy
      Home.find(params[:id]).destroy
  
      respond_to do |format|
        format.js { render nothing: true }
      end
    end
  end
end
