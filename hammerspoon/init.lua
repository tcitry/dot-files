hs.hotkey.bind({"cmd", "ctrl"}, "H", function()
  hs.notify.new({title="Hammerspoon", informativeText="Hello yindongliang!"}):send()
  hs.alert.show("hello alert")
end)

