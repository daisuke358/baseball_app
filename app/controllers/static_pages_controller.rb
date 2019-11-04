class StaticPagesController < ApplicationController
  def home
    @rank1 = 1
    @rank2 = 1
    @rank3 = 1
    @rank4 = 1

    p1 = Pitcher.where(league: false)
    @pitchers_c = p1.order('era')
    p2 = Pitcher.where(league: true)
    @pitchers_p = p2.order('era')
    
    b1 = Batter.where(league: false)
    @batters_c = b1.order('avg DESC')
    b2 = Batter.where(league: true)
    @batters_p = b2.order('avg DESC')
  end

  def glossary
  end
end
