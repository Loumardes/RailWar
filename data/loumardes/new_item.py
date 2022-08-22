import os

item = str(input("which item do you need to be illimited ?\n : "))

path = "advancements/"+item+".json"
file = os.open(path, os.O_WRONLY|os.O_CREAT)

os.write(file, "Bonjour monde")
os.close(file)
