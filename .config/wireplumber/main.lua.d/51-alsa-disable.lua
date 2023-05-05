--
-- ~/.config/wireplumber/main.lua.d/51-alsa-disable.lua
--

rule = {
  matches = {
    {
      { "device.name", "equals", "alsa_card.pci-0000_00_1b.0" },
    },
  },

  apply_properties = {
    ["device.disabled"] = true,
  },
}

table.insert(alsa_monitor.rules, rule)
