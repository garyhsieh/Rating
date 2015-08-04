class QuestionSet1sController < ApplicationController
  before_filter :get_participant


  # GET /question_set1s
  # GET /question_set1s.json
  def index
    @question_set1s = QuestionSet1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @question_set1s }
    end
  end

  # GET /question_set1s/1
  # GET /question_set1s/1.json
  def show
    @question_set1 = QuestionSet1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @question_set1 }
    end
  end

  # GET /question_set1s/new
  # GET /question_set1s/new.json
  def new
    @question_set1 = QuestionSet1.new
    @question_set1_old = QuestionSet1.find(:all, :conditions => [ "participant_id = ?", @participant.id])

    if @participant_rating_old != nil
      #redirect
      
    else
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @question_set1 }
      end
    end
  end

  # GET /question_set1s/1/edit
  def edit
    @question_set1 = QuestionSet1.find(params[:id])
  end

  # POST /question_set1s
  # POST /question_set1s.json
  def create
    @question_set1 = QuestionSet1.new(params[:question_set1])

    respond_to do |format|
      if @question_set1.save
        format.html { redirect_to @question_set1, notice: 'Question set1 was successfully created.' }
        format.json { render json: @question_set1, status: :created, location: @question_set1 }
      else
        format.html { render action: "new" }
        format.json { render json: @question_set1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /question_set1s/1
  # PUT /question_set1s/1.json
  def update
    @question_set1 = QuestionSet1.find(params[:id])

    respond_to do |format|
      if @question_set1.update_attributes(params[:question_set1])
        format.html { redirect_to @question_set1, notice: 'Question set1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @question_set1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_set1s/1
  # DELETE /question_set1s/1.json
  def destroy
    @question_set1 = QuestionSet1.find(params[:id])
    @question_set1.destroy

    respond_to do |format|
      format.html { redirect_to question_set1s_url }
      format.json { head :no_content }
    end
  end

  private
                    
    def get_participant
      @participant = Participant.find(:first, :conditions => [ "id = ?", params[:participant_id]])
    end  
end
