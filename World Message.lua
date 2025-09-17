--SEND YOUR MESSAGE https://docs.google.com/document/d/11tQN9YEEDTlow3x0Mno8dfnA4tXFam1demtdIGaTbM0/export?format=txt

function onCreate()
  ta = io.popen('curl -s -L "https://docs.google.com/document/d/11tQN9YEEDTlow3x0Mno8dfnA4tXFam1demtdIGaTbM0/export?format=txt"')
  content = ta:read('*a')
  content = content:gsub('\n', ' ')
  ta:close()

  makeLuaText('Fm', content, screenWidth, 0, screenHeight-30)
  setTextHeight('Fm', 25)
  setTextSize('Fm', 25)
  setObjectCamera('Fm', 'camOther')
  addLuaText('Fm')
end

function onCreatePost()
  setProperty('timeTxt.visible', false)
  setProperty('timeBar.visible', false)
  setProperty('timeBarBG.visible', false)
  setProperty('scoreTxt.visible', false)

  close(false)
end --script by marshverso(YT)