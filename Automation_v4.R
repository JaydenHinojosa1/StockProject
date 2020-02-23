

library(jsonlite)


#ALL Stocks We will want to buy 
#NASDAQ <- c("ATVI", "ADBE","AMZN", "AAPL", "CSCO", "COST", "EA", "EBAY", "FB", "MSFT", "NVDA", "MELI", "PYPL", "TSLA", "XEL", "AMD")



#This puts you in timeout after buying 2 stocks for every x amount of time in seconds
timeout <- function(x){
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time()-p1
  print("Time expired, you may buy or sell again!")
  
}






#Creates a function that will buy 250 shares in 125 minutes(2 per minute) with a timeout of 60 seconds
buy <- function(i){
  
  for(i in 1:15){
    
    #1AMC
    AMCbuy <- "https://www.projectrex.net/stocks/?key=2551c124&av_key=3OXO48KCOESIZXEB&request=buy&quantity=3&symbol=AMC"
    buyAMC <- fromJSON(AMCbuy)
    print(buyAMC)
    
    AMCsell <- "https://www.projectrex.net/stocks/?key=2551c124&av_key=3OXO48KCOESIZXEB&request=sell&quantity=3&symbol=AMC"
    sellAMC <- fromJSON(AMCsell)
    print(sellAMC)
    timeout(60)
    
    #1AMD
    AMDbuy <- "https://www.projectrex.net/stocks/?key=2551c124&av_key=3OXO48KCOESIZXEB&request=buy&quantity=1&symbol=AMD"
    buyAMD <- fromJSON(AMDbuy)
    print(buyAMD)
    
    AMDsell <- "https://www.projectrex.net/stocks/?key=2551c124&av_key=3OXO48KCOESIZXEB&request=sell&quantity=1&symbol=AMD"
    sellAMD <- fromJSON(AMDsell)
    print(sellAMD)
    timeout(60)
    
    #1EBAY
    EBAYbuy <- "https://www.projectrex.net/stocks/?key=2551c124&av_key=3OXO48KCOESIZXEB&request=buy&quantity=1&symbol=EBAY"
    buyEBAY <- fromJSON(EBAYbuy)
    print(buyEBAY)
    
    EBAYsell <- "https://www.projectrex.net/stocks/?key=2551c124&av_key=3OXO48KCOESIZXEB&request=sell&quantity=1&symbol=EBAY"
    sellEBAY <- fromJSON(EBAYsell)
    print(sellEBAY)
    timeout(60)
    
    #1FAST
    FASTbuy <- "https://www.projectrex.net/stocks/?key=2551c124&av_key=3OXO48KCOESIZXEB&request=buy&quantity=1&symbol=FAST"
    buyFAST <- fromJSON(FASTbuy)
    print(buyFAST)
    
    FASTsell <- "https://www.projectrex.net/stocks/?key=2551c124&av_key=3OXO48KCOESIZXEB&request=sell&quantity=1&symbol=FAST"
    sellFAST <- fromJSON(FASTsell)
    print(sellFAST)
    timeout(60)
    
    #1EXC
    EXCbuy <- "https://www.projectrex.net/stocks/?key=2551c124&av_key=3OXO48KCOESIZXEB&request=buy&quantity=1&symbol=EXC"
    buyEXC <- fromJSON(EXCbuy)
    print(buyEXC)
    
    EXCsell <- "https://www.projectrex.net/stocks/?key=2551c124&av_key=3OXO48KCOESIZXEB&request=sell&quantity=1&symbol=EXC"
    sellEXC <- fromJSON(EXCsell)
    print(sellEXC)
    timeout(60)
    
    #1CSCO
    CSCObuy <- "https://www.projectrex.net/stocks/?key=2551c124&av_key=3OXO48KCOESIZXEB&request=buy&quantity=1&symbol=CSCO"
    buyCSCO <- fromJSON(CSCObuy)
    print(buyCSCO)
    
    CSCOsell <- "https://www.projectrex.net/stocks/?key=2551c124&av_key=3OXO48KCOESIZXEB&request=sell&quantity=1&symbol=CSCO"
    sellCSCO <- fromJSON(CSCOsell)
    print(sellCSCO)
    timeout(60)
    
    #1AAL
    AALbuy <- "https://www.projectrex.net/stocks/?key=2551c124&av_key=3OXO48KCOESIZXEB&request=buy&quantity=1&symbol=AAL"
    buyAAL <- fromJSON(AALbuy)
    print(buyAAL)
    
    AALsell <- "https://www.projectrex.net/stocks/?key=2551c124&av_key=3OXO48KCOESIZXEB&request=sell&quantity=1&symbol=AAL"
    sellAAL <- fromJSON(AALsell)
    print(sellAAL)
    timeout(60)
    
    #1REKR
    REKRbuy <- "https://www.projectrex.net/stocks/?key=2551c124&av_key=3OXO48KCOESIZXEB&request=buy&quantity=1&symbol=REKR"
    buyREKR <- fromJSON(REKRbuy)
    print(buyREKR)
    
    REKRsell <- "https://www.projectrex.net/stocks/?key=2551c124&av_key=3OXO48KCOESIZXEB&request=sell&quantity=1&symbol=REKR"
    sellREKR <- fromJSON(REKRsell)
    print(sellREKR)
    timeout(60)
    
    #TCOM
    TCOMbuy <- "https://www.projectrex.net/stocks/?key=2551c124&av_key=3OXO48KCOESIZXEB&request=buy&quantity=1&symbol=TCOM"
    buyTCOM <- fromJSON(TCOMbuy)
    print(buyTCOM)
    
    TCOMsell <- "https://www.projectrex.net/stocks/?key=2551c124&av_key=3OXO48KCOESIZXEB&request=sell&quantity=1&symbol=TCOM"
    sellTCOM <- fromJSON(TCOMsell)
    print(sellTCOM)
    timeout(60)
    
    
  }
}

buy()






#1) Keep count of how many shares I have buy will be +quantity
#2) Multiple alphavantage keys to look at multiple companies (up to 25 companies)
#3) write to csv by company name as id
#4) if statement 
    #if % > 10% Sell (ex. (6.50 -5.00 = 1.50/5.00 = .30 x 100 = %30)
    #if % < 10% Buy (ex. (5.03 - 5.00 = .03/ 5.00 = .06 x 100 = %6))
    #else next stock repeat for all stocks if 2 happens do timeout and repeat for 125 times for 2 stocks
#5) Keep track of a transaction history using log
