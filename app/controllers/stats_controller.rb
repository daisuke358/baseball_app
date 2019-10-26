class StatsController < ApplicationController
  
  def central_pitcher
  end

  def central_batter
  end

  def pacific_pitcher
  end

  def pacific_batter
  end

  def personal_pitcher_stats
    genre = ['防御率','WHIP','FIP','RSAA']
    aData = [10,10,7,6]

    @graph = LazyHighCharts::HighChart.new('graph') do |f|
      f.chart(polar: true,type:'line') #グラフの種類
      f.pane(size:'90%')                  #グラフサイズの比
      f.xAxis(categories: genre,tickmarkPlacement:'on')    
      f.yAxis(gridLineInterpolation: 'polygon',lineWidth:0,min:0,max:10) #各項目の最大値やら
      f.series(name:'山本由伸（オ）',data: aData,pointPlacement:'on')
      f.legend(align: 'right',
          verticalAlign: 'top',
          y: 70,
          layout: 'vertical')
    end
  end

  def personal_batter_stats
    genre = ['打率','ｗＯＢＡ','ｗＲＡＡ','ＲＣ２７']
    aData = [9,9,7,6]

    @graph = LazyHighCharts::HighChart.new('graph') do |f|
      f.chart(polar: true,type:'line') #グラフの種類
      f.pane(size:'90%')                  #グラフサイズの比
      f.xAxis(categories: genre,tickmarkPlacement:'on')    
      f.yAxis(gridLineInterpolation: 'polygon',lineWidth:0,min:0,max:10) #各項目の最大値やら
      f.series(name:'森 友哉（西）',data: aData,pointPlacement:'on')
      f.legend(align: 'right',
          verticalAlign: 'top',
          y: 70,
          layout: 'vertical')
    end
  end


end
