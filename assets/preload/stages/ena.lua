local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 980;
local yy = 670;
local xx2 = 980;
local yy2 = 670;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    makeLuaSprite('ENA-1', 'ENA-1', 30, 50);
    setScrollFactor('ENA-1', 1, 1);
    addLuaSprite('ENA-1', false)

    makeLuaSprite('ENA-2', 'ENA-2', -120, 70);
    setScrollFactor('ENA-2', 1, 1);
    addLuaSprite('ENA-2', false)

    makeLuaSprite('ENA-3', 'ENA-3', -120, 70);
    setScrollFactor('ENA-3', 1, 1);
    addLuaSprite('ENA-3', false)

    makeLuaSprite('OERLAY-4', 'OERLAY-4', 100, -50);
    setScrollFactor('OERLAY-4', 1, 1);
    scaleObject('OERLAY-4', 2.3, 1.1);
    addLuaSprite('OERLAY-4', true)

    makeLuaSprite('ENA-5', 'ENA-5', 10, 50);
    setScrollFactor('ENA-5', 1, 1);
    addLuaSprite('ENA-5', false)

    setProperty('defaultCamZoom',0.8)
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

function onCreatePost()
    setProperty('camFollowPos.x', getGraphicMidpointX('boyfriend') + 180);
    setProperty('camFollowPos.y', getGraphicMidpointY('boyfriend') - 50);
end

function onUpdate(elapsed)

	daElapsed = elapsed * 30
	i = i + daElapsed

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
     if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.8)
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
      
            setProperty('defaultCamZoom',0.8)
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
