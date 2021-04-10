#read template as a whole
f = open('template', mode = 'r')
t0 = f.read()
f.close()

#split
t1 = t0.split('INSERTHERE')

#read index as a whole
f = open('index', mode = 'r')
i0 = f.read()
f.close()

#write index.html
f = open('index.html', mode = 'w')
f.write(t1[0] + i0 + t1[1])
f.close()
