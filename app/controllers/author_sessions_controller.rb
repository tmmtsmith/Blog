class AuthorSessionsController < ApplicationController
  def new
  end

  def create
    if login(params[:username], params[:password])
      redirect_back_or_to(articles_path, message: 'Sign in successful.')
    else
      flash.now.alert = "Sign in failed."
      render action: :new
    end
  end

  def destroy
    logout
    redirect_to(:authors, message: 'Sign out successful!')
  end
end
