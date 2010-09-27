class PrsController < ApplicationController
  # GET /prs
  # GET /prs.xml
  def index
    @prs = Pr.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @prs }
    end
  end

  # GET /prs/1
  # GET /prs/1.xml
  def show
    @pr = Pr.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pr }
    end
  end

  # GET /prs/new
  # GET /prs/new.xml
  def new
    @pr = Pr.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pr }
    end
  end

  # GET /prs/1/edit
  def edit
    @pr = Pr.find(params[:id])
  end

  # POST /prs
  # POST /prs.xml
  def create
    @pr = Pr.new(params[:pr])

    respond_to do |format|
      if @pr.save
        format.html { redirect_to(@pr, :notice => 'Pr was successfully created.') }
        format.xml  { render :xml => @pr, :status => :created, :location => @pr }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pr.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /prs/1
  # PUT /prs/1.xml
  def update
    @pr = Pr.find(params[:id])

    respond_to do |format|
      if @pr.update_attributes(params[:pr])
        format.html { redirect_to(@pr, :notice => 'Pr was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pr.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /prs/1
  # DELETE /prs/1.xml
  def destroy
    @pr = Pr.find(params[:id])
    @pr.destroy

    respond_to do |format|
      format.html { redirect_to(prs_url) }
      format.xml  { head :ok }
    end
  end
end
