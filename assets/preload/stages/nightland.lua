
local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = -650;
local yy = 570;
local xx2 = -150;
local yy2 = 925;
local ofs = 35;
local followchars = true;
local stopMoving = false;
local del = 0;
local del2 = 0;
function onCreate()
    makeLuaSprite('BG1(1)', 'BG1(1)', -1150, -750)
    setScrollFactor('BG1(1)', 0.2, 0.2)
    addLuaSprite('BG1(1)', false)
    scaleObject('BG1(1)', 1.6,1.6)

    makeLuaSprite('BAC2', 'BAC2', -1150, -850)
    setScrollFactor('BAC2', 0.3, 0.3)
    addLuaSprite('BAC2', false)
    scaleObject('BAC2', 1.6,1.6)

    makeLuaSprite('ROC3', 'ROC3', -1150, -750)
    setScrollFactor('ROC3', 0.3, 0.3)
    addLuaSprite('ROC3', false)
    scaleObject('ROC3', 1.6,1.6)

    makeLuaSprite('TREE4', 'TREE4', -1900, -1150)
    setScrollFactor('TREE4', 1, 1)
    addLuaSprite('TREE4', false)
    scaleObject('TREE4', 1.6,1.6)

    makeLuaSprite('GROUMD5', 'GROUMD5', -1900, -1150)
    setScrollFactor('GROUMD5', 1, 1)
    addLuaSprite('GROUMD5', false)
    scaleObject('GROUMD5', 1.6,1.6)

    makeLuaSprite('BLURROC6', 'BLURROC6', -1900, -1150)
    setScrollFactor('BLURROC6', 1, 1)
    addLuaSprite('BLURROC6', false)
    scaleObject('BLURROC6', 1.6,1.6)

    setProperty('defaultCamZoom',0.5)
    makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1280,100,'000000')
    addLuaSprite('bartop',true)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1280,100,'000000')
    addLuaSprite('barbot',true)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')
end

function onUpdate(elapsed)

	daElapsed = elapsed * 30
	i = i + daElapsed
	
	if stopMoving == false then
		setProperty('dad.y', (math.sin(i/20)*75) - 600)
		yy = (math.sin(i/20)*75) - 200
	
		setProperty('boyfriend.y', (math.sin(i/11)*30) - 350)
		yy2 = (math.sin(i/11)*30) - 100
	end

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
     if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.5)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
      
            setProperty('defaultCamZoom',0.55)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

function onGameOver()
	stopMoving = true;
end
