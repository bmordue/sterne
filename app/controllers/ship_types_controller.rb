class ShipTypesController < ApplicationController
  # GET /ship_types
  # GET /ship_types.xml
  def index
    @ship_types = ShipType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ship_types }
    end
  end

  # GET /ship_types/1
  # GET /ship_types/1.xml
  def show
    @ship_type = ShipType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ship_type }
    end
  end

  # GET /ship_types/new
  # GET /ship_types/new.xml
  def new
    @ship_type = ShipType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ship_type }
    end
  end

  # GET /ship_types/1/edit
  def edit
    @ship_type = ShipType.find(params[:id])
  end

  # POST /ship_types
  # POST /ship_types.xml
  def create
    @ship_type = ShipType.new(params[:ship_type])

    respond_to do |format|
      if @ship_type.save
        format.html { redirect_to(@ship_type, :notice => 'Ship type was successfully created.') }
        format.xml  { render :xml => @ship_type, :status => :created, :location => @ship_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ship_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ship_types/1
  # PUT /ship_types/1.xml
  def update
    @ship_type = ShipType.find(params[:id])

    respond_to do |format|
      if @ship_type.update_attributes(params[:ship_type])
        format.html { redirect_to(@ship_type, :notice => 'Ship type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ship_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ship_types/1
  # DELETE /ship_types/1.xml
  def destroy
    @ship_type = ShipType.find(params[:id])
    @ship_type.destroy

    respond_to do |format|
      format.html { redirect_to(ship_types_url) }
      format.xml  { head :ok }
    end
  end
end
