class MessagesController < ApplicationController
  before_action :set_message, only: %i[show edit update destroy]

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    Message.create(message_params)
  end

  def show
  end

  def edit
  end

  def update
    @message.update!(message_params)
    redirect_to @message
  end

  def destroy
    @message.destroy!
  end

  private
    def message_params
      params.require(:message).permit(:title, :content)
    end

    def set_message
      @message = Message.find(params[:id])
    end

end
