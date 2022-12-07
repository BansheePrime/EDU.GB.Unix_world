#!/usr/bin/env python3

import datetime
from calendar import monthrange
# import calendar 

# YEAR        = datetime.date.today().year # the current year
# MONTH       = datetime.date.today().month    # the current month
# DATE        = datetime.date.today().day      # the current day
# HOUR        = datetime.datetime.now().hour   # the current hour
# MINUTE      = datetime.datetime.now().minute # the current minute
# SECONDS     = datetime.datetime.now().second #the current second
    
# print(YEAR,MONTH,DATE,HOUR)

now = datetime.datetime.now().replace(microsecond=0).isoformat()
print(str(now)[0:13].replace("T", "").replace("-", ""))

year_list = [2018, 2019, 2020, 2021, 2022, 2023]

month_dict = {
    "January": 31, 
    "February": 2, 
    "March": 31, 
    "April": 30, 
    "May": 31, 
    "June": 30, 
    "July": 31, 
    "August": 31, 
    "September": 30, 
    "October": 31, 
    "November": 30, 
    "December": 31
}

day_list = []

hour_list = []

def feb_days_count(year):
    feb_range = monthrange(year, 2)
    return feb_range

for year in year_list:
    print(feb_days_count(year)[1])

# month_length_feb_2018 = monthrange(year_list[0], int(month_dict.get("February")))
# month_length_feb_2019 = monthrange(year_list[1], int(month_dict.get("February")))
# month_length_feb_2020 = monthrange(year_list[2], int(month_dict.get("February")))
# month_length_feb_2021 = monthrange(year_list[3], int(month_dict.get("February")))
# month_length_feb_2022 = monthrange(year_list[4], int(month_dict.get("February")))
# month_length_feb_2023 = monthrange(year_list[5], int(month_dict.get("February")))
# print(month_length_feb_2018[1], month_length_feb_2019[1], month_length_feb_2020[1], month_length_feb_2021[1], month_length_feb_2022[1], month_length_feb_2023[1])


# def month_length(year_choice, month_num):
#     month_length = monthrange(year_choice, month_num)
#     print(type(month_length))
#     return month_length

# cal = calendar.Calendar()
# for x in cal.itermonthdates(2018, 2):
#     print(x)