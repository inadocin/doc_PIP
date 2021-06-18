-- Locals
local cmd = vim.cmd

-- Helper function
local function apply_ab(a, b)
    cmd('ab ' .. a .. ' ' .. b)
end


-- Editor setings

-- Abbreviations
Abbreviations = {
    {'titulo', 'Diseño de los sistemas de intercambio de gases del Motor Rotativo de Combustión a Volumen Constante'},
    {'yo', 'Barrios, Nicolás Daniel'},
    {'mrcvc', 'Motor Rotativo de Combustión a Volumen Constante'},
    {'unco', 'Universidad Nacional del Comahue'},
    {'fing', 'Facultad de Ingeniería'},
}

for _, v in ipairs(Abbreviations) do
    apply_ab(v[1], v[2])
end
