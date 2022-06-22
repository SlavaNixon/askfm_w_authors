class HashtagListsController < ApplicationController
  def show
    @hashtag = HashtagList.find(params[:id])
  end
end
