class PlaceholderController < ApplicationController
  before_filter :set_current_step, only: [:step1, :step2, :step3]
  before_filter :set_current_user, only: [:step1, :step2, :step3]

  def step1
    respond_to do |format|
      format.html { render 'index' }
    end
  end

  def step2
    respond_to do |format|
      format.html { render 'index' }
    end
  end

  def step3
    respond_to do |format|
      format.html { render 'index' }
    end
  end

  def privacy
    respond_to do |format|
      format.html
    end
  end

  def tos
    respond_to do |format|
      format.html
    end
  end

  private

  def set_current_step
    @current_step ||= 1
    @current_step = 2 if session[:email]
    # @current_step = 3 if SESSION[:...] # TODO
  end

  def set_current_user
    @user = current_user
  end
end
