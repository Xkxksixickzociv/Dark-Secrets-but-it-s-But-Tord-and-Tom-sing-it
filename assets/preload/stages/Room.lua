function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stage clasica/stageback', -500, -300);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('Room', 'Room', -800, -400);
	setLuaSpriteScrollFactor('Room',0.9, 0.9);
	scaleObject('Room', 1.8, 1.7);

	

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeAnimatedLuaSprite('bg animado', 'stage clasica/bg animado',-500, -300);
    setLuaSpriteScrollFactor('bg animado', 0.3, 0.3);		
	scaleObject('bg animado',0.85, 0.85);
	
		makeLuaSprite('stagelight_left', 'stage clasica/stage_light', -125, -100);
		setLuaSpriteScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('silla', 'stage clasica/silla',-200, 500);
		setLuaSpriteScrollFactor('silla', 0.9, 0.9);
		scaleObject('silla', 0.5, 0.5);
		
		makeLuaSprite('stagelight_right', 'stage clasica/stage_light', 1225, -100);
		setLuaSpriteScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setPropertyLuaSprite('stagelight_right', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stage clasica/stagecurtains', -500, -300);
		setLuaSpriteScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('Room', false);
	addLuaSprite('bg animado', false); 
	addAnimationByPrefix('bg animado', 'idle', 'bg animado idle', 3, true);
	addLuaSprite('silla', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

