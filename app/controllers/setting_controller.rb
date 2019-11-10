class SettingController < ApplicationController
  before_action :logged_in_user
  def new
    @batter = Batter.new
  end
  def create
    @batter = Batter.new(batter_params)
    if @batter.save
      redirect_to '/new'
    else
      render '/new'
    end
  end
  def logged_in?
    !current_user.nil?
  end
  private
    def batter_params
      params.require(:batter).permit(:name, :league, :avg, :game, :pa, :ab, :hit, :hit_1b, :hit_2b, :hit_3b, :hr, :tb, :rbi, :run, :so, :bb, :ibb, :hbp, :sh, :sf, :sb, :cs, :gdp) 
    end
    def logged_in_user
      unless logged_in?
        flash[:danger] = "ログインしてください。"
        redirect_to "/users/sign_in"
      end
    end
end