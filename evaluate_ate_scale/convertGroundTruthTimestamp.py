import pandas as pd
import argparse
import pandas as pd

parser = argparse.ArgumentParser()
parser.add_argument('input_file', type=str, help='Path to input file')
parser.add_argument('output_file', type=str, help='Path to output file')
args = parser.parse_args()

input_file = args.input_file
output_file = args.output_file

df = pd.read_csv(input_file, delimiter=' ', header=None)
df = df.iloc[:, [1, -7, -6, -5, -4, -3, -2, -1]]
df.to_csv(output_file, sep=' ', index=False, header=False)

df = pd.read_csv(input_file, delimiter=' ', header=None)
df = df.iloc[:, [1, -7, -6, -5, -4, -3, -2, -1]]
df.to_csv(output_file, sep=' ', index=False, header=False)