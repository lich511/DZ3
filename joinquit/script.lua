local DATA_ID = { 0 }

function joinHandler()
	outputChatBox ( "Добро пожаловать " .. getPlayerName(source).."!" )

	DATA_ID[#DATA_ID + 1] = DATA_ID[#DATA_ID] + 1

	outputChatBox(getPlayerName(source).." "..tostring(DATA_ID[#DATA_ID]))

	setElementData(source, "ID", DATA_ID[#DATA_ID])
end
addEventHandler("onPlayerJoin", root, joinHandler)



local FRACTIONSDATA = {"city_mayor"}

function setLeader(playerSource, commandName, arg1, arg2)
	if tonumber(arg1) and tonumber(arg1) > 0 then
		for _, plr in ipairs( getElementsByType( "player" ) ) do
			if getElementData(plr, "ID") = arg1 then


				if ar2 ~= nil then
					if FRACTIONSDATA[arg2] then
						setElementData(plr, "FRACTION", arg2)
						setElementData(plr, "RANG", "Leader")
						outputChatBox("фракция установленна на "..arg2)
					end
				else
					setElementData(plr, "FRACTION", nil)
					setElementData(plr, "RANG", nil)
					outputChatBox("исключен из фракций")
				end


			end
		end
	end
end
addCommandHandler("setl", setLeader)

function setFraction(playerSource, commandName, arg1, arg2)
	if tonumber(arg1) and tonumber(arg1) > 0 then
		for _, plr in ipairs( getElementsByType( "player" ) ) do
			if getElementData(plr, "ID") = arg1 then


				if ar2 ~= nil then
					if FRACTIONSDATA[arg2] then
						setElementData(plr, "FRACTION", arg2)
						setElementData(plr, "RANG", "Normal")
						outputChatBox("фракция установленна на "..arg2)
					end
				else
					setElementData(plr, "FRACTION", nil)
					setElementData(plr, "RANG", nil)
					outputChatBox("исключен из фракций")
				end
				

			end
		end
	end
end
addCommandHandler("setr", setFraction)

function fChat(playerSource, commandName, arg1)
	if arg1 ~= nil and getElementData(playerSource, "FRACTION") ~= nil then
		local fract = getElementData(playerSource, "FRACTION")
		for _, plr in ipairs( getElementsByType( "player" ) ) do
			if fract == getElementData(plr, "FRACTION") then
				outputChatBox("[ФРАКЦИЯ] "..arg1, plr)
			end
		end
	end
end

addCommandHandler("f", fChat)




function greetingCommand ( playerSource, commandName )
    triggerClientEvent ( playerSource, "PlayerConnect2", root, "Hello World!" )
	outputChatBox ( "Sended" )
end
addCommandHandler ( "gre", greetingCommand )