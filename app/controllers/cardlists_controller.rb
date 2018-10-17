class CardlistsController < ApplicationController

  before_action :authenticate_user!

  def new
  	@cardlist = Cardlist.new
  end

  def create
  	cardlist = Cardlist.new(cardlist_params)
	cardlist.user_id = current_user.id
  	cardlist.save
  	redirect_to cardlists_path
  end

  def index
  	@cardlists = Cardlist.all
  end

  def show
  	@cardlist = Cardlist.find(params[:id])
  	@cards = Card.where(check: false)
  	# @cards = Card.where(check: false,user_id: current_user.id)
  end

  def edit
  	@cardlist = Cardlist.find(params[:id])
  	@card = Card.new
  end

  def update
  	cardlist = Cardlist.find(params[:id])
  	cardlist.update(cardlist_params)
  	redirect_to edit_cardlist_path(cardlist.id)
  end

  def destroy
  	cardlist = Cardlist.find(params[:id])
  	cardlist.destroy
  	redirect_to cardlists_path
  end

  private
  def cardlist_params
  	params.require(:cardlist).permit(:cardlist_name, :user_id)
  end
end