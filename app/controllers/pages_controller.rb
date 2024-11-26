class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ home about membership ]
  def home
  end

  def about
  end

  def membership
  end
end
