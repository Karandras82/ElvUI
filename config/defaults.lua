﻿local E, L, DF = unpack(select(2, ...)); --Engine
local _, myclasscolor = UnitClass("player");
local valuer, valueg, valueb = RAID_CLASS_COLORS[myclasscolor].r, RAID_CLASS_COLORS[myclasscolor].g, RAID_CLASS_COLORS[myclasscolor].b

--Global defaults
E.DF["global"] = {};

--Core
DF["core"] = {
	["uiscale"] = 0.71,
	["autoscale"] = true,
	["stickyFrames"] = true,
	['loginmessage'] = false,
	["interruptAnnounce"] = "RAID",
	["autoRepair"] = "GUILD",
	
	-- fonts
	["fontsize"] = 11,
	["font"] = "Friz Quadrata TT",
	["dmgfont"] = "ElvUI Combat",
	["chatfont"] = "Chat",
		
	-- textures
	["normTex"] = "Minimalist",
	["glossTex"] = "Minimalist",
	
	--colors
	["bordercolor"] = { r = .20,g = .20,b = .20 },
	["backdropcolor"] = { r = .16,g = .16,b = .16 },
	["backdropfadecolor"] = { r = .10,g = .10,b = .10, a = 0.9 },
	["valuecolor"] = {r = valuer,g = valueg,b = valueb},
	
	--panels
	['panelWidth'] = 380,
	['panelHeight'] = 200,
	['panelBackdropNameLeft'] = '',
	['panelBackdropNameRight'] = '',
	['panelBackdrop'] = 'SHOWBOTH',
	['expRepPos'] = 'MINIMAP_BOTTOM',				-- TOP_SCREEN or MINIMAP_BOTTOM

	--misc
	['bags'] = false,
	['loot'] = false,
	['lootRoll'] = false,
	['mapTransparency'] = 0.5,
};

--NamePlate
DF["nameplate"] = {
	["enable"] = false,
	["markBGHealers"] = true,
	["width"] = 113,
	["height"] = 8,
	["cbheight"] = 5,
	["showlevel"] = true,
	["enhancethreat"] = true,
	["combat"] = false,
	["showhealth"] = true,
	["trackauras"] = true,
	["trackfilter"] = 'CCDebuffs',
	['goodscale'] = 1,
	['badscale'] = 1,
	["goodcolor"] = {r = 75/255,  g = 175/255, b = 76/255},
	["badcolor"] = {r = 0.78, g = 0.25, b = 0.25},
	["goodtransitioncolor"] = {r = 218/255, g = 197/255, b = 92/255},
	["badtransitioncolor"] = {r = 240/255, g = 154/255, b = 17/255}, 	
	["friendlynpc"] = {r = 0.31, g = 0.45, b = 0.63},
	["friendlyplayer"] = {r = 75/255,  g = 175/255, b = 76/255},
	["neutral"] = { r = 218/255, g = 197/255, b = 92/255 },
	["enemy"] = { r = 0.78, g = 0.25, b = 0.25 },	
};

--Auras
DF['auras'] = {
	['enable'] = true,
	['perRow'] = 16,
}

--Chat
DF['chat'] = {
	['enable'] = true,
	['url'] = true,
	['shortChannels'] = false,
	['whisperwarning'] = true,
	['whispersound'] = 'ElvUI Whisper',
}

--ClassTimers
DF['classtimer'] = {
	['enable'] = false,
	['player'] = {
		['enable'] = true,
		['anchor'] = 'PLAYERDEBUFFS',
		["buffcolor"] = DF.core.bordercolor,
		["debuffcolor"] = {r = 0.78, g = 0.25, b = 0.25},		
	},
	['target'] = {
		['enable'] = true,
		['anchor'] = 'TARGETDEBUFFS',
		["buffcolor"] = DF.core.bordercolor,
		["debuffcolor"] = {r = 0.78, g = 0.25, b = 0.25},			
	},	
	['trinket'] = {
		['enable'] = true,
		['anchor'] = 'PLAYERANCHOR',
		["color"] = {r = 0.84, g = 0.75, b = 0.65},			
	},
}

--Skins
DF['skins'] = {
	["embedright"] = "Skada",
	['bigwigs'] = {
		['enable'] = true,
		['spacing'] = 7,
	},
	['ace3'] = {
		['enable'] = true,
	},
	['recount'] = {
		['enable'] = true,
	},	
	['dbm'] = {
		['enable'] = true,
	},		
	['dxe'] = {
		['enable'] = true,
	},	
	['omen'] = {
		['enable'] = true,
	},
	['skada'] = {
		['enable'] = true,
	},		
	['blizzard'] = {
		['enable'] = true,
		["bags"] = true,
		["reforge"] = true,
		["calendar"] = true,
		["achievement"] = true,
		["lfguild"] = true,
		["inspect"] = true,
		["binding"] = true,
		["gbank"] = true,
		["archaeology"] = true,
		["guildcontrol"] = true,
		["guild"] = true,
		["tradeskill"] = true,
		["raid"] = true,
		["talent"] = true,
		["glyph"] = true,
		["auctionhouse"] = true,
		["barber"] = true,
		["macro"] = true,
		["debug"] = true,
		["trainer"] = true,
		["socket"] = true,
		["achievement_popup"] = true,
		["bgscore"] = true,
		["merchant"] = true,
		["mail"] = true,
		["help"] = true,
		["trade"] = true,
		["gossip"] = true,
		["greeting"] = true,
		["worldmap"] = true,
		["taxi"] = true,
		["lfd"] = true,
		["quest"] = true,
		["petition"] = true,
		["dressingroom"] = true,
		["pvp"] = true,
		["nonraid"] = true,
		["friends"] = true,
		["spellbook"] = true,
		["character"] = true,
		["misc"] = true,
		["lfr"] = true,
		["tabard"] = true,
		["guildregistrar"] = true,
		["timemanager"] = true,
		["encounterjournal"] = true,
		["voidstorage"] = true,
		["transmogrify"] = true,
	},
}

--Datatexts
DF['datatexts'] = {
	['panels'] = {
		['spec1'] = {
			['LeftChatDataPanel'] = {
				['left'] = 'Spell/Heal Power',
				['middle'] = 'Haste',
				['right'] = 'Mastery',
			},
			['RightChatDataPanel'] = {
				['left'] = 'DPS',
				['middle'] = 'Durability',	
				['right'] = 'Gold',
			},
			['LeftMiniPanel'] = 'Time',
			['RightMiniPanel'] = 'System',
		},
		['spec2'] = {
			['LeftChatDataPanel'] = {
				['left'] = 'Spell/Heal Power',
				['middle'] = 'Crit Chance',
				['right'] = 'Mastery',
			},
			['RightChatDataPanel'] = {
				['left'] = 'HPS',
				['middle'] = 'Durability',	
				['right'] = 'Gold',
			},
			['LeftMiniPanel'] = 'Time',
			['RightMiniPanel'] = 'System',	
		},
	},
	['localtime'] = true,
	['time24'] = true,
	['specswap'] = true,
}

--Tooltip
DF['tooltip'] = {
	['enable'] = true,
	['anchor'] = 'SMART',
	['ufhide'] = false,
	['whostarget'] = true,
	['combathide'] = false,
}

--UnitFrame
DF['unitframe'] = {
	['enable'] = true,
	['smoothbars'] = true,
	['statusbar'] = "Minimalist",
	['font'] = 'Old Sans Black',
	['fontsize'] = 12,
	['fontoutline'] = 'OUTLINE',
	['aurafilters'] = {},
	['buffwatch'] = {},
	['mainSpec'] = 'Primary',
	['offSpec'] = 'Primary',
	['disableBlizzard'] = true, --Require ReloadUI
	['OORAlpha'] = 0.55,
	['debuffHighlighting'] = false,
	["smartRaidFilter"] = true,

	['colors'] = {
		['healthclass'] = false,
		['powerclass'] = true,
		['colorhealthbyvalue'] = false,
		['customhealthbackdrop'] = true,
		['classbackdrop'] = false,
	
		['health'] = { r = 65/255,g = 65/255,b = 65/255 },
		['health_backdrop'] = { r = 97/255,g = 97/255,b = 97/255 },
		['tapped'] = { r = 0.55, g = 0.57, b = 0.61},
		['disconnected'] = { r = 0, g = 0, b = 0},
		['power'] = {
			["MANA"] = {r = 0.31, g = 0.45, b = 0.63},
			["RAGE"] = {r = 0.78, g = 0.25, b = 0.25},
			["FOCUS"] = {r = 0.71, g = 0.43, b = 0.27},
			["ENERGY"] = {r = 0.65, g = 0.63, b = 0.35},
			["RUNIC_POWER"] = {r = 0, g = 0.82, b = 1},
		},
		['reaction'] = {
			['BAD'] = { r = 0.78, g = 0.25, b = 0.25 },
			['NEUTRAL'] = { r = 218/255, g = 197/255, b = 92/255 },
			['GOOD'] = { r = 75/255, g = 175/255, b = 76/255 },
		},
	},

	['layouts'] = {
		['Primary'] = {
			['player'] = {
				['enable'] = true,
				['width'] = 260,
				['height'] = 55,
				['lowmana'] = 30,
				['combatfade'] = false,
				['healPrediction'] = true,
				['health'] = {
					['text'] = true,
					['text_format'] = 'current-percent',
					['position'] = 'TOPRIGHT',
				},
				['power'] = {
					['enable'] = true,
					['text'] = true,
					['text_format'] = 'current',	
					['width'] = 'fill',
					['height'] = 15,
					['offset'] = 0,
					['position'] = 'BOTTOMRIGHT',
					['hideonnpc'] = false,
				},
				['altpower'] = {
					['enable'] = true,
					['width'] = 260,
					['height'] = 18,
				},
				['name'] = {
					['enable'] = true,
					['position'] = 'LEFT',
				},
				['portrait'] = {
					['enable'] = false,
					['width'] = 45,
					['overlay'] = false,
					['camDistanceScale'] = 1,
				},
				['buffs'] = {
					['enable'] = false,
					['perrow'] = 7,
					['numrows'] = 1,
					['growth-x'] = 'RIGHT',
					['growth-y'] = 'UP',
					['initialAnchor'] = 'BOTTOMLEFT',
					['attachTo'] = 'DEBUFFS',
					['anchorPoint'] = 'TOPLEFT',
					['fontsize'] = 10,
					['showPlayerOnly'] = true,
					['useFilter'] = 'TurtleBuffs',
					['durationLimit'] = 900,
				},
				['debuffs'] = {
					['enable'] = false,
					['perrow'] = 7,
					['numrows'] = 1,
					['growth-x'] = 'LEFT',
					['growth-y'] = 'UP',
					['initialAnchor'] = 'BOTTOMRIGHT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'TOPRIGHT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = 'DebuffBlacklist',	
					['durationLimit'] = 0,
				},
				['castbar'] = {
					['enable'] = true,
					['snaptoab'] = true,	-- Position the player castbar above actionbar 1 and size it automatically. This disables the 'width' option.
					['width'] = 260,
					['height'] = 20,
					['icon'] = false,
					['latency'] = true,
					['color'] = { r = .66,g = .66,b = .66 },
					['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
					['xOffset'] = 0,
					['yOffset'] = 0,
					['format'] = 'CURRENTMAX',
					["ticks"] = true,
				},
				['classbar'] = {
					['enable'] = true,
					['fill'] = 'spaced',
					['height'] = 8,
				},
			},	
			['target'] = {
				['enable'] = true,
				['width'] = 260,
				['height'] = 55,
				['healPrediction'] = true,
				['health'] = {
					['text'] = true,
					['text_format'] = 'current-percent',
					['position'] = 'TOPRIGHT',
				},
				['power'] = {
					['enable'] = true,
					['text'] = true,
					['text_format'] = 'current',	
					['width'] = 'fill',
					['height'] = 15,
					['offset'] = 0,
					['position'] = 'BOTTOMRIGHT',
					['hideonnpc'] = false,
				},
				['name'] = {
					['enable'] = true,
					['position'] = 'LEFT',
				},
				['portrait'] = {
					['enable'] = false,
					['width'] = 45,
					['overlay'] = true,
					['camDistanceScale'] = 1,
				},
				['buffs'] = {
					['enable'] = true,
					['perrow'] = 8,
					['numrows'] = 2,
					['growth-x'] = 'RIGHT',
					['growth-y'] = 'DOWN',
					['initialAnchor'] = 'TOPLEFT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'BOTTOMLEFT',						
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = '',		
					['durationLimit'] = 0,
				},
				['debuffs'] = {
					['enable'] = true,
					['perrow'] = 8,
					['numrows'] = 2,
					['growth-x'] = 'RIGHT',
					['growth-y'] = 'DOWN',
					['initialAnchor'] = 'TOPLEFT',
					['attachTo'] = 'BUFFS',
					['anchorPoint'] = 'BOTTOMLEFT',
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = '',	
					['durationLimit'] = 0,
				},
				['castbar'] = {
					['enable'] = true,
					['width'] = 260,
					['height'] = 15,
					['icon'] = false,
					['color'] = { r = .66,g = .66,b = .66 },
					['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
					['xOffset'] = 0,
					['yOffset'] = 86,
					['format'] = 'REMAINING',
				},	
				['combobar'] = {
					['enable'] = true,
					['fill'] = 'spaced',
					['height'] = 10,
				},				
			},
			['targettarget'] = {
				['enable'] = true,
				['width'] = 130,
				['height'] = 50,
				['health'] = {
					['text'] = false,
					['text_format'] = 'current-percent',
					['position'] = 'RIGHT',
				},
				['power'] = {
					['enable'] = true,
					['text'] = false,
					['text_format'] = 'current',	
					['width'] = 'fill',
					['height'] = 10,
					['offset'] = 0,
					['position'] = 'LEFT',
					['hideonnpc'] = false,					
				},
				['name'] = {
					['enable'] = true,
					['position'] = 'CENTER',
				},
				['buffs'] = {
					['enable'] = false,
					['perrow'] = 7,
					['numrows'] = 1,
					['growth-x'] = 'RIGHT',
					['growth-y'] = 'UP',
					['initialAnchor'] = 'BOTTOMLEFT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'BOTTOMLEFT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = '',		
					['durationLimit'] = 0,
				},
				['debuffs'] = {
					['enable'] = true,
					['perrow'] = 5,
					['numrows'] = 1,
					['growth-x'] = 'LEFT',
					['growth-y'] = 'DOWN',
					['initialAnchor'] = 'TOPRIGHT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'BOTTOMRIGHT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = 'DebuffBlacklist',	
					['durationLimit'] = 0,
				},			
			},
			['focus'] = {
				['enable'] = true,
				['width'] = 200,
				['height'] = 40,
				['healPrediction'] = true,
				['health'] = {
					['text'] = true,
					['text_format'] = 'current-percent',
					['position'] = 'TOPRIGHT',
				},
				['power'] = {
					['enable'] = true,
					['text'] = false,
					['text_format'] = 'current',	
					['width'] = 'fill',
					['height'] = 10,
					['offset'] = 0,
					['position'] = 'BOTTOMRIGHT',
					['hideonnpc'] = false,					
				},
				['name'] = {
					['enable'] = true,
					['position'] = 'LEFT',
				},
				['buffs'] = {
					['enable'] = true,
					['perrow'] = 7,
					['numrows'] = 1,
					['growth-x'] = 'RIGHT',
					['growth-y'] = 'DOWN',
					['initialAnchor'] = 'TOPLEFT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'BOTTOMLEFT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = '',		
					['durationLimit'] = 0,
				},
				['debuffs'] = {
					['enable'] = true,
					['perrow'] = 7,
					['numrows'] = 1,
					['growth-x'] = 'RIGHT',
					['growth-y'] = 'DOWN',
					['initialAnchor'] = 'TOPLEFT',
					['attachTo'] = 'BUFFS',
					['anchorPoint'] = 'BOTTOMLEFT',
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = 'DebuffBlacklist',	
					['durationLimit'] = 0,
				},	
				['castbar'] = {
					['enable'] = true,
					['width'] = 200,
					['height'] = 15,
					['icon'] = false,
					['color'] = { r = .66,g = .66,b = .66 },
					['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
					['xOffset'] = 0,
					['yOffset'] = 65,
					['format'] = 'REMAINING',
				},					
			},	
			['focustarget'] = {
				['enable'] = true,
				['width'] = 150,
				['height'] = 40,
				['health'] = {
					['text'] = true,
					['text_format'] = 'current-percent',
					['position'] = 'TOPRIGHT',
				},
				['power'] = {
					['enable'] = true,
					['text'] = false,
					['text_format'] = 'current',	
					['width'] = 'fill',
					['height'] = 10,
					['offset'] = 0,
					['position'] = 'BOTTOMRIGHT',
					['hideonnpc'] = false,					
				},
				['name'] = {
					['enable'] = true,
					['position'] = 'LEFT',
				},
				['buffs'] = {
					['enable'] = true,
					['perrow'] = 6,
					['numrows'] = 1,
					['growth-x'] = 'RIGHT',
					['growth-y'] = 'DOWN',
					['initialAnchor'] = 'TOPLEFT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'BOTTOMLEFT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = '',		
					['durationLimit'] = 0,
				},
				['debuffs'] = {
					['enable'] = true,
					['perrow'] = 6,
					['numrows'] = 1,
					['growth-x'] = 'RIGHT',
					['growth-y'] = 'DOWN',
					['initialAnchor'] = 'TOPLEFT',
					['attachTo'] = 'BUFFS',
					['anchorPoint'] = 'BOTTOMLEFT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = 'DebuffBlacklist',	
					['durationLimit'] = 0,
				},			
			},				
			['pet'] = {
				['enable'] = true,
				['width'] = 130,
				['height'] = 35,
				['healPrediction'] = true,
				['health'] = {
					['text'] = false,
					['text_format'] = 'current-percent',
					['position'] = 'TOPRIGHT',
				},
				['power'] = {
					['enable'] = true,
					['text'] = false,
					['text_format'] = 'current',	
					['width'] = 'fill',
					['height'] = 7,
					['offset'] = 0,
					['position'] = 'BOTTOMRIGHT',
					['hideonnpc'] = false,					
				},
				['name'] = {
					['enable'] = true,
					['position'] = 'LEFT',
				},
				['buffs'] = {
					['enable'] = false,
					['perrow'] = 7,
					['numrows'] = 1,
					['growth-x'] = 'RIGHT',
					['growth-y'] = 'UP',
					['initialAnchor'] = 'BOTTOMLEFT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'BOTTOMLEFT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = '',		
					['durationLimit'] = 0,
				},
				['debuffs'] = {
					['enable'] = false,
					['perrow'] = 5,
					['numrows'] = 1,
					['growth-x'] = 'LEFT',
					['growth-y'] = 'DOWN',
					['initialAnchor'] = 'TOPRIGHT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'BOTTOMRIGHT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = 'DebuffBlacklist',	
					['durationLimit'] = 0,
				},			
			},
			['pettarget'] = {
				['enable'] = false,
				['width'] = 130,
				['height'] = 25,
				['health'] = {
					['text'] = false,
					['text_format'] = 'current-percent',
					['position'] = 'RIGHT',
				},
				['power'] = {
					['enable'] = false,
					['text'] = false,
					['text_format'] = 'current',	
					['width'] = 'fill',
					['height'] = 7,
					['offset'] = 0,
					['position'] = 'LEFT',
					['hideonnpc'] = true,					
				},
				['name'] = {
					['enable'] = true,
					['position'] = 'CENTER',
				},
				['buffs'] = {
					['enable'] = false,
					['perrow'] = 7,
					['numrows'] = 1,
					['growth-x'] = 'RIGHT',
					['growth-y'] = 'UP',
					['initialAnchor'] = 'BOTTOMLEFT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'BOTTOMLEFT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = '',		
					['durationLimit'] = 0,
				},
				['debuffs'] = {
					['enable'] = false,
					['perrow'] = 5,
					['numrows'] = 1,
					['growth-x'] = 'LEFT',
					['growth-y'] = 'DOWN',
					['initialAnchor'] = 'TOPRIGHT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'BOTTOMRIGHT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = 'DebuffBlacklist',	
					['durationLimit'] = 0,
				},			
			},	
			['boss'] = {
				['enable'] = true,
				['growthDirection'] = 'DOWN',
				['width'] = 200,
				['height'] = 45,
				['health'] = {
					['text'] = true,
					['text_format'] = 'current-percent',
					['position'] = 'TOPRIGHT',
				},
				['power'] = {
					['enable'] = true,
					['text'] = true,
					['text_format'] = 'current',	
					['width'] = 'fill',
					['height'] = 7,
					['offset'] = 0,
					['position'] = 'BOTTOMRIGHT',
					['hideonnpc'] = false,					
				},
				['portrait'] = {
					['enable'] = false,
					['width'] = 35,
					['overlay'] = false,
					['camDistanceScale'] = 1,
				},				
				['name'] = {
					['enable'] = true,
					['position'] = 'LEFT',
				},
				['buffs'] = {
					['enable'] = true,
					['perrow'] = 8,
					['numrows'] = 1,
					['growth-x'] = 'LEFT',
					['growth-y'] = 'UP',
					['initialAnchor'] = 'BOTTOMRIGHT',
					['attachTo'] = 'DEBUFFS',
					['anchorPoint'] = 'TOPRIGHT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = '',		
					['durationLimit'] = 0,
				},
				['debuffs'] = {
					['enable'] = true,
					['perrow'] = 8,
					['numrows'] = 1,
					['growth-x'] = 'RIGHT',
					['growth-y'] = 'UP',
					['initialAnchor'] = 'BOTTOMLEFT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'TOPLEFT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = true,
					['useFilter'] = '',	
					['durationLimit'] = 0,
				},	
				['castbar'] = {
					['enable'] = true,
					['width'] = 200,
					['height'] = 15,
					['icon'] = true,
					['color'] = { r = .66,g = .66,b = .66 },
					['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
					['format'] = 'REMAINING',
				},					
			},	
			['arena'] = {
				['enable'] = true,
				['growthDirection'] = 'UP',
				['pvpTrinket'] = true,
				['width'] = 240,
				['height'] = 45,
				['health'] = {
					['text'] = true,
					['text_format'] = 'current-percent',
					['position'] = 'RIGHT',
				},
				['power'] = {
					['enable'] = true,
					['text'] = true,
					['text_format'] = 'current',	
					['width'] = 'fill',
					['height'] = 7,
					['offset'] = 0,
					['position'] = 'LEFT',
					['hideonnpc'] = false,					
				},			
				['name'] = {
					['enable'] = true,
					['position'] = 'CENTER',
				},
				['buffs'] = {
					['enable'] = true,
					['perrow'] = 3,
					['numrows'] = 1,
					['growth-x'] = 'LEFT',
					['growth-y'] = 'DOWN',
					['initialAnchor'] = 'RIGHT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'LEFT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = 'TurtleBuffs',		
					['durationLimit'] = 0,
				},
				['debuffs'] = {
					['enable'] = true,
					['perrow'] = 3,
					['numrows'] = 1,
					['growth-x'] = 'RIGHT',
					['growth-y'] = 'DOWN',
					['initialAnchor'] = 'LEFT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'RIGHT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = 'CCDebuffs',	
					['durationLimit'] = 0,
				},	
				['castbar'] = {
					['enable'] = true,
					['width'] = 240,
					['height'] = 15,
					['icon'] = true,
					['color'] = { r = .66,g = .66,b = .66 },
					['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
					['format'] = 'REMAINING',
				},					
			},
			['party'] = {
				['enable'] = false,
				['visibility'] = "[@raid6,exists] hide;show",
				['point'] = 'TOP', --Requires ReloadUI()
				['maxColumns'] = 1,
				['unitsPerColumn'] = 5,
				['columnSpacing'] = 3,
				['xOffset'] = 0,
				['yOffset'] = -3,
				['groupBy'] = 'GROUP',
				["showParty"] = true,
				["showRaid"] = true,
				["showSolo"] = false,
				["showPlayer"] = true,
				['healPrediction'] = false,
				['columnAnchorPoint'] = "TOP",
				['width'] = 180,
				['height'] = 43,
				['health'] = {
					['text'] = true,
					['text_format'] = 'current-percent',
					['position'] = 'RIGHT',
					['orientation'] = 'HORIZONTAL',
				},
				['power'] = {
					['enable'] = true,
					['text'] = false,
					['text_format'] = 'current',	
					['width'] = 'fill',
					['height'] = 7,
					['offset'] = 0,
					['position'] = 'BOTTOMRIGHT',
					['hideonnpc'] = false,					
				},			
				['name'] = {
					['enable'] = true,
					['position'] = 'LEFT',
				},
				['buffs'] = {
					['enable'] = false,
					['perrow'] = 3,
					['numrows'] = 1,
					['growth-x'] = 'LEFT',
					['growth-y'] = 'DOWN',
					['initialAnchor'] = 'RIGHT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'LEFT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = '',		
					['durationLimit'] = 0,
				},
				['debuffs'] = {
					['enable'] = true,
					['perrow'] = 3,
					['numrows'] = 1,
					['growth-x'] = 'RIGHT',
					['growth-y'] = 'DOWN',
					['initialAnchor'] = 'LEFT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'RIGHT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = '',	
					['durationLimit'] = 0,
				},	
				['buffIndicator'] = {
					['enable'] = true,
					['size'] = 6,
					['fontsize'] = 8,
					['colorIcons'] = true,
				},
				['roleIcon'] = {
					['enable'] = true,
					['position'] = 'BOTTOMRIGHT',
				},							
				['petsGroup'] = {
					['enable'] = false,
					['width'] = 100,
					['height'] = 22,
					['initialAnchor'] = 'TOPRIGHT',
					['anchorPoint'] = 'TOPLEFT',
					['xOffset'] = -1,
					['yOffset'] = 0,
				},
			},
			['raid625'] = {
				['enable'] = true,
				['visibility'] = '[@raid26,exists] hide;show',
				['point'] = 'LEFT',
				['maxColumns'] = 5,
				['unitsPerColumn'] = 5,
				['columnSpacing'] = 3,
				['xOffset'] = 3,
				['yOffset'] = -3,
				['groupBy'] = 'GROUP',
				["showParty"] = true,
				["showRaid"] = true,
				["showSolo"] = false,
				["showPlayer"] = true,
				['healPrediction'] = false,
				['columnAnchorPoint'] = "TOP",
				['width'] = 73,
				['height'] = 44,
				['health'] = {
					['text'] = false,
					['text_format'] = 'deficit',
					['position'] = 'BOTTOM',
					['orientation'] = 'HORIZONTAL',
				},
				['power'] = {
					['enable'] = true,
					['text'] = false,
					['text_format'] = 'current',	
					['width'] = 'fill',
					['height'] = 8,
					['offset'] = 0,
					['position'] = 'BOTTOMRIGHT',
					['hideonnpc'] = false,					
				},			
				['name'] = {
					['enable'] = true,
					['position'] = 'TOP',
				},
				['buffs'] = {
					['enable'] = false,
					['perrow'] = 3,
					['numrows'] = 1,
					['growth-x'] = 'LEFT',
					['growth-y'] = 'DOWN',
					['initialAnchor'] = 'RIGHT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'LEFT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = '',		
					['durationLimit'] = 0,
				},
				['debuffs'] = {
					['enable'] = true,
					['perrow'] = 2,
					['numrows'] = 1,
					['growth-x'] = 'RIGHT',
					['growth-y'] = 'DOWN',
					['initialAnchor'] = 'LEFT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'LEFT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = 'DebuffBlacklist',	
					['durationLimit'] = 0,
				},	
				['buffIndicator'] = {
					['enable'] = true,
					['size'] = 6,
					['fontsize'] = 8,
					['colorIcons'] = true,
				},
				['rdebuffs'] = {
					['enable'] = false,
					['fontsize'] = 10,
					['size'] = 26,
				},
				['roleIcon'] = {
					['enable'] = true,
					['position'] = 'BOTTOMRIGHT',
				},					
			},					
			['raid2640'] = {
				['enable'] = true,
				['visibility'] = '[@raid26,noexists] hide;show',
				['point'] = 'LEFT',
				['maxColumns'] = 8,
				['unitsPerColumn'] = 5,
				['columnSpacing'] = 3,
				['xOffset'] = 3,
				['yOffset'] = -3,
				['groupBy'] = 'GROUP',
				["showParty"] = true,
				["showRaid"] = true,
				["showSolo"] = false,
				["showPlayer"] = true,
				['healPrediction'] = false,
				['columnAnchorPoint'] = "TOP",
				['width'] = 73,
				['height'] = 36,
				['health'] = {
					['text'] = true,
					['text_format'] = 'deficit',
					['position'] = 'BOTTOM',
					['orientation'] = 'HORIZONTAL',
				},
				['power'] = {
					['enable'] = false,
					['text'] = false,
					['text_format'] = 'current',	
					['width'] = 'fill',
					['height'] = 7,
					['offset'] = 0,
					['position'] = 'BOTTOMRIGHT',
					['hideonnpc'] = false,					
				},			
				['name'] = {
					['enable'] = true,
					['position'] = 'TOP',
				},
				['buffs'] = {
					['enable'] = false,
					['perrow'] = 3,
					['numrows'] = 1,
					['growth-x'] = 'LEFT',
					['growth-y'] = 'DOWN',
					['initialAnchor'] = 'RIGHT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'LEFT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = '',		
					['durationLimit'] = 0,
				},
				['debuffs'] = {
					['enable'] = false,
					['perrow'] = 3,
					['numrows'] = 1,
					['growth-x'] = 'RIGHT',
					['growth-y'] = 'DOWN',
					['initialAnchor'] = 'LEFT',
					['attachTo'] = 'FRAME',
					['anchorPoint'] = 'RIGHT',					
					['fontsize'] = 10,
					['showPlayerOnly'] = false,
					['useFilter'] = '',	
					['durationLimit'] = 0,
				},	
				['buffIndicator'] = {
					['enable'] = true,
					['size'] = 6,
					['fontsize'] = 8,
					['colorIcons'] = true,
				},			
			},	
			['tank'] = {
				['enable'] = true,
				['width'] = 120,
				['height'] = 28,
			},	
			['assist'] = {
				['enable'] = true,
				['width'] = 120,
				['height'] = 28,
			},					
		},
		['Secondary'] = {
			['target'] = {
				['buffs'] = {
					['numrows'] = 1,
					['growth-x'] = 'LEFT',
					['growth-y'] = 'UP',
					['initialAnchor'] = 'BOTTOMRIGHT',
					['anchorPoint'] = 'TOPRIGHT',
				},
				['debuffs'] = {
					['numrows'] = 1,
					['growth-x'] = 'LEFT',
					['growth-y'] = 'UP',
					['initialAnchor'] = 'BOTTOMRIGHT',
					['anchorPoint'] = 'TOPRIGHT',
				},
				['castbar'] = {
					['yOffset'] = 0,
				},			
			},
			['targettarget'] = {
				['height'] = 35,			
			},
			['focus'] = {
				['buffs'] = {
					['growth-y'] = 'UP',
					['initialAnchor'] = 'BOTTOMLEFT',
					['anchorPoint'] = 'TOPLEFT',
				},
				['debuffs'] = {
					['growth-y'] = 'UP',
					['initialAnchor'] = 'BOTTOMLEFT',
					['anchorPoint'] = 'TOPLEFT',
				},
				['castbar'] = {
					['yOffset'] = 65,
				},
			},	
			['focustarget'] = {
				['buffs'] = {
					['growth-y'] = 'UP',
					['initialAnchor'] = 'BOTTOMLEFT',
					['anchorPoint'] = 'TOPLEFT',
				},
				['debuffs'] = {
					['growth-y'] = 'UP',
					['initialAnchor'] = 'BOTTOMLEFT',
					['anchorPoint'] = 'TOPLEFT',
				},
			},
			['boss'] = {
				['growthDirection'] = 'UP',				
			},	
			['arena'] = {
				['width'] = 200,
				['castbar'] = {
					['width'] = 200,
				},					
			},
			['raid625'] = {
				['healPrediction'] = true,
			},					
			['raid2640'] = {
				['healPrediction'] = true,			
			},					
			["positions"] = {
				["ElvUF_Player"] = "BOTTOMLEFTUIParent464230",
				["ElvUF_Target"] = "BOTTOMRIGHTUIParent-464230",
				["ElvUF_Raid2640"] = "BOTTOMUIParent0170",
				["ElvUF_Raid625"] = "BOTTOMUIParent0170",
				["ElvUF_TargetTarget"] = "BOTTOMRIGHTElvUF_Target0150",
				["ElvUF_Focus"] = "BOTTOMLEFTElvUF_Player0150",
				["ElvUF_FocusTarget"] = "BOTTOMLEFTElvUF_Focus0150",
				["ElvUF_Party"] = "BOTTOMUIParent0170",
				["ElvUF_Pet"] = "BOTTOMLEFTUIParent464151",
				["ElvUF_Boss1"] = "BOTTOMLEFTUIParent30250",
				["ElvUF_Boss2"] = "BOTTOMLEFTUIParent30375",
				["ElvUF_Boss3"] = "BOTTOMLEFTUIParent30500",
				["ElvUF_Boss4"] = "BOTTOMLEFTUIParent30625",
				["ElvUF_Tank"] = "LEFTUIParent30350",
			},			
		},	
	},
}

--Actionbar
DF["actionbar"] = {
	["enable"] = true,
	["macrotext"] = true,
	["hotkeytext"] = true,
	["buttonsize"] = 30,
	["altbuttonsize"] = 28,
	["buttonspacing"] = 4,
	['fontsize'] = 11,
	["enablecd"] = true,
	["treshold"] = 3,
	["expiringcolor"] = { r = 1, g = 0, b = 0 },
	["secondscolor"] = { r = 1, g = 1, b = 0 },
	["minutescolor"] = { r = 1, g = 1, b = 1 },
	["hourscolor"] = { r = 0.4, g = 1, b = 1 },
	["dayscolor"] = { r = 0.4, g = 0.4, b = 1 },	
	['bar1'] = {
		['enabled'] = true,
		['buttons'] = 12,
		['mouseover'] = false,
		['buttonsPerRow'] = 12,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = true,
		['heightMult'] = 2,
		['widthMult'] = 1,
		['paging'] = {
			["DRUID"] = "[bonusbar:1,nostealth] 7; [bonusbar:1,stealth] 8; [bonusbar:2] 8; [bonusbar:3] 9; [bonusbar:4] 10;",
			["WARRIOR"] = "[bonusbar:1] 7; [bonusbar:2] 8; [bonusbar:3] 9;",
			["PRIEST"] = "[bonusbar:1] 7;",
			["ROGUE"] = "[bonusbar:1] 7; [form:3] 7;",	
		},
		['visibility'] = "",
	},
	['bar2'] = {
		['enabled'] = true,
		['mouseover'] = false,
		['buttons'] = 12,
		['buttonsPerRow'] = 12,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = false,
		['heightMult'] = 1,
		['widthMult'] = 1,
		['paging'] = {},
		['visibility'] = "[vehicleui] hide;show",
	},
	['bar3'] = {
		['enabled'] = false,
		['mouseover'] = false,
		['buttons'] = 12,
		['buttonsPerRow'] = 12,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = false,
		['heightMult'] = 1,
		['widthMult'] = 1,
		['paging'] = {},
		['visibility'] = "[vehicleui] hide;show",
	},
	['bar4'] = {
		['enabled'] = true,
		['mouseover'] = true,
		['buttons'] = 6,
		['buttonsPerRow'] = 3,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = true,
		['heightMult'] = 1,
		['widthMult'] = 1,
		['paging'] = {},
		['visibility'] = "[vehicleui] hide;show",
	},
	['bar5'] = {
		['enabled'] = true,
		['mouseover'] = true,
		['buttons'] = 6,
		['buttonsPerRow'] = 3,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = true,
		['heightMult'] = 1,
		['widthMult'] = 1,
		['paging'] = {},
		['visibility'] = "[vehicleui] hide;show",
	},
	['barPet'] = {
		['enabled'] = true,
		['mouseover'] = false,
		['buttons'] = NUM_PET_ACTION_SLOTS,
		['buttonsPerRow'] = 1,
		['point'] = 'TOPRIGHT',
		['backdrop'] = true,
		['heightMult'] = 1,
		['widthMult'] = 1,
		['visibility'] = "[pet,novehicleui,nobonusbar:5] show;hide",
	},
	['barShapeShift'] = {
		['enabled'] = true,
		['mouseover'] = false,
		['buttonsPerRow'] = 1,
		['buttons'] = NUM_SHAPESHIFT_SLOTS,
		['point'] = 'TOPLEFT',
		['backdrop'] = false,
		['heightMult'] = 1,
		['widthMult'] = 1,
	},
	['barTotem'] = {
		['enabled'] = true,
		['mouseover'] = false,
	},
};