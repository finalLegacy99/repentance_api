class Api::TextsController < ApplicationController

  # before_action :authenticate_user, only: [:update]

  def index
    @texts = Text.all.order('id ASC')
    render 'index'
  end

  def update
    @text = Text.find(params[:id])

    @text.input = params[:input]

    if @text.save
      render 'show'
    else
      render json:{errors: @text.errors.full_messages}, status: :unprocessable_entity
    end
    
  end

end
