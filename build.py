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

#read architecture and write architecture.html
f = open('architecture', mode = 'r')
i0 = f.read()
f.close()
f = open('architecture.html', mode = 'w')
f.write(t1[0] + i0 + t1[1])
f.close()

#read ongoing_projects and write ongoing_projects.html
f = open('ongoing_projects', mode = 'r')
i0 = f.read()
f.close()
f = open('ongoing_projects.html', mode = 'w')
f.write(t1[0] + i0 + t1[1])
f.close()

#read open_projects and write open_projects.html
f = open('open_projects', mode = 'r')
i0 = f.read()
f.close()
f = open('open_projects.html', mode = 'w')
f.write(t1[0] + i0 + t1[1])
f.close()
