class AdminController < ApplicationController
  def index
    @total_members = Member.count
    @total_courses = Course.count
  end
end
