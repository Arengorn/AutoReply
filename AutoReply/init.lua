count = {}
haspoked = {}
poketime = {}
maxpokes = 2
maxtime = 180
function onClientPokeEvent(serverConnectionHandlerID, pokerID, pokerName, message, ffIgnored)
	if (pokerID ~= haspoked[pokerID]) then
			haspoked[pokerID] = pokerID
			count[pokerID] = 1
			poketime[pokerID] = os.time()
			ts3.requestSendPrivateTextMsg(serverConnectionHandlerID, "I've received your poke. I'll get back to you as time allows.", pokerID)
	elseif(pokerID == haspoked[pokerID])then
		  if (count[pokerID] >= maxpokes and os.difftime(poketime[pokerID],os.time()) <= maxtime) then
			  ts3.requestClientKickFromServer(serverConnectionHandlerID,pokerID,"Don't abuse the poke functionality please! ")
			  poketime[pokerID] = os.time()
			else
				if(os.difftime(poketime[pokerID],os.time()) > maxtime) then
					poketime[pokerID] = os.time
				end
				ts3.requestSendPrivateTextMsg(serverConnectionHandlerID, "I've received your poke. I'll get back to you as time allows.", pokerID)
				count[pokerID] = count[pokerID]+1
	  	end
	end
end
