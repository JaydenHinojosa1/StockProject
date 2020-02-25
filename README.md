# StockProject

Project : 
Rules:

-All trading must be done from R and completely automated.

-You are limited to 2 calls per minute, maximum 300 API calls per day.

-You must make at least 250 successful trades (buy/sell) per day.

-All trading is to be done between 10am-4pm.

-Failed transactions will result in a $1,000BDD penalty.

-There is a minimum of 250 successful transactions per day. 
	-Any accounts below that threshold will be penalized after the market closes that day. 
	-The penalty will be $100 per missed transaction. 
	-So if you only make 100 successful transactions in a day, you will be penalized $1,500.

-At the close of each day's market, all budgets with a positive amount will be set to $0.00. 
	-Therefore, to participate in the next trading day, you must sell shares before buying.
	


Required to make code work:
-Must have alpha vantage key
-Must have R studio
	-Must have Jsonlite package for R studio
	

About the Files:
-Automation_v4 is a loop which would buy and sell stocks to meet the requirement of reaching 250 transactions
-Manuel_v2 is responsible for investing all of the budget into a list of companies 
	-This will also make sure that before we run automation_v4 we sell a stock to ensure we have a budget which will not cause the loop to overdraw.
-StockProject(Incomplete_Model).Rmd is our incomplete model which would be fully automated and been able to make calls to Alpha Vantage
