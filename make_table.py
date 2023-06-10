import os
import sys
import pandas as pd
from matplotlib import pyplot as plt
import seaborn as sns
from ast import literal_eval
import pprint as pp


def make_dict_to_csv(dict_to_csv, csv_name):
    df = pd.DataFrame(dict_to_csv)
    df.to_csv(csv_name, index=False)


def make_csv_to_dict(csv_name):
    df = pd.read_csv(csv_name)
    return df.to_dict('list')


def make_txt_to_df(txt_name):
    # read the data line by line
    with open(txt_name, 'r') as f:
        lines = f.readlines()

    # convert each line to a dictionary
    data_dicts = [literal_eval(line) for line in lines]

    # flatten dictionaries and convert to DataFrame
    df = pd.json_normalize(data_dicts)

    return df


FILE = "data/custom.txt"
df = make_txt_to_df(FILE)
# dict_to_csv = make_txt_to_list_of_dict(FILE)
# headers = make_headers(dict_to_csv)
# df = list_of_dict_to_pandas(dict_to_csv)

print(df.head())

# visualize data
# Bar plot example
plt.figure(figsize=(12,8))
# sns.barplot(x='contract2.name', y='contract2.gas', data=df)
# plt.xticks(rotation=90)  # Rotate x-axis labels for better visibility if they're long
# plt.title('Contract1 Gas usage')
# plt.show()

# Plot contract1 loop24
sns.barplot(x=df['contract1.name'], y=df['loop24.contract1'], color='blue', label="Contract 1 Loop24")

# Plot contract2 loop24
sns.barplot(x=df['contract2.name'], y=df['loop24.contract2'], color='green', label="Contract 2 Loop24")

# Add a legend and informative axis label
plt.legend(ncol=2, loc="upper right", frameon=True)
plt.xlabel('Contracts', fontsize=15)
plt.xticks(rotation=90)
plt.ylabel('Loop24', fontsize=15)
plt.title('Comparison of Loop24 between contracts', fontsize=20)

plt.show()

# # add headers to dataframe
# df = df.reindex(columns=headers)
# # show all columns
# pd.set_option('display.max_columns', None)
#
# pp.pprint(df.head())
#
# df.to_latex(FILE.replace('.txt', '.tex'), index=False)
