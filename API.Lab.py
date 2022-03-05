
# Avneet Chhabra, akc7yr

#BUq2jeYRRXaMTjkbWlRTjVqqFmIqt8S2Huuht4P8

import sys
import requests
#sys.argv is for user input
#join stock_names is when you get input from terminal

arguments = sys.argv
stock_names = arguments[1:]
query = {"symbols": ','.join(stock_names)}
url = "https://yfapi.net/v6/finance/quote"

querystring = {"symbols":"AAPL,BTC-USD,EURUSD=X"}

headers = {
    'x-api-key': "BUq2jeYRRXaMTjkbWlRTjVqqFmIqt8S2Huuht4P8"
    }

response = requests.request("GET", url, headers=headers, params=querystring)
stock_jsn = response.json()

if stock_jsn['quoteResponse']['result']==[]:
    print("This stock is not available")
else:
    for item in range(len(stock_jsn['quoteResponse']['result'])):
        print(stock_jsn['quoteResponse']['result'][item]['longName'], ' ',
              stock_jsn['quoteResponse']['result'][item]['regularMarketPrice'])

