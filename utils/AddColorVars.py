import sys
import os

if len(sys.argv) < 2:
    print("No filename given")
    exit()

fn = sys.argv[1]
if not os.path.isfile(fn):
    print(fn + " does not exist")
    exit()

f = open(fn, 'r')
ls = f.readlines()
f.close()

colormap = {
    "00": "BLACK",
    "01": "WHITE",
    "02": "RED",
    "03": "CYAN",
    "04": "PURPLE",
    "05": "GREEN",
    "06": "BLUE",
    "07": "YELLOW",
    "08": "ORANGE",
    "09": "LTORANGE",
    "0A": "PINK",
    "0B": "LTCYAN",
    "0C": "LTPURPLE",
    "0D": "LTGREEN",
    "0E": "LTBLUE",
    "0F": "LTYELLOW",
    }

p = ""
o = open(fn, 'w')
for l in ls:
    if "colorToDraw" not in l:
        o.write(p)
        p = l
        continue
    if "LDA" not in p:
        o.write(p)
        p = l
        continue

    c = p.strip()[-2:]
    if c not in colormap:
        o.write(p)
        p = l
        continue

    cn = colormap[c]
    p = p.rstrip()[:-3] + cn + '\n'
    o.write(p)
    p = l

o.write(p)
