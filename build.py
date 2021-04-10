#read template
f = open('template', mode = 'r')
t0 = f.read()
f.close()

#split
t1 = t0.split('INSERTHERE')

#read index and write index.html
f = open('index', mode = 'r')
i0 = f.read()
f.close()
f = open('index.html', mode = 'w')
f.write(t1[0] + i0 + t1[1])
f.close()

#read structure and write structure.html
f = open('structure', mode = 'r')
i0 = f.read()
f.close()
f = open('structure.html', mode = 'w')
f.write(t1[0] + i0 + t1[1])
f.close()

#read ongoing and write ongoing.html
f = open('ongoing_projects', mode = 'r')
i0 = f.read()
f.close()
f = open('ongoing_projects.html', mode = 'w')
f.write(t1[0] + i0 + t1[1])
f.close()
