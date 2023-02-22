myData = {}

myData.n = 3  -- numero de paletas
myData.R = 116.1  -- mm
myData.r = 44.1 -- radio del circ. en el que esta circunscipto la paleta
myData.rc = 9 -- relacion de compresion
myData.hc = 44.1 -- altura de camara
myData.hp = 29.4 -- altura de ranura del puerto_
myData.V0 = 500
myData.Ri = math.sqrt(myData.R^2 - myData.r^2)
myData.Re = math.sqrt(myData.R^2 + 3*myData.r^2)

function trunc(num, fl)
  if not fl then fl = 1 end
  return string.format("%." .. fl .. "f", num)
end
