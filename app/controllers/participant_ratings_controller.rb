class ParticipantRatingsController < ApplicationController
  before_filter :get_participant

  # GET /participant_ratings
  # GET /participant_ratings.json
  def index
    @participant_ratings = ParticipantRating.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @participant_ratings }
    end
  end

  # GET /participant_ratings/1
  # GET /participant_ratings/1.json
  def show
    @participant_rating = ParticipantRating.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @participant_rating }
    end
  end

  # GET /participant_ratings/new
  # GET /participant_ratings/new.json
  def new
    @participant_rating = ParticipantRating.new

    @participant_rating_old = ParticipantRating.find(:all, :conditions => [ "participant_id = ?", @participant.id], :group => 'video_id')

    if @participant_rating_old != nil and @participant_rating_old.size >= 4
      redirect_to new_participant_question_set1_path(@participant)
    else    

      if @participant_rating_old != nil
        @position = @participant_rating_old.size      
      else
        @position = 0
      end

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @participant_rating }
      end
    end
  end

  # GET /participant_ratings/1/edit
  def edit
    @participant_rating = ParticipantRating.find(params[:id])
  end

  # POST /participant_ratings
  # POST /participant_ratings.json
  def create
    @participant_rating = ParticipantRating.new(params[:participant_rating])
    @participant_rating.participant_id = @participant.id


    respond_to do |format|
      if @participant_rating.save
        format.html { redirect_to(new_participant_question_set1_path(@participant.id))}
        format.json { render json: @participant_rating, status: :created, location: @participant_rating }
      else
        format.html { render action: "new" }
        format.json { render json: @participant_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /participant_ratings/1
  # PUT /participant_ratings/1.json
  def update
    @participant_rating = ParticipantRating.find(params[:id])

    respond_to do |format|
      if @participant_rating.update_attributes(params[:participant_rating])
        format.html { redirect_to @participant_rating, notice: 'Participant rating was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @participant_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participant_ratings/1
  # DELETE /participant_ratings/1.json
  def destroy
    @participant_rating = ParticipantRating.find(params[:id])
    @participant_rating.destroy

    respond_to do |format|
      format.html { redirect_to participant_ratings_url }
      format.json { head :no_content }
    end
  end

  
  private
                    
    def get_participant
      @participant = Participant.find(:first, :conditions => [ "id = ?", params[:participant_id]])
    end

end
