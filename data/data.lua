-- para imprimir alguno de los datos de aca, hacer por ejemplo
-- \lua{tex.print(myData.n)}
myData = {}

myData.n = 3  -- numero de paletas
myData.R = 116.1  -- mm
myData.r = 44.1 -- radio del circ. en el que esta circunscipto la paleta
myData.rc = 9 -- relacion de compresion
myData.hc = 44.1 -- altura de camara en mm
myData.hp = 29.4 -- altura de ranura del puerto_en mm
myData.V0 = 500
myData.Ri = math.sqrt(myData.R^2 - myData.r^2)
myData.Re = math.sqrt(myData.R^2 + 3*myData.r^2)

myData.admision = {
    {0.03869, 784.62, 0.34614},
    {0.08194, -467.72, 0.31572},
    {0.03869, -7687.53, 0.28521},
    {0.08194, 2618.62, 0.34332},
    {0.08194, 40.42, 0.25877},
    {0.06295, -7374.88, 0.5952},
    {0.08194, 4953.85, 0.32874},
    {0.02583, -2338.02, 0.16662},
    {0.07176, 691.01, 0.27394},
    {0.02583, -18148.19, 0.14922},
    {0.07176, 1753.1, 0.27575},
    {0.02583, -3689.81, 0.17593},
    {0.07176, 4092.13, 0.30448},
    {0.08194, -87.24, 0.50306},
    {0.01443, -6574.97, 0.12536},
    {0.08194, -573.65, 0.44822},
    {0.01443, 21856.29, 0.14808},
    {0.08194, 519.6, 0.29566},
    {0.01443, -19738.67, 0.13499},
    {0.08194, 1571.95, 0.35645},
    {0.01443, 18077.97, 0.15563},
}

myData.escape = {
    {0.01683, -100331.39, 0.11239},
    {0.10677, 5723.72, 0.2248},
    {0.01683, -263797.72, 0.12654},
    {0.10677, -3296.18, 0.40892},
    {0.01683, -652902.78, 0.09631},
    {0.10677, -9613.29, 0.41325},
    {0.01683, -513568.73, 0.09782},
    {0.10677, -3232.97, 0.41192},
    {0.02696, -116996.12, 0.19007},
    {0.09664, -3643.9, 0.44496},
    {0.02696, -237724.11, 0.16158},
    {0.09664, -6684.11, 0.43957},
    {0.02696, -496509.46, 0.16044},
    {0.09664, -18256.2, 0.45062},
    {0.02696, -237724.11, 0.197},
    {0.09664, -6684.11, 0.43698},
    {0.04723, -49343.47, 0.27448},
    {0.07637, -5712.86, 0.46505},
    {0.04723, -109348.67, 0.24676},
    {0.07637, -17090.38, 0.46308},
    {0.0675, 13.83, 0.35305},
    {0.07176, -134.24, 0.35827},
    {0.08776, -33418.12, 0.5429},
    {0.07575, -11793.31, 0.54544},
    {0.08776, -33418.12, 0.56193},
    {0.07575, -11793.31, 0.54691},
    {0.08776, -33418.12, 0.44552},
    {0.07575, -11793.31, 0.48497},
    {0.08776, -10715.7, 0.57686},
    {0.07575, -5167.81, 0.55106},
    {0.1236, -73.94, 0.43572},
    {0.1236, -208.07, 0.43741},
    {0.1236, -3270.57, 0.41425},
    {0.1236, 18.07, 0.20251},
}

function trunc(num, fl)
  if not fl then fl = 1 end
  return string.format("%." .. fl .. "f", num)
end

function mapaCd(data)
  s = ""
  for i, v in ipairs(data) do
    s = s .. string.format("%.0f & %.5f & %.2f & %.5f \\\\", i, v[1], v[2], v[3])
  end
  return s
end

-- para imprimir las tablas del mapa de cd hacer:
-- \centering
-- \begin{tabular}{rccc}\toprule
--   Item & $L_v[m]$ & $\Delta P[Pa]$ & $C_D$ \\ \midrule
--   \lua{tex.print(mapaCd(myData.escape))}
--   \bottomrule
--   \end{tabular}
-- \caption{Mapa $C_D$ del puerto de Escape}\label{tab:mapaEsc}
