var p0, p1;
worldexists = 0
if file_exists("file60")
    worldexists = 1
else if directory_exists("minecraft")
    directory_destroy("minecraft")
heartx = 0
hearty = 0
options[0] = worldexists
options[1] = 2
p0[0] = 60
p0[1] = 100
p1[0] = 60
p1[1] = 120
heartpositions[0] = p0
heartpositions[1] = p1
selected = false
heartx = p0[0]
hearty = p0[1]
option_names[0] = "Create new UTMC World"
option_names[1] = "Load UTMC World"
option_names[2] = "Run UNDERTALE"
warn_alpha = 0
global.insta_write = 0
