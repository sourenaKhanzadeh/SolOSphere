import os
import sys
import pandas as pd
from ast import literal_eval
import pprint as pp


def make_dict_to_csv(dict_to_csv, csv_name):
    df = pd.DataFrame(dict_to_csv)
    df.to_csv(csv_name, index=False)


def make_csv_to_dict(csv_name):
    df = pd.read_csv(csv_name)
    return df.to_dict('list')


def make_txt_to_list_of_dict(txt_name):
    list_of_dict = []
    with open(txt_name, 'r') as f:
        for line in f:
            line = line.strip()
            if line != '':
                # turn line into a dictionary
                line = literal_eval(line)
                # add line to dict_to_csv
                list_of_dict.append(line)
    return list_of_dict


def list_of_dict_to_pandas(list_of_dict):
    df = pd.DataFrame(list_of_dict)
    return df


def make_headers(list_of_dict):
    headers = []
    for dict in list_of_dict:
        for key in dict.keys():
            if key not in headers:
                headers.append(key)
    return headers

FILE = "data/custom.txt"
dict_to_csv = make_txt_to_list_of_dict(FILE)
headers = make_headers(dict_to_csv)
df = list_of_dict_to_pandas(dict_to_csv)

# add headers to dataframe
df = df.reindex(columns=headers)
# show all columns
pd.set_option('display.max_columns', None)

pp.pprint(df.head())

df.to_latex(FILE.replace('.txt', '.tex'), index=False)
