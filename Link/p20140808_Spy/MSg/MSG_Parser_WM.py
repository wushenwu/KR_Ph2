import re
fr = open("MSG_WM.txt")
lines = []
for line in fr.readlines():
    lines.append(line)
fr.close()

msg_map = {}
keys = []
values = []
tmp = []
n = 0
for line in lines:
    tmp = re.split('\s+', line.strip())
    if (tmp[1] in msg_map.keys()):
        print tmp[1]
    if (tmp[2] in msg_map.values()):
        print tmp[2]
    msg_map[tmp[1]] = tmp[2]
    keys.append(tmp[1])
    values.append(tmp[2])
    n += 1

fr = open("MSG_WM_MAP.txt", "w+")
i = 0;
for key in msg_map.keys():
    fr.write('MSG(' + key + '), ')
    i += 1
    if ( i % 3 == 0):
        fr.write('\r\n')
fr.close()
