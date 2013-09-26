class ContactController < ApplicationController

	def new
    @message = Message.new
  end

  def create
    @message = Message.new(contact_params)
    
    if @message.valid?
      UserMailer.new_message(@message).deliver
      redirect_to(root_path, :notice => "Message was successfully sent.")
    else
      render :new
    end
  end

  private

    def contact_params
      params.require(:message).permit(:name, :email, :body, :nickname)
    end
end