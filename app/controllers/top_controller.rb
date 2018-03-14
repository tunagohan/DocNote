class TopController < ApplicationController

  def index
    if !current_user&.id.nil?
      redirect_to articles_url
    end
  end
end
