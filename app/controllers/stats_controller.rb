class StatsController < ApplicationController 
  def central_pitcher
    pitcher = Pitcher.where(league: false)
    @pitchers = pitcher.order('era')
    @rank = 1
  end
  def pacific_pitcher
    pitcher = Pitcher.where(league: true)
    @pitchers = pitcher.order('era')
    @rank = 1
  end
  def central_batter
    batter = Batter.where(league: false)
    @batters = batter.order('avg DESC')
    @rank = 1
  end
  def pacific_batter
    batter = Batter.where(league: true)
    @batters = batter.order('avg DESC')
    @rank = 1
  end
end
