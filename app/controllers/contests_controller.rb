class ContestsController < ApplicationController
  # GET /contests
  # GET /contests.json
  def index
    @contests = Contest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contests }
    end
  end

  # GET /contests/1
  # GET /contests/1.json
  def show
    @contest = Contest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contest }
    end
  end

  def new
    @contest = Contest.new

    respond_to do |format|
      format.html 
      format.json { render json: @contest }
    end
  end

  def selectplan
    @contest = Contest.new
#   @category = ['logo','namecard','illustration', 'bookcover', 'flyer', 'brush', 'iphone-icon', 'other']
#   @plan = {"basic"=>1,"startup"=>2,"premium"=>3}
#   @open = {"close"=>1,"secret"=>2}
#   @option = {"early-end"=>1,"urgent"=>2}

    respond_to do |format|
      format.html 
      format.json { render json: @contest }
    end
  end

  def inputdetail
    @contest = Contest.new
    @tmp_contest = Contest.new(params[:contest])
    @days = ['2','3','4','5','7','10','13','15']
    if @tmp_contest
      render :action => 'inputdetail'
    else
      render :action => 'selectplan'
    end
  end

  def confirm
    @contest = Contest.new
    @tmp_contest = Contest.new(params[:contest])
#   @category = ['logo','namecard','illustration', 'bookcover', 'flyer', 'brush', 'iphone-icon', 'other']
#   @plan_data = Mock::Plan.plan_read
#   @open={1=>'standard',2=>'close',3=>'secret'}

    respond_to do |format|
      format.html 
      format.json { render json: @contest }
    end
  end

  # GET /contests/1/edit
  def edit
    @contest = Contest.find(params[:id])
  end

  # POST /contests
  # POST /contests.json
  def create
    @contest = Contest.new(params[:contest])

    respond_to do |format|
      if @contest.save
        format.html { redirect_to mock_payment_url, notice: 'Contest was successfully created.' }
#      if @contest.save
#        format.html { redirect_to @contest, notice: 'Contest was successfully created.' }
#        format.json { render json: @contest, status: :created, location: @contest }
      else
        format.html { render action: "new" }
        format.json { render json: @contest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contests/1
  # PUT /contests/1.json
  def update
    @contest = Contest.find(params[:id])

    respond_to do |format|
      if @contest.update_attributes(params[:contest])
        format.html { redirect_to @contest, notice: 'Contest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contests/1
  # DELETE /contests/1.json
  def destroy
    @contest = Contest.find(params[:id])
    @contest.destroy

    respond_to do |format|
      format.html { redirect_to contests_url }
      format.json { head :no_content }
    end
  end
end
