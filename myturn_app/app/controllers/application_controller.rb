class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "Seja bem-vindo!"
  end
  class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  end
end