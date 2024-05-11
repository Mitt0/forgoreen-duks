function onCreate()
    makeLuaSprite('bg', 'blackbg', 0, 200)
    makeLuaSprite('exnote', 'noteaster', 300, 350)
    makeLuaText('HIT', 'HIT THOSE GLITCHY NOTES, I DARE YOU!!', 700, 300, 200)
    addLuaSprite('bg', false)
    addLuaSprite('exnote', false)
    setObjectCamera('bg', 'hud')
    setObjectCamera('exnote', 'hud')
    addLuaText('HIT')
    setTextSize('HIT', 50)
    runTimer('zahando', 5)
end

function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'zahando' then
        removeLuaText('HIT', true)
        removeLuaSprite('bg', true)
        removeLuaSprite('exnote', true)
    end
end