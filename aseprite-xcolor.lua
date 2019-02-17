os.execute("./xcolor -f plain > ./color.txt")
local file = io.open("color.txt", "r")
io.input(file)
local color = io.read()
io.close()
local r, g, b = string.match(color, "(.*)%;(.*)%;(.*)")
app.fgColor = Color{ r=r, g=g, b=b }
