function opponentNoteHit()
    health = getProperty('health')
    if difficulty == 1 then
        if getProperty('health') > 0.023 then
            setProperty('health', health- 0.0115)
        end
    end
    if difficulty == 2 or difficulty == 3 then
        if getProperty('health') > 0.023 then
            setProperty('health', health- 0.023)
        end
    end
end