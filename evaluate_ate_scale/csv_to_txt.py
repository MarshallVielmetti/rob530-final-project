# reading csv file and converting it to txt file
text = open("sbs_02_ground_truth.csv", "r")

# joining with space content of text
text = ' '.join([i for i in text])

text = text.replace(",", " ")

# writing content to txt file
with open("sbs_02_ground_truth.txt", "w") as f:
    f.write(text)

# closing the file
f.close()