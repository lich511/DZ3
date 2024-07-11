function greetingHandler ( message )
    outputChatBox ( "The server says1: " .. message )
    outputChatBox(getElementData(localPlayer, "ID"))
end
addEvent( "onGreeting", true )

addEventHandler( "onGreeting", localPlayer, greetingHandler )



local screenWidth, screenHeight = guiGetScreenSize ( ) -- Get the screen resolution (width and height)

function createText ( )
    for _, plr in ipairs( getElementsByType( "player" ) ) do
	local x, y, z = getPedBonePosition( plr, 8 ); -- head
	local sX, sY = getScreenFromWorldPosition( x+0.05, y, z+0.25 );
		if sX then
			if plr == localPlayer then
    			dxDrawText ( tostring(getElementData(plr, "ID")), 44, screenHeight - 43, screenWidth, screenHeight, tocolor ( 255, 255, 255, 255 ), 2, "textid" )
    		else
				dxDrawText(tostring(getElementData(plr, "ID")) , sX, sY )
			end
		end
	end
end
addEventHandler ( "onClientRender", root, createText )