class PitchersController < ApplicationController
  def show
    @pitcher = Pitcher.find(params[:id])    
    genre = ['防御率','WHIP','FIP']
    aData = [@pitcher.era_g,@pitcher.whip_g,@pitcher.fip_g]
    @graph = LazyHighCharts::HighChart.new('graph') do |f|
      f.chart(polar: true,type:'line') #グラフの種類
      f.pane(size:'90%')                  #グラフサイズの比
      f.xAxis(categories: genre,tickmarkPlacement:'on')    
      f.yAxis(gridLineInterpolation: 'polygon',lineWidth:0,min:0,max:10) #各項目の最大値やら
      f.series(name: @pitcher.name,data: aData,pointPlacement:'on')
      f.legend(align: 'right',
          verticalAlign: 'top',
          y: 70,
          layout: 'vertical')
    end
  end
end
