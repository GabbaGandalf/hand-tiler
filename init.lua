function tp(c, sector)
	local delta = 20
	local s = client.focus.screen 
	local screengeom = screen[s].workarea

	local awful     = require("awful")
	local geometrySet = {}
	local curgeo =	c:geometry() 

	geometrySet['left-top'] = {
		x = screengeom.x + delta,
		y = screengeom.y + delta,
	}
	geometrySet['right-top'] = {
		x = screengeom.x + screengeom.width-curgeo.width-2*c.border_width - delta,
		y = screengeom.y + delta,
	}

	geometrySet['left-bottom'] = {
		x = screengeom.x + delta,
		y = screengeom.y + screengeom.height - curgeo.height - 2*c.border_width - delta,
	}
	geometrySet['right-bottom'] = {
		x = screengeom.x + screengeom.width - curgeo.width - 2*c.border_width - delta,
		y = screengeom.y + screengeom.height  - curgeo.height - 2*c.border_width - delta,
	}
	geometrySet['middle'] = {
		x = screengeom.x + screengeom.width/2 - curgeo.width/2 - c.border_width ,
		y = screengeom.y + screengeom.height/2 -curgeo.height/2 - c.border_width ,
	}
	geometrySet['left-middle'] = {
		x = screengeom.x + delta,
		y = screengeom.y + screengeom.height/2 -curgeo.height/2 - c.border_width ,
	}
	geometrySet['right-middle'] = {
		x = screengeom.x +screengeom.width - curgeo.width - 2*c.border_width - delta, 
		y = screengeom.y + screengeom.height/2 -curgeo.height/2 - c.border_width ,
	}


	c:geometry(geometrySet[sector])

end

local handTiler = {}
handTiler.tp = tp



return  handTiler
