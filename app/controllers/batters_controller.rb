class BattersController < ApplicationController

  def show
    @batter = Batter.find(params[:id])


    genre = ['打率','ｗＯＢＡ','ｗＲＡＡ','ＲＣ２７']
    aData = [9,9,7,6]

    @graph = LazyHighCharts::HighChart.new('graph') do |f|
      f.chart(polar: true,type:'line') #グラフの種類
      f.pane(size:'90%')                  #グラフサイズの比
      f.xAxis(categories: genre,tickmarkPlacement:'on')    
      f.yAxis(gridLineInterpolation: 'polygon',lineWidth:0,min:0,max:10) #各項目の最大値やら
      f.series(name:'<%= @batter.name %>',data: aData,pointPlacement:'off')
      f.legend(align: 'right',
          verticalAlign: 'top',
          y: 70,
          layout: 'vertical')
    end
  end

end
