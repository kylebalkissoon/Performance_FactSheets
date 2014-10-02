
#@TODO make S's into an object to be looped over and allow a graphical parameter object to be passed to it.

make_chart_and_stuff = function(R,Rb){
  
  S1 = "chart.RollingRegression(R,Rb,attribute=c('Beta'),mar=c(5, 4, 4, 2),main='Rolling Beta',pin=c(8,8),colorset=5)"
  S2 = "table.Drawdowns(R-Rb,top=5)"
  S3 = "chart.BarVaR(R,pin=c(8,8),main='Value at risk',colorset=3,methods='StdDev')"
  S4 = "chart.RiskReturnScatter(merge.xts(R,Rb),pin=c(8,8))"
  S5 = "chart.Drawdown(R-Rb,main='Relative Drawdown',pin=c(8,8),colorset=2)"
  S6 =  "chart.RelativePerformance(R,Rb,pin=c(8,8))"
  S7 = "chart.Boxplot(merge.xts(R,Rb),pin=c(8,8),names=FALSE)"
  

  
  save(R,file="R.rdata")
  save(Rb,file="Rb.rdata")
  save(S1,file="S1.rdata")
  save(S2,file="S2.rdata")
  save(S3,file="S3.rdata")
  save(S4,file="S4.rdata")
  save(S5,file="S5.rdata")
  save(S6,file="S6.rdata")
  save(S7,file="S7.rdata")
  
  
  
  

  Sweave(file="InvestmentFactsheets.Rnw")
  texi2pdf("InvestmentFactsheets.tex")
}
