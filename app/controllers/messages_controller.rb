class MessagesController < ApplicationController
  #this method creates new message array
  def new
    @message = Message.new
  end

def create
    @message = Message.new(message_params)
    #set current user to be the creator of message 
    @message.user = current_user
    if @message.save
      flash[:success] = "Message was created succesfully!"
      redirect_to message_path(@message)
    else
      render 'new'
    end
  end

  def message_params
    params.require(:message).permit(:body)
  end
end
