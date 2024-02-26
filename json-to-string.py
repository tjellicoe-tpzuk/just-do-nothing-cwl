import json
import sys

def main(path):
    f = open(path) 
    data = str(json.load(f))
    data = data.replace("'", '"')
    print(data)
    #with open("commands/command_text.txt", "w+") as f:
    #    f.write(data + "\n")

if __name__ == "__main__":
    path = sys.argv[1]
    main(path)