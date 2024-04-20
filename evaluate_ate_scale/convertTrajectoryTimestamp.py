import csv
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('first_file', help='input file')
parser.add_argument('second_file', help='output file')
parser.add_argument('offset', help='offset in seconds')
args = parser.parse_args()

input_file = args.first_file
output_file = args.second_file
offset = float(args.offset)

with open(input_file, 'r') as file:
    reader = csv.reader(file, delimiter=' ')
    rows = list(reader)
for row in rows:
    row[0] = '{:.0f}'.format(float(row[0]) * 1e9 + offset*1e9)
with open(output_file, 'w') as file:
    writer = csv.writer(file, delimiter=' ')
    writer.writerows(rows)