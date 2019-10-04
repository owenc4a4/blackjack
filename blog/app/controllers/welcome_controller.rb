class WelcomeController < ApplicationController
  def index
  end

  def show
    render json: { status: "ng", message: "サービス範囲外" }
    return
  end
end
