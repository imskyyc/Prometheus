--[[

    imskyyc
    RPM Server
    1/17/2022

]]--

-- Instances --
local Runner = script
local Configuration = require(Runner.Configuration)
local Folder = Runner.Parent

local Core = Folder.Core
local Dependencies = Folder.Dependencies
local Packages = Folder.Packages
local Utility = Folder.Utility

-- Setup --
local Server = {Packages = {}}
local Service = require(Utility.Service)

-- Script Globals --
local oldPrint = print
local oldWarn  = warn
local oldError = error
local oldDebug = debug

local print = require(Utility.Print)
local warn  = require(Utility.Warn)
local error = require(Utility.Error)
local debug = {output = function(...) if Configuration.Debug then for _, Message in ipairs({...}) do local CallingScript = debug.info(2, "s") local FormattedMessage = string.format("[ Prometheus :: %s :: DEBUG] : ", CallingScript) warn(FormattedMessage, Message) end end end}

    --// Debug Setup
    for Key, Function in pairs(oldDebug) do
        debug[Key] = Function
    end

    --// Freeze Debug (Immutable)
    table.freeze(debug)

-- Setup --
Server.Load = function()
    
end

return Server