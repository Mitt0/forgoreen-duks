function goodNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0 then
       setProperty('health', health+ 0.00575)
    end
end