fr = open("WINUSER.H")
lines = []
for line in fr.readlines():
    lines.append(line)
fr.close()

n = 0
line_define = []
for line in lines:
    if line.startswith("#define WM_"):
        n += 1
        line_define.append(line)
print n

m = 0
line_wm = []
for line in lines:
    if line.find("WM_") != -1:
        m += 1
        line_wm.append(line)
print m

i = 0
for line in line_wm:
    if line not in line_define:
        print line
        i += 1
print i

fr = open("MSG_WM.txt", 'w+')
for line in line_define:
    fr.write(line)

fr.close()
        
    
