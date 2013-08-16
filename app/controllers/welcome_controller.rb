# coding: UTF-8

class WelcomeController < ApplicationController
  
  def index
    year = params[:year]
    month = params[:month]
    unless year.present? and month.present?
      today = Date.today
      year ||= today.year
      month ||= today.month
    end
    
    @display_date = Date.new(year.to_i, month.to_i, 1)
  end

end
