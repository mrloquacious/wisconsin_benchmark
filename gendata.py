#!/usr/bin/python
import random
import csv
import pandas as pd
import argparse
from datetime import date

ATTR = ["unique1","unique2","two","four","ten","twenty","onePercent",
        "tenPercent","twentyPercent","fiftyPercent","unique3",
        "evenOnePercent","oddOnePercent","stringu1","stringu2","string4"]
MODBY = [2,4,10,20,100,10,5,2]
STRING4 = ["AAAA","HHHH","OOOO","VVVV"]

ap = argparse.ArgumentParser()
ap.add_argument(
    "-n", "--number",
    help="Number of records to generate.",
    type=int,
    default=10000,
)
args = ap.parse_args()

# For unique1 and unique3 sets:
def gen_unique1(num):
    x = random.sample(range(0, num), num)
    return x
    
# For unique2 set:
def gen_unique2(num):
    x = []
    for i in range(0, num):
        x.append(i)
    return x

# For two,four,ten,twenty,onePercent,tenPercent,twentyPercent,fiftyPercent:
def gen_mod(unique, modby):
    x = []
    for val in unique:
        x.append(val % modby)
    return x

# For evenOnePercent,oddOnePercent sets:
def gen_one_perc(one_percent, even):
    x = []
    temp = 0
    for val in one_percent:
        temp = val * 2    
        if even == False:
            temp += 1
        x.append(temp)
    return x

# To generate an individual string for stringu1 and stringu2 sets:
def gen_string(unique):
    result = ["A"] * 7
    rem  = 0
    i = 6;

    while unique > 0 and i > -1:
        rem = unique % 26
        result[i] = chr(ord("A") + rem)
        unique = unique // 26
        i -= 1
    string  = ''.join(result) + ("x" * 45)
    return string

# To generate stringu1 and stringu2 sets:
def gen_stringu(unique):
    x = []
    for val in unique:
        x.append(gen_string(val))
    return x

# To generate string4 set:
def gen_string4(num):
    x = []
    for i in range(0, num):
        x.append(STRING4[i % 4] + ("x" * 48))
    return x

# To generate our entire data set:
def generate_data(num):
    data = []
    data.append(gen_unique1(num))
    data.append(gen_unique2(num))
    i = 0
    for a in ATTR[2:10]:
        data.append(gen_mod(data[0], MODBY[i]))
        i += 1
    data.append(data[0])
    data.append(gen_one_perc(data[6], True))
    data.append(gen_one_perc(data[6], False))
    data.append(gen_stringu(data[0]))
    data.append(gen_stringu(data[1]))
    data.append(gen_string4(num))
    return data

# Use to combine all attributes into a 2d list:
def create_csv(data, number):
    df = pd.DataFrame(data, index=None)
    df = df.transpose()
    today = date.today()
    the_date = today.strftime("%Y_%m_%d")
    filename = "wb_data_" + str(number) + "_" + the_date + ".csv" 
    df.to_csv(filename, index=None, header=False)


def main():
    data = generate_data(args.number)
    create_csv(data, args.number)

if __name__ == "__main__":
    main()

