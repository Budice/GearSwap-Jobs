-------------------------------------------------------------------------------------------------------------------
-- Initialization function that defines sets and variables to be used.
-------------------------------------------------------------------------------------------------------------------

-- NOTE: This is a work in progress, experimenting.  Expect it to change frequently, and maybe include debug stuff.

-- Last Modified: 12/31/2013 9:46:30 AM

-- IMPORTANT: Make sure to also get the Mote-Include.lua file to go with this.

function get_sets()
	-- Load and initialize the include file.
	include('Mote-Include.lua')
	init_include()
	
	-- Some vars.  Define at the top so that the sets can make use of them.
	DaurdSongs = S{'Water Carol','Water Carol II','Ice Carol','Ice Carol II','Herb Pastoral','Goblin Gavotte'}

	--leftDarkRing = {name="Dark Ring",augments={"Physical Damage Taken -6%", "Magical Damage Taken -3%", "Spell Interruption Rate Down 5%"}}
	--rightDarkRing = {name="Dark Ring",augments={"Physical Damage Taken -5%", "Magical Damage Taken -3%"}}

	--------------------------------------
	-- Start defining the sets
	--------------------------------------
	
	-- Precast Sets
	sets.precast = {}
	
	-- Precast sets to enhance JAs
	sets.precast.JA = {}
	
	sets.precast.JA.Nightingale = {feet="Bard's Slippers +2"}
	sets.precast.JA.Troubadour = {body="Bard's Justaucorps +2"}
	sets.precast.JA['Soul Voice'] = {legs="Bard's Cannions +2"}

	-- Waltz set (chr and vit)
	sets.precast.Waltz = {range="Gjallarhorn",
		head="Nahtirah Hat",
		body="Gendewitha Bliaut",hands="Buremte Gloves",
		back="Refraction Cape",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}
	
	-- Fast cast sets for spells
	
	-- default fast cast
	sets.precast.FC = {head="Nahtirah Hat",ear2="Loquac. Earring",
		hands="Gendewitha Gages",ring1="Prolix Ring",
		back="Swith Cape",waist="Siegel Sash",legs="Orvail Pants",feet="Chelona Boots +1"}
		
	sets.precast.FC.BardSong = {main="Felibre's Dague",range="Gjallarhorn",
		head="Aoidos' Calot +2",neck="Aoidos' Matinee",ear1="Aoidos' Earring",ear2="Loquac. Earring",
		body="Sha'ir Manteel",hands="Gendewitha Gages",ring1="Prolix Ring",
		back="Swith Cape",waist="Aoidos' Belt",legs="Gendewitha Spats",feet="Bokwus Boots"}

	sets.precast.FC.Daurdabla = set_combine(sets.precast.FC.BardSong, {range="Daurdabla"})
		
	sets.precast.FC.Cure = {head="Nahtirah Hat",ear2="Loquac. Earring",
		body="Heka's Kalasiris",hands="Gendewitha Gages",ring1="Prolix Ring",
		back="Pahtli Cape",waist="Siegel Sash",legs="Orvail Pants",feet="Chelona Boots +1"}

       
	-- Magian staves with cast time reduction, by element
	--sets.precast.FC.Thunder = {main='Apamajas I'}
	--sets.precast.FC.Fire = {main='Atar I'}
	
	-- Weaponskill sets
	-- Default set for any weaponskill that isn't any more specifically defined
	sets.precast.WS = {range="Gjallarhorn",
		head="Nahtirah Hat",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
		body="Bard's Justaucorps +2",hands="Buremte Gloves",ring1="Rajas Ring",ring2="K'ayres Ring",
		back="Atheling Mantle",waist="Caudata Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}
	
	-- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
	sets.precast.WS['Evisceration'] = {
		head="Nahtirah Hat",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
		body="Bard's Justaucorps +2",hands="Buremte Gloves",ring1="Rajas Ring",ring2="K'ayres Ring",
		back="Atheling Mantle",waist="Caudata Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}

	sets.precast.WS['Exenterator'] = {
		head="Nahtirah Hat",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
		body="Bard's Justaucorps +2",hands="Buremte Gloves",ring1="Rajas Ring",ring2="K'ayres Ring",
		back="Atheling Mantle",waist="Caudata Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}

	sets.precast.WS['Mordant Rime'] = {range="Gjallarhorn",
		head="Nahtirah Hat",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
		body="Bard's Justaucorps +2",hands="Buremte Gloves",ring1="Rajas Ring",ring2="K'ayres Ring",
		back="Atheling Mantle",waist="Caudata Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}
	
	
	-- Midcast Sets
	sets.midcast = {}

	-- General set for recast times.
	sets.midcast.FastRecast = {range="Angel Lyre",
		head="Nahtirah Hat",ear2="Loquacious Earring",
		body="Goliard Saio",hands="Gendewitha Gages",ring1="Prolix Ring",
		back="Swith Cape",waist="Goading Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}
		
	-- Gear to enhance certain classes of songs.  No instruments added here since Gjallarhorn is being used.
	sets.midcast.Ballad = {legs="Aoidos' Rhing. +2"}
	sets.midcast.Lullaby = {hands="Brioso Cuffs"}
	sets.midcast.Madrigal = {head="Aoidos' Calot +2"}
	sets.midcast.March = {hands="Aoidos' Manchettes +2"}
	sets.midcast.Minuet = {body="Aoidos' Hongreline +2"}
	sets.midcast.Minne = {}
	sets.midcast.Carol = {head="Aoidos' Calot +2",
		body="Aoidos' Hongreline +2",hands="Aoidos' Manchettes +2",
		legs="Aoidos' Rhing. +2",feet="Aoidos' Cothrn. +2"}
	sets.midcast["Sentinel's Scherzo"] = {feet="Aoidos' Cothrn. +2"}
	sets.midcast['Magic Finale'] = {neck="Wind Torque",waist="Corvax Sash",legs="Aoidos' Rhing. +2"}
	

	-- For song buffs (duration and AF3 set bonus)
	sets.midcast.SongEffect = {main="Legato Dagger",range="Gjallarhorn",
		head="Aoidos' Calot +2",neck="Aoidos' Matinee",ear2="Loquacious Earring",
		body="Aoidos' Hongreline +2",hands="Aoidos' Manchettes +2",ring1="Prolix Ring",
		back="Harmony Cape",waist="Corvax Sash",legs="Marduk's Shalwar +1",feet="Brioso Slippers"}

	-- For song defbuffs
	sets.midcast.Debuff = {main="Soothsayer Staff",sub="Quire Grip",range="Gjallarhorn",
		head="Nahtirah Hat",neck="Wind Torque",ear1="Psystorm Earring",ear2="Lifestorm Earring",
		body="Brioso Justaucorps",hands="Aoidos' Manchettes +2",ring1="Prolix Ring",ring2="Mediator's Ring",
		back="Refraction Cape",waist="Goading Belt",legs="Aoidos' Rhing. +2",feet="Bokwus Boots"}

	-- Song-specific recast reduction
	sets.midcast.SongRecast = {ear2="Loquacious Earring",
		ring1="Prolix Ring",
		back="Harmony Cape",waist="Corvax Sash",legs="Aoidos' Rhing. +2"}

	sets.midcast.Daurdabla = set_combine(sets.midcast.FastRecast, sets.midcast.SongRecast, {range="Daurdabla"})

	-- Other general spells and classes.
	sets.midcast.Cure = {main="Arka IV",sub='Achaq Grip',
		head="Gendewitha Caubeen",
		body="Heka's Kalasiris",hands="Bokwus Gloves",ring1="Ephedra Ring",ring2="Sirona's Ring",
		legs="Gendewitha Spats",feet="Gendewitha Galoshes"}
		
	sets.midcast.Stoneskin = {
		head="Nahtirah Hat",
		body="Gendewitha Bliaut",hands="Gendewitha Gages",
		legs="Gendewitha Spats",feet="Gendewitha Galoshes"}
		
	sets.midcast.Cursna = {
		neck="Malison Medallion",
		hands="Hieros Mittens",ring1="Ephedra Ring"}

	
	-- Sets to return to when not performing an action.
	
	-- Resting sets
	sets.resting = {main=gear.Staff.HMP, 
		body="Gendewitha Bliaut",
		legs="Nares Trews",feet="Chelona Boots +1"}
	
	
	-- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)
	sets.idle = {main=staffs.PDT, sub="Quire Grip",range="Oneiros Harp",
		head="Gendewitha Caubeen",neck="Wiglen Gorget",ear1="Bloodgem Earring",ear2="Loquacious Earring",
		body="Gendewitha Bliaut",hands="Gendewitha Gages",ring1=leftDarkRing,ring2=rightDarkRing,
		back="Umbra Cape",waist="Flume Belt",legs="Nares Trews",feet="Aoidos' Cothurnes +2"}

	sets.idle.Town = {main=staffs.PDT, sub="Quire Grip",range="Oneiros Harp",
		head="Gendewitha Caubeen",neck="Wiglen Gorget",ear1="Bloodgem Earring",ear2="Loquacious Earring",
		body="Gendewitha Bliaut",hands="Gendewitha Gages",ring1="Sheltered Ring",ring2="Paguroidea Ring",
		back="Umbra Cape",waist="Flume Belt",legs="Nares Trews",feet="Aoidos' Cothurnes +2"}
	
	sets.idle.Field = {main=staffs.PDT, sub="Quire Grip",range="Oneiros Harp",
		head="Gendewitha Caubeen",neck="Wiglen Gorget",ear1="Bloodgem Earring",ear2="Loquacious Earring",
		body="Gendewitha Bliaut",hands="Gendewitha Gages",ring1="Sheltered Ring",ring2="Paguroidea Ring",
		back="Umbra Cape",waist="Flume Belt",legs="Nares Trews",feet="Aoidos' Cothurnes +2"}
		
	sets.idle.Weak = {main=staffs.PDT,sub="Quire Grip",range="Oneiros Harp",
		head="Gendewitha Caubeen",neck="Twilight Torque",ear1="Bloodgem Earring",
		body="Gendewitha Bliaut",hands="Gendewitha Gages",ring1="Dark Ring",ring2="Meridian Ring",
		back="Umbra Cape",waist="Flume Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}
	
	
	-- Defense sets
	sets.defense = {}

	sets.defense.PDT = {main=staffs.PDT,sub="Quire Grip",
		head="Gendewitha Caubeen",neck="Twilight Torque",
		body="Gendewitha Bliaut",hands="Gendewitha Gages",ring1='Dark Ring',ring2='Dark Ring',
		back="Umbra Cape",waist="Flume Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}

	sets.defense.MDT = {main=staffs.PDT,sub="Quire Grip",
		head="Nahtirah Hat",neck="Twilight Torque",
		body="Gendewitha Bliaut",hands="Gendewitha Gages",ring1='Dark Ring',--[[ring2="Shadow Ring",
		back="Engulfer Cape",]]waist="Flume Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}

	sets.Kiting = {feet="Aoidos' Cothurnes +2"}

	-- Engaged sets

	-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
	-- sets if more refined versions aren't defined.
	-- If you create a set with both offense and defense modes, the offense mode should be first.
	-- EG: sets.engaged.Dagger.Accuracy.Evasion
	
	-- Basic set for if no TP weapon is defined.
	sets.engaged = {range="Angel Lyre",
		head="Nahtirah Hat",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
		body="Brioso Justaucorps",hands="Buremte Gloves",ring1="Rajas Ring",ring2="K'ayres Ring",
		back="Atheling Mantle",waist="Goading Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}

	-- Sets with weapons defined.
	sets.engaged.Dagger = {range="Angel Lyre",
		head="Nahtirah Hat",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
		body="Brioso Justaucorps",hands="Buremte Gloves",ring1="Rajas Ring",ring2="K'ayres Ring",
		back="Atheling Mantle",waist="Goading Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}

	sets.engaged.DWDagger = {range="Angel Lyre",
		head="Nahtirah Hat",neck="Asperity Necklace",ear1="Dudgeon Earring",ear2="Heartseeker Earring",
		body="Brioso Justaucorps",hands="Buremte Gloves",ring1="Rajas Ring",ring2="K'ayres Ring",
		back="Atheling Mantle",waist="Goading Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}


	windower.send_command('bind ^` input /ma "Chocobo Mazurka" <me>')
	windower.send_command('input /macro book 18;wait .1;input /macro set 2')
	gearswap_binds_on_load()


	windower.send_command('bind ^- gs c toggle target')
	windower.send_command('bind ^= gs c cycle targetmode')

	-- For tracking current recast timers.
	timer_reg = {}
end

-- Called when this job file is unloaded (eg: job change)
function file_unload()
	windower.send_command('unbind ^`')
	spellcast_binds_on_unload()	
end


-------------------------------------------------------------------------------------------------------------------
-- Job- versions of event handlers, allowing overriding default handling.
-------------------------------------------------------------------------------------------------------------------

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
-- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
function job_precast(spell, action, spellMap, eventArgs)
	if spell.type == 'BardSong' then
		-- Auto-Pianissimo
		if spell.target.type == 'PLAYER' and not buffactive.pianissimo then
			cast_delay(1.5)
			windower.send_command('@input /raw /ja "Pianissimo" <me>')
		end

		classes.CustomClass = get_song_class(spell)
		
		-- If Nightingale is on, return the optional second return value to indicate
		-- that it should equip midcast gear on precast rather than precast gear.
		if buffactive.nightingale then
			eventArgs.useMidcastGear = true
		end
	end
end


-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_midcast(spell, action, spellMap, eventArgs)
	if spell.action_type == 'Magic' then
		-- Default base equipment layer of fast recast.
		equip(sets.midcast.FastRecast)

		-- If the spells don't get enhanced by skill or whatever, don't bother equipping gear.
		if classes.NoSkillSpells[spell.english] or classes.NoSkillSpells[spellMap] then
			eventArgs.handled = true
		elseif spell.type == 'BardSong' then
			classes.CustomClass = get_song_class(spell)
		end
	end
end

-- Return true if we handled the aftercast work.  Otherwise it will fall back
-- to the general aftercast() code in Mote-Include.
function job_aftercast(spell, action)
	if spell.type == 'BardSong' then
		if spell.target then
			if spell.target.type and spell.target.type:upper() == 'SELF' then
				adjust_Timers(spell, action)
			end
		end
	end
	
	return false
end


-- Called by the 'update' self-command.
function job_update(cmdParams, eventArgs)
	pick_tp_weapon()

	if player.equipment.main == 'Izhiikoh' then
		disable('main','sub')
	else
		enable('main','sub')
	end
end


-------------------------------------------------------------------------------------------------------------------
-- Hooks for other events that aren't handled by the include file.
-------------------------------------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

-- Determine the custom class to use for the given song.
function get_song_class(spell)
	if DaurdSongs[spell.english] then
		return 'Daurdabla'
	elseif spell.target.type == 'MONSTER' then
		return 'Debuff'
	else
		return 'SongEffect'
	end
end


-- Function to create custom buff-remaining timers with the Timers plugin,
-- keeping only the actual valid songs rather than spamming the default
-- buff remaining timers.
function adjust_Timers(spell, action)
	local t = os.time()
	
	-- Eliminate songs that have already expired from our local list.
	local tempreg = {}
	for i,v in pairs(timer_reg) do
		if v < t then tempreg[i] = true end
	end
	for i,v in pairs(tempreg) do
		timer_reg[i] = nil
	end
	
	local dur = calculate_duration(spell.name)
	if timer_reg[spell.name] then
		-- Can delete timers that have less than 120 seconds remaining, since
		-- the new version of the song will overwrite the old one.
		-- Otherwise create a new timer counting down til we can overwrite.
		if (timer_reg[spell.name] - t) <= 120 then
			send_command('timers delete "'..spell.name..'"')
			timer_reg[spell.name] = t + dur
			send_command('timers create "'..spell.name..'" '..dur..' down')
		end
	else
		-- Figure out how many songs we can maintain.
		local maxsongs = 2
		if player.equipment.range == 'Daurdabla' then
			maxsongs = maxsongs+1 -- +2 for 99 Daur
		end
		if buffactive['Clarion Call'] then
			maxsongs = maxsongs+1
		end
		-- If we have more songs active than is currently apparent, we can still overwrite
		-- them while they're active, even if not using appropriate gear bonuses (ie: Daur).
		if maxsongs < table.length(timer_reg) then
			maxsongs = table.length(timer_reg)
		end
		
		-- Create or update new song timers.
		if table.length(timer_reg) < maxsongs then
			timer_reg[spell.name] = t+dur
			send_command('timers create "'..spell.name..'" '..dur..' down')
		else
			local rep,repsong
			for i,v in pairs(timer_reg) do
				if t+dur > v then
					if not rep or rep > v then
						rep = v
						repsong = i
					end
				end
			end
			if repsong then
				timer_reg[repsong] = nil
				send_command('timers delete "'..repsong..'"')
				timer_reg[spell.name] = t+dur
				send_command('timers create "'..spell.name..'" '..dur..' down')
			end
		end
	end
end

-- Function to calculate the duration of a song based on the equipment used to cast it.
-- Called from adjust_Timers(), which is only called on aftercast().
function calculate_duration(spellName)
	local mult = 1
	if player.equipment.range == 'Daurdabla' then mult = mult + 0.25 end -- change to 0.3 with 95/99 Daur
	if player.equipment.range == "Gjallarhorn" then mult = mult + 0.3 end -- change to 0.4 with 99 Gjall
	
	if player.equipment.main == "Carnwenhan" then mult = mult + 0.1 end -- 0.1 for 75, 0.4 for 95, 0.5 for 99/119
	if player.equipment.main == "Legato Dagger" then mult = mult + 0.1 end
	if player.equipment.neck == "Aoidos' Matinee" then mult = mult + 0.1 end
	if player.equipment.body == "Aoidos' Hngrln. +2" then mult = mult + 0.1 end
	if player.equipment.legs == "Mdk. Shalwar +1" then mult = mult + 0.1 end
	if player.equipment.feet == "Brioso Slippers" then mult = mult + 0.1 end
	
	spellMap = classes.spellMappings[spellName]
	if spellMap == 'Paeon' and player.equipment.head == "Brioso Roundlet" then mult = mult + 0.1 end
	if spellMap == 'Paeon' and player.equipment.head == "Brioso Roundlet +1" then mult = mult + 0.1 end
	if spellMap == 'Madrigal' and player.equipment.head == "Aoidos' Calot +2" then mult = mult + 0.1 end
	if spellMap == 'Minuet' and player.equipment.body == "Aoidos' Hngrln. +2" then mult = mult + 0.1 end
	if spellMap == 'March' and player.equipment.hands == 'Ad. Mnchtte. +2' then mult = mult + 0.1 end
	if spellMap == 'Ballad' and player.equipment.legs == "Aoidos' Rhing. +2" then mult = mult + 0.1 end
	if spellName == "Sentinel's Scherzo" and player.equipment.feet == "Aoidos' Cothrn. +2" then mult = mult + 0.1 end
	
	if buffactive.Troubadour then
		mult = mult*2
	end
	if spellName == "Sentinel's Scherzo" then
		if buffactive['Soul Voice'] then
			mult = mult*2
		elseif buffactive['Marcato'] then
			mult = mult*1.5
		end
	end
	
	-- Tweak for inaccuracies in cast vs aftercast timing
	mult = mult - 0.05
	
	local totalDuration = mult*120

	return totalDuration
end


-- Examine equipment to determine what our current TP weapon is.
function pick_tp_weapon()
	if player.equipment.main then
		if string.find(player.equipment.main, 'Staff') then
			TPWeapon = 'Staff'
		elseif player.equipment.sub == empty or string.find(player.equipment.sub, 'Shield') then
			TPWeapon = 'Dagger'
		elseif T{'NIN','DNC'}:contains(player.sub_job) then
			TPWeapon = 'DWDagger'
		else
			TPWeapon = 'Dagger'
		end
	else
		TPWeapon = 'None'
	end
end


