#!/usr/bin/env python3
import datetime
    
# YEAR        = datetime.date.today().year # the current year
# MONTH       = datetime.date.today().month    # the current month
# DATE        = datetime.date.today().day      # the current day
# HOUR        = datetime.datetime.now().hour   # the current hour
# MINUTE      = datetime.datetime.now().minute # the current minute
# SECONDS     = datetime.datetime.now().second #the current second
    
# print(YEAR,MONTH,DATE,HOUR)
now = datetime.datetime.now().replace(microsecond=0).isoformat()
print(str(now)[0:13].replace("T", "").replace("-", ""))