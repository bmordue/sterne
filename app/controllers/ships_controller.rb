class ShipsController < ApplicationController

  # for nested resource
  before_filter :get_universe

  # GET /ships
  # GET /ships.xml
  def index
    @ships = @universe.ships

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ships }
    end
  end

  # GET /ships/1
  # GET /ships/1.xml
  def show
    @ship = @universe.ships.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ship }
    end
  end

  # GET /ships/new
  # GET /ships/new.xml
  def new
    @ship = @universe.ships.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ship }
    end
  end

  # GET /ships/1/edit
  def edit
    @ship = universe.ships.find(params[:id])
  end

  # POST /ships
  # POST /ships.xml
  def create
    @ship = universe.ships.build(params[:ship])

    respond_to do |format|
      if @ship.save
        format.html { redirect_to([@universe, @ship], :notice => 'Ship was successfully created.') }
        format.xml  { render :xml => @ship, :status => :created, :location => @ship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ships/1
  # PUT /ships/1.xml
  def update
    @ship = @universe.ships.find(params[:id])

    respond_to do |format|
      if @ship.update_attributes(params[:ship])
        format.html { redirect_to([@universe, @ship], :notice => 'Ship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ships/1
  # DELETE /ships/1.xml
  def destroy
    @ship = @universe.ships.find(params[:id])
    @ship.destroy

    respond_to do |format|
      format.html { redirect_to(universe_ships_url) }
      format.xml  { head :ok }
    end
  end

  private
  # for nested resource
  def get_universe
    @universe = Universe.find(params[:universe_id])
  
end
