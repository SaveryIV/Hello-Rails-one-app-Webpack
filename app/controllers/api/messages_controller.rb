module Api
  class MessagesController < ApplicationController
    def index
      @message = Message.order("RANDOM()").first

      if @message
        render json: { message: @message.content }, status: :ok
      else
        render json: { message: 'No Greeting found' }, status: :not_found
      end
    end
  end
end
