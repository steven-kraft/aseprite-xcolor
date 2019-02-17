local str = debug.getinfo(2, "S").source:sub(2)
local script_path = str:match("(.*/)")

os.execute(script_path .. "xcolor" ..  " -f plain > " .. script_path .. "color.txt")
local file = io.open(path .. "color.txt", "r")
io.input(file)
local color = io.read()
io.close()
local r, g, b = string.match(color, "(.*)%;(.*)%;(.*)")
app.fgColor = Color{ r=r, g=g, b=b }
