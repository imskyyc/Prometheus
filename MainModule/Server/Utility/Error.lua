return function(...) 
    for _, Message in ipairs({...}) do
        local CallingScript = debug.info(2, "s")
        local FormattedMessage = string.format("[ Prometheus :: %s :: ERROR] : ", CallingScript)
        warn(FormattedMessage, Message)
    end 
end