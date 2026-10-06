local presets = data.raw["map-gen-presets"]["default"]

local autoplace = {}
for name, control in pairs(data.raw["autoplace-control"]) do
  if control.category == "resource" then
    autoplace[name] = { frequency = 6, size = 6, richness = 6 }
  end
end

presets["600-percent"] =
  {
    order = "i",
    basic_settings =
    {
      autoplace_controls = autoplace,
      peaceful_mode = true,
      starting_area = "good"
    }
  }


presets["600-percent-v2"] =
  {
    order = "j",
    basic_settings = 
    {
      autoplace_controls = autoplace,
      peaceful_mode = false,
      starting_area = "good"
    }
  }