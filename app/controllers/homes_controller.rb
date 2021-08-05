class HomesController < ApplicationController
  def top
    if user_signed_in?
      redirect_to posts_path
    else
    end
  end
end
