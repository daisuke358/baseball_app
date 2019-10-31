class SettingController < ApplicationController

  def new
    @batter = Batter.new
  end

  def create
    @batter = Batter.new(batter_params)

    if @batter.save
       redirect_to '/new'
    else
      render 'new'
    end
  end

  private

    def batter_params
      params.require(:batter).permit(:name, :league, :avg, :game, :pa, :ab, :hit, :hit_1b, :hit_2b, :hit_3b, :hr, :tb, :rbi, :run, :so, :bb, :ibb, :hbp, :sh, :sf, :sb, :cs, :gdp) 
    end

end