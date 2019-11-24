class StatsController < ApplicationController 
  before_action :rank

  def rank
    @rank = 1
  end

  def central_pitcher 
    @pitchers = Pitcher.where(league: false).order('era')
  end
  def pacific_pitcher
    @pitchers = Pitcher.where(league: true).order('era')
  end
  def central_batter
    @batters = Batter.where(league: false).order('avg DESC')
  end
  def pacific_batter 
    @batters = Batter.where(league: true).order('avg DESC')
  end
end
