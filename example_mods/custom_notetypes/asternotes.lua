function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'asternotes' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'asternotes'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true) --Miss has no penalties
				-- setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true); --Idk wtf this does but i hope this work, QUICK UPDATE, THIS DOESNT WORK
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'asternotes' then
		addMisses(1)
		addScore(-700)
		health = getProperty('health')
        healthGain = getProperty('HealthGain')
		if getProperty('health') > 0.2 then
			setProperty('health', 0.2)
		end
		setProperty('healthGain', 0)
		runTimer('healthdisable', 3)
    end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'healthdisable' then
        healthGain = getProperty('HealthGain')
		setProperty('healthGain', 1)
	end
end

