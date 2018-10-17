class CardsController < ApplicationController

  def new
  	@card = Card.new
  end

  def create
  	card = Card.new(card_params)
  	cardlist = Cardlist.find(params[:cardlist_id])
  	card.cardlist_id = cardlist.id
  	card.save
  	redirect_to edit_cardlist_path(cardlist.id)
  end

  def index
  end

  def show
  end

  def edit
  	@card = Card.find(params[:id])
  	@cardlist = Cardlist.find(params[:id])
  end

  def update
  	card = Card.find(params[:id])
  	card.update(card_params)
  	cardlist = Cardlist.find(params[:cardlist_id])
  	redirect_to edit_cardlist_path(cardlist.id)
  end

  def update2
  	cardlist = Cardlist.find(params[:cardlist_id])
  	card = Card.find(params[:id])
  	if card.check == false
	   card.update(check: true)
  	else
	   card.update(check: false)
  	end
  	redirect_to edit_cardlist_path(cardlist.id)
  end

  def destroy
  	card = Card.find(params[:id])
  	card.destroy
  	cardlist = Cardlist.find(params[:cardlist_id])
  	redirect_to edit_cardlist_path(cardlist.id)
  end

  private
  def card_params
  	params.require(:card).permit(:card_name, :no, :front, :back, :check, :cardlist_id)
  end
end
