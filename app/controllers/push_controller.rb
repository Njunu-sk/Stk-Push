class PushController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @payments = Payment.all
  end

  def payment

  end

end
