class StaticPagesController < ApplicationController
  def home
    @rank1 = 1
    @rank2 = 1
    @rank3 = 1
    @rank4 = 1
    @pitchers_c = Pitcher.where(league: false).order('era').first(5)
    @pitchers_p = Pitcher.where(league: true).order('era').first(5)
    @batters_c = Batter.where(league: false).order('avg DESC').first(5)
    @batters_p = Batter.where(league: true).order('avg DESC').first(5)
  end
  def glossary
  end
end
