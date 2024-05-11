local angleshit = -1 --Original script template by ??? (I forgot i'm sorry). Edited by Mitt0 
function onBeatHit()
	setProperty('iconP1.angle',angleshit*-12)
	setProperty('iconP2.angle',angleshit*-12)
	setProperty('animatedicon.angle',angleshit*-12)
	doTweenAngle('hr', 'iconP1', 0, 1, 'elasticOut')
	doTweenAngle('hrr', 'iconP2', 0, 1, 'elasticOut')
	doTweenAngle('hrrr', 'animatedicon', 0, 1, 'elasticOut')

	--What i edited is down here-- -Mitt0
	if getProperty('health') > 0.4 then
		setProperty('iconP1.angle',angleshit*12)
	    setProperty('iconP2.angle',angleshit*-12)
	end

	if getProperty('health') > 1.6 then
		setProperty('iconP1.angle',angleshit*12)
		setProperty('iconP2.angle',angleshit*12)
	end

end