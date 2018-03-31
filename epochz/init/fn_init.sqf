// EpochZ 1.0 by Grahame, nAtOeD and Drokz //
// Based on ExileZ 2.0 by Patrix87 of http:\\multi-jeux.quebec //

#include "code\pre_init.sqf";
#include "ZClassesList.sqf";                     // All available classes per group
#include "ZLoot.sqf";                            // Loot groups
#include "ZVest.sqf";                            // Vest groups
#include "ZClasses.sqf";                         // Zombie classes groups
#include "TriggerPositions.sqf";                 // Trigger positions

// EDIT BELOW

//Global Settings
ZombieSide                   = RESISTANCE;       // zombie side
ZombieSideString             = "GUER";           // Same thing but in a string.
CorpseDeleteDelay            = 300;              // delay before a zombie corpse is deleted.
Debug                        = true;             // debug messages.
SpawnWithinTriggerRadius	 = false;			 // Should the zombies spawn throughout the trigger radius, or use the two variables below to determine where they spawn?
MinSpawnDistance             = 20;               // Closest distance from the trigger to spawn a zombie.
MaxSpawnDistance             = 300;              // Max distance a zombie should spawn from the trigger.
MaxDistance			         = 500;              // Max distance to players before delete.
MaxTime                      = 30;               // Max time away from a player before delete.
RemoveZfromTraders			 = false;             // Will kill zombies when they get too close to a safezone. *(the check is done every MaxTime) will only work with zombies that are configured to avoid territories
RemoveZfromTerritory         = true;             // Will kill zombies when they get too close to a frequency jammer. *(the check is done every MaxTime) will only work with zombies that are configured to avoid territories
TriggerGroupScaling          = 0.35;             // 1 player = Groupsize, 2 player in trigger = Groupsize + (GroupSize * TriggerGroupScalling * number of player in the trigger) set at 0 to disable scaling
LightsOff                    = false;             // Kill all the light on map except the player lights.
HarassingZombieAtNightOnly   = true;             // Spawn harassing zombies at night only.
NightStartTime               = 18;               // Time at which it is night in hours
NightEndTime                 = 6;                // Time at which it is no longer night in hours

//Explosive zombies          
ExplosiveZombies             = false;            // randomly boobie trapped zombies exploding a few seconds after dying.
ExplosiveZombiesRatio        = 5;                // percentage of explosive zombies
ExplosiveZombieWarning       = "Allahu Akbar";// Message that will display a few seconds before the explosion of a zombie.
ExplosionDelay               = 2;                // self-explanatory
ExplosiveType                = "Grenade" ;       // "mini_Grenade" for small almost non-lethal explision or "Grenade" Big and dangerous explosion.
ExplosiveRespect             = 0;                // Bonus respect for Exploding zombies

//Killing zombies settings - NOT CURRENTLY IMPLEMENTED IN EPOCHZ 1.0
EnableMoneyOnPlayer          = false;            // Money goes directly on killer
EnableMoneyOnCorpse          = false;             // Money stays on corpse for looting
ZombieMoney                  = 0;                // Money per zombie kill
ZombieMaxMoney               = 0;               // Max Money per zombie kill-random amount put on corpses

EnableStatKill				 = true;			 // Enable stat tracking for Kills DB entry
EnableZombieStatKill         = false;			 // Enable stat tracking for ZedKills DB entry

EnableRankChange			 = false;			 // Enable Rank change
EnableHumanityChange		 = false;			 // Enable GR8's Humanity change
EpochZombieKillRankChange	 = 0;				 // Both Rank and Humanity are dependant on this config

EnableRespectOnKill          = false;             // Self Explanatory
ZombieRespect                = 0;               // Respect per zombie kill

RoadKillBonus                = 0;               // Bonus Respect if roadkill
MinDistance                  = 0;               // Minimal distance for range bonus
CqbDistance                  = 0;               // Minimal ditance for close quarter bonus
CqbBonus                     = 0;               // Respect for close quarter bonus at 1 meter
DistanceBonusDivider         = 0;               // Distance divided by that number = respect E.G. 300m / [20] = 15 Respect

//Zombie settings : SET TO -1 TO DISABLE AND USE DEFAULT FROM RYANZOMBIES
_Ryanzombieshealth			           = -1; 	 // Health, *(initial damage level 0 is no damage 1 is dead)
_Ryanzombieshealthdemon                = -1;	 // Health, *(initial damage level 0 is no damage 1 is dead)
_Ryanzombiesattackspeed 	           = -1;	 // Attack speed, *(Time is seconds between attacks)
_Ryanzombiesattackdistance 	           = -1;	 // Attack distance, *(in meters)
_Ryanzombiesattackstrenth 	           = -1;	     // Attack strength *(Knockback strength) *(TYPO IS NORMAL)
_Ryanzombiesdamage 			           = -1;   // Attack damage *(% of players life per hit, 1 is 100%)
_Ryanzombiesdamagecar 		           = -1;	 // Attack damage to car *(% of car health per hit, 1 is 100%)
_Ryanzombiesdamageair 		           = -1;	 // Attack damage to air *(% of car health per hit, 1 is 100%)
_Ryanzombiesdamagetank                 = -1;	 // Attack damage to tank *(% of car health per hit, 1 is 100%)
_Ryanzombiesdamagecarstrenth           = -1;	 // Car attack strength *(Knockback strength in M/S)
_Ryanzombiesdamageairstrenth           = -1;	     // Air attack strength *(Knockback strength M/S)
_Ryanzombiesdamagetankstrenth          = -1;	 // Tank attack strength *(Knockback strength M/S)
                                                    
_Ryanzombiescanthrow 		           = -1;	 // Enable or disable Throwing for zombies
_Ryanzombiescanthrowtank               = -1;	 // Enable or disable Throwing tank for zombies                                              
_Ryanzombiescanthrowdistance           = -1;	 // Max throw distance
_Ryanzombiescanthrowtankdistance       = -1;     // Max throw distance for tanks                         
                                                    
_Ryanzombiescanthrowdemon              = -1;	 // Enable or disable Throwing for demons
_Ryanzombiescanthrowtankdemon          = -1;	 // Enable or disable Throwing tank for demons
_Ryanzombiescanthrowdistancedemon      = 50;	 // Max throw distance demon
_Ryanzombiescanthrowtankdistancedemon  = 10;     // Max throw distance for tanks      

_ryanzombiesdisablebleeding            = -1;     // 1 to DISABLE player bleeding on hit, -1 to ENABLE player bleeding on hit.
_ryanzombiesstartinganim               = 1;      // Enable Spawning animation
_ryanzombieslimit                      = 100;    // Player detection distance in meters
		
_ryanzombiesdisablemoaning             = -1;    // No idle sound
_ryanzombiesdisableaggressive          = -1;     // No aggressive sounds
_ryanzombiescivilianattacks            = -1;     // Attack civilians
_Ryanzombieslogicroam                  = 1;     // Roam ***roaming can be heavy on cpu
_Ryanzombieslogicroamdemon             = -1;    // Demon Roam
                                                 
_Ryanzombiesjump                       = -1;    // Jumping Zombies
_Ryanzombiesjumpdemon                  = -1;    // Jumping Demons
                                                    
_Ryanzombiesfeed                       = 1;     // Feeding Zombies
_Ryanzombiesfeeddemon                  = 1;     // Feeding Demons
                                                    
_Ryanzombiesinfection                  = -1;     // Enable infections *(-1 to disable)
_ryanzombiesinfectedchance             = 10;    // Precent chances to be infected on hit
_ryanzombiesinfectedrate               = 0.05;  // Damage per minute when infected (+/- 30 minutes to live)
_ryanzombiesinfectedsymptoms           = 0.9;   // Symptomes showed when infected 0.9 = Normal 0.7 = Less 0.5 = None
_ryanzombiesinfecteddeath              = 0.9;   // 0.9 = Scream on death 0.7 = Silent death
_ryanzombiesantivirusduration          = 900;   // Antivirus duration *(5 minutes)

//http://steamcommunity.com/sharedfiles/filedetails/?id=614815221 must be installed on the client for the cure to work
//You also need to overide an Exile script, Details here : http://www.exilemod.com/topic/10999-rz-infection-for-exile/

_ryanzombiesmovementspeedwalker        = 1;      // Animation speed for walker zombies
_ryanzombiesmovementspeedslow          = 1;      // Animation speed for slow zombies
_ryanzombiesmovementspeedmedium        = 1;      // Animation speed for medium zombies
_ryanzombiesmovementspeedfast          = 1;      // Animation speed for fast zombies
_ryanzombiesmovementspeeddemon         = 1;      // Animation speed for demons
_ryanzombiesmovementspeedspider        = 1;      // Animation speed for spider
_ryanzombiesmovementspeedcrawler       = 1;      // Animation speed for crawler

// Helicopter Crash Site Settings
epochz_crashsites = [8,15];						// Number of crashsites
epochz_crashsite_loot = [2,5];			// Number of lootpiles close to each crashsite
epochz_wrecks = ["Land_Wreck_BMP2_F","Land_Wreck_BRDM2_F","Land_Wreck_HMMWV_F","Land_Wreck_Skodovka_F","Land_Wreck_CarDismantled_F","Land_Wreck_Truck_F","Land_Wreck_Car2_F","Land_Wreck_Car_F","Land_Wreck_Car3_F","Land_Wreck_Hunter_F","Land_Wreck_Offroad_F","Land_Wreck_Offroad2_F","Land_Wreck_UAZ_F","Land_Wreck_Truck_dropside_F","Land_Wreck_Van_F","Land_Wreck_Heli_Attack_01_F"];
epochz_guns = ["ruger_pistol_epoch","ruger_pistol_epoch_snds_F","ruger_pistol_epoch_pointer_F","1911_pistol_epoch","hgun_ACPC2_F","hgun_ACPC2_snds_F","hgun_P07_F","hgun_P07_snds_F","hgun_Pistol_heavy_01_F","hgun_Pistol_heavy_01_snds_F","hgun_Pistol_heavy_01_MRD_F","hgun_Pistol_heavy_02_F","hgun_Pistol_heavy_02_Yorris_F","hgun_Rook40_F","hgun_Rook40_snds_F","hgun_Pistol_Signal_F","hgun_P07_khk_F","hgun_Pistol_01_F","Hatchet","CrudeHatchet","MultiGun","arifle_Mk20_F","arifle_Mk20_plain_F","arifle_Mk20C_F","arifle_Mk20C_plain_F","arifle_Mk20_GL_F","arifle_Mk20_GL_plain_F","arifle_Mk20C_ACO_F","arifle_Mk20C_ACO_pointer_F","arifle_Mk20_pointer_F","arifle_Mk20_Holo_F","arifle_Mk20_ACO_F","arifle_Mk20_ACO_pointer_F","arifle_Mk20_MRCO_F","arifle_Mk20_MRCO_plain_F","arifle_Mk20_MRCO_pointer_F","arifle_Mk20_GL_MRCO_pointer_F","arifle_Mk20_GL_ACO_F","arifle_SDAR_F","arifle_TRG21_F","arifle_TRG20_F","arifle_TRG21_GL_F","arifle_TRG20_Holo_F","arifle_TRG20_ACO_pointer_F","arifle_TRG20_ACO_Flash_F","arifle_TRG20_ACO_F","arifle_TRG21_ACO_pointer_F","arifle_TRG21_ARCO_pointer_F","arifle_TRG21_MRCO_F","arifle_TRG21_GL_MRCO_F","arifle_TRG21_GL_ACO_pointer_F","hgun_PDW2000_F","hgun_PDW2000_snds_F","hgun_PDW2000_Holo_F","hgun_PDW2000_Holo_snds_F","SMG_01_F","SMG_01_Holo_F","SMG_01_Holo_pointer_snds_F","SMG_01_ACO_F","SMG_02_F","SMG_02_ACO_F","SMG_02_ARCO_pointg_F","m4a3_EPOCH","m16_EPOCH","m16Red_EPOCH","m249_EPOCH","m249Tan_EPOCH","LMG_03_F","arifle_AKS_F","arifle_CTAR_blk_F","arifle_CTAR_hex_F","arifle_CTAR_ghex_F","arifle_CTAR_GL_blk_F","arifle_CTAR_GL_hex_F","arifle_CTAR_GL_ghex_F","arifle_CTAR_blk_ACO_Pointer_F","arifle_CTAR_blk_Pointer_F","arifle_CTAR_blk_ACO_F","arifle_CTAR_GL_blk_ACO_F","arifle_CTAR_blk_ARCO_Pointer_F","arifle_CTAR_blk_ACO_Pointer_Snds_F","arifle_CTAR_GL_blk_ACO_Pointer_Snds_F","arifle_CTAR_blk_ARCO_Pointer_Snds_F","arifle_CTAR_blk_ARCO_F","arifle_CTARS_blk_F","arifle_CTARS_hex_F","arifle_CTARS_ghex_F","arifle_CTARS_blk_Pointer_F","arifle_SPAR_01_blk_F","arifle_SPAR_01_khk_F","arifle_SPAR_01_snd_F","arifle_SPAR_01_GL_blk_F","arifle_SPAR_01_GL_khk_F","arifle_SPAR_01_GL_snd_F","arifle_SPAR_02_blk_F","arifle_SPAR_02_khk_F","arifle_SPAR_02_snd_F","SMG_05_F","ChainSaw","ChainSawB","ChainSawG","ChainSawP","ChainSawR","l85a2_epoch","l85a2_ris_epoch","l85a2_ris_ng_epoch","l85a2_pink_epoch","l85a2_ugl_epoch","LMG_Mk200_F","LMG_Mk200_MRCO_F","LMG_Mk200_pointer_F","arifle_Katiba_F","arifle_Katiba_C_F","arifle_Katiba_GL_F","arifle_Katiba_C_ACO_pointer_F","arifle_Katiba_C_ACO_F","arifle_Katiba_ACO_F","arifle_Katiba_pointer_F","arifle_Katiba_ACO_pointer_F","arifle_Katiba_ARCO_F","arifle_Katiba_ARCO_pointer_F","arifle_Katiba_GL_ACO_F","arifle_Katiba_GL_ARCO_pointer_F","arifle_Katiba_GL_ACO_pointer_F","arifle_Katiba_GL_Nstalker_pointer_F","arifle_Katiba_GL_ACO_pointer_snds_F","arifle_Katiba_C_ACO_pointer_snds_F","arifle_Katiba_ACO_pointer_snds_F","arifle_Katiba_ARCO_pointer_snds_F","arifle_MXC_F","arifle_MX_F","arifle_MX_GL_F","arifle_MX_SW_F","arifle_MXM_F","arifle_MX_pointer_F","arifle_MX_Holo_pointer_F","arifle_MX_Hamr_pointer_F","arifle_MX_ACO_pointer_F","arifle_MX_ACO_F","arifle_MX_GL_ACO_F","arifle_MX_GL_ACO_pointer_F","arifle_MX_GL_Hamr_pointer_F","arifle_MXC_Holo_F","arifle_MXC_Holo_pointer_F","arifle_MX_SW_pointer_F","arifle_MX_SW_Hamr_pointer_F","arifle_MXM_Hamr_pointer_F","arifle_MXC_ACO_F","arifle_MXC_Holo_pointer_snds_F","arifle_MXC_SOS_point_snds_F","arifle_MXC_ACO_pointer_snds_F","arifle_MXC_ACO_pointer_F","arifle_MX_ACO_pointer_snds_F","arifle_MX_RCO_pointer_snds_F","arifle_MX_GL_Holo_pointer_snds_F","arifle_MXM_SOS_pointer_F","arifle_MXM_RCO_pointer_snds_F","arifle_MXM_DMS_F","arifle_MXC_Black_F","arifle_MX_Black_F","arifle_MX_GL_Black_F","arifle_MX_SW_Black_F","arifle_MXM_Black_F","arifle_MX_GL_Black_Hamr_pointer_F","arifle_MX_Black_Hamr_pointer_F","arifle_MX_SW_Black_Hamr_pointer_F","LMG_Mk200_LP_BI_F","LMG_Mk200_BI_F"];

//Default Altis SafeZones
SafeZonePositions =
[//  [[Coordinates],Radius]  // You can get the safezone information from the settings for telePos[] in epoch_server_settings
  [[14599,16797],175],
  [[23334,24188],175],
  [[2998,18175],175]
];

UseHarassingZombies          = true;             //

HSet = [
/* 0 Groups Size  */         2,                  // maximum number of zombies around a player
/* 1 Frequency */            180,                // time in seconds between each new zombie.
/* 2 Vest group */           Nothing,            // Vest function defined in ZVest.sqf
/* 3 Loot group */           Nothing,            // Loot function defined in ZLoot.sqf
/* 4 Zombie group */         Easy,               // Group function defined in ZClasses.sqf
/* 5 Avoid Territory */      true                // Zombie will not spawn in territories and will die in them if RemoveZfromTerritory is true
];

UseHorde                     = true;             // Use the horde spawner             

HordeSet = [
/* 0 Groups Size  */         15,                 // maximum number of zombies around a player
/* 1 Min Frequency */        20,                  // min time in minutes between each new zombie horde.
/* 2 Max Frequency */        30,                 // max time in minutes between each new zombie horde.
/* 3 Vest group */           Basic,              // Vest function defined in ZVest.sqf
/* 4 Loot group */           Useful,         // Loot function defined in ZLoot.sqf
/* 5 Zombie group */         MediumMil,          // Group function defined in ZClasses.sqf
/* 6 Avoid Territory */      true,              // Zombie will not spawn in territories and will die in them if RemoveZfromTerritory is true
/* 7 Horde density */        25                  // Radius in which the zombies will spawn should be lower than Min Spawn Distance.
];

UseTriggers                  = true;             //use the trigger system.

//place loot boxes and mission script here
triggerMission = compile preprocessFile "epochz\init\zmission.sqf";
triggerLootbox = compile preprocessFile "epochz\init\zmissionloot.sqf";

Trigger_1 = [				 //Cities
/* 0  Use this trigger */    true,               // Self - explanatory
/* 1  Trigger Positions */   MainCitiesOnly,             // The name of the array used to list all trigger position in the TriggerPositions.sqf file
/* 2  Max Zombies */         25,                 // The maximum number of zombies for that trigger.
/* 3  Activation Delay */    5,                 // The delay before the activation of the trigger.
/* 4  Spawn Delay */         2,                 // The delay between each zombie spawn right after the activation until the Max group size is reached.
/* 5  Respawn Delay */       600,                 // The respawn delay after the max group size was reached
/* 6  Show Trigger On Map */ false,               // Put a marker at the location and radius of the trigger on the map
/* 7  Marker Color */        "ColorRed",         // Color of the trigger
/* 8  MarkerBrush */         "Solid",            // "Solid","SolidFull","Horizontal","Vertical","Grid","FDiagonal","BDiagonal","DiagGrid","Cross","Border","SolidBorder"
/* 9  Marker Alpha */        0.2,                // Alpha of the trigger *(0 is invisible 1 is opaque)
/* 10 Marker Text */         "",                 // The text on the trigger
/* 11 Vest group */          VeryBasic,              // The name of the Array used to list all the possible vest for that trigger. ZVest.sqf
/* 12 Loot group */          Useful,             // The name of the Array used to list all the possible loot for that trigger. ZLoot.sqf
/* 13 Zombie group */        MediumMix,          // The name of the Group used to list the zombies possible for that trigger.  ZClasses.sqf
/* 14 Avoid Territory */     true,              // Zombie will not spawn in territories and will die in them if RemoveZfromTerritory is true
/* 15 Mission Radius */      0,                  // Up to how far from the center of the trigger the mission LOOT can spawn.
/* 16 Mission SQF */         nil,                // The location of the Mission file related to that trigger *(use M3Editor to create the file.) THIS IS STATIC AND WILL NOT MOVE WITH THE TRIGGER
/* 17 Loot Box */            nil,                 // The location of the Missionloot file related to that trigger *(See example file zmissionloot.sqf)
/* 18 Heli Crash Flag */	 false                 // Are these heli-crash sites
];

Trigger_2 = [				 //Military
/* 0  Use this trigger */    true,               
/* 1  Trigger Positions */   Military,        
/* 2  Max Zombies */         20,                 
/* 3  Activation Delay */    5,                 
/* 4  Spawn Delay */         2,                 
/* 5  Respawn Delay */       300,                 
/* 6  Show Trigger On Map */ false,               
/* 7  Marker Color */        "ColorRed",         
/* 8  MarkerBrush */         "Solid",            
/* 9  Marker Alpha */        0.2,                
/* 10 Marker Text */         "",                 
/* 11 Vest group */          Basic,              
/* 12 Loot group */          Useful,             
/* 13 Zombie group */        MediumMil,          
/* 14 Avoid Territory */     true,              
/* 15 Mission Radius */      0,                  
/* 16 Mission SQF */         nil,                
/* 17 Loot Box */            nil,                 
/* 18 Heli Crashes */        false                 
];

Trigger_3 = [				 //No Buildings
/* 0  Use this trigger */    true,               
/* 1  Trigger Positions */   NoBuildings,        
/* 2  Max Zombies */         10,                 
/* 3  Activation Delay */    5,                 
/* 4  Spawn Delay */         6,                 
/* 5  Respawn Delay */       300,                 
/* 6  Show Trigger On Map */ false,               
/* 7  Marker Color */        "ColorRed",         
/* 8  MarkerBrush */         "Solid",            
/* 9  Marker Alpha */        0.2,                
/* 10 Marker Text */         "",                 
/* 11 Vest group */          VeryBasic,              
/* 12 Loot group */          Useful,             
/* 13 Zombie group */        Easy,          
/* 14 Avoid Territory */     true,              
/* 15 Mission Radius */      0,                  
/* 16 Mission SQF */         nil,                
/* 17 Loot Box */            nil,                 
/* 18 Heli Crashes */        false                 
];


Trigger_4 = [				 //No Man Land
/* 0  Use this trigger */    false,               
/* 1  Trigger Positions */   Towns,       
/* 2  Max Zombies */         10,                 
/* 3  Activation Delay */    15,                 
/* 4  Spawn Delay */         15,                 
/* 5  Respawn Delay */       300,                 
/* 6  Show Trigger On Map */ false,               
/* 7  Marker Color */        "ColorRed",         
/* 8  MarkerBrush */         "DiagGrid",            
/* 9  Marker Alpha */        0.2,                
/* 10 Marker Text */         "",                 
/* 11 Vest group */          VeryBasic,              
/* 12 Loot group */          DocAndAmmo,         
/* 13 Zombie group */        MediumMix,               
/* 14 Avoid Territory */     true,              
/* 15 Mission Radius */      0,                  
/* 16 Mission SQF */         nil,                
/* 17 Loot Box */            nil,                 
/* 18 Heli Crashes */        false                 
];

Trigger_5 = [				 //Mission Trigger
/* 0  Use this trigger */    false,               
/* 1  Trigger Positions */   Mission,            
/* 2  Max Zombies */         18,                 
/* 3  Activation Delay */    4,                  
/* 4  Spawn Delay */         3,                  
/* 5  Respawn Delay */       5,                  
/* 6  Show Trigger On Map */ false,               
/* 7  Marker Color */        "ColorYellow",      
/* 8  MarkerBrush */         "Solid",            
/* 9  Marker Alpha */        0.4,                
/* 10 Marker Text */         "",     
/* 11 Vest group */          Basic,              
/* 12 Loot group */          DocAndAmmo,         
/* 13 Zombie group */        MediumMix,           
/* 14 Avoid Territory */     true,              
/* 15 Mission Radius */      1500,               
/* 16 Mission SQF */         triggerMission,    
/* 17 Loot Box */            nil,                 
/* 18 Heli Crashes */        false                 
];

Trigger_6 = [				 //Towns
/* 0  Use this trigger */    true,               
/* 1  Trigger Positions */   Towns,        
/* 2  Max Zombies */         15,                 
/* 3  Activation Delay */    5,                 
/* 4  Spawn Delay */         4,                 
/* 5  Respawn Delay */       300,                 
/* 6  Show Trigger On Map */ false,               
/* 7  Marker Color */        "ColorRed",         
/* 8  MarkerBrush */         "Solid",            
/* 9  Marker Alpha */        0.2,                
/* 10 Marker Text */         "",                 
/* 11 Vest group */          VeryBasic,              
/* 12 Loot group */          Useful,             
/* 13 Zombie group */        Easy,          
/* 14 Avoid Territory */     true,              
/* 15 Mission Radius */      0,                  
/* 16 Mission SQF */         nil,                
/* 17 Loot Box */            nil,                 
/* 18 Heli Crashes */        false                 
];

Trigger_7 = [				 //Heli Crash Sites
/* 0  Use this trigger */    true,               
/* 1  Trigger Positions */   Heli_Crashes,        
/* 2  Max Zombies */         20,                 
/* 3  Activation Delay */    5,                 
/* 4  Spawn Delay */         5,                 
/* 5  Respawn Delay */       300,                 
/* 6  Show Trigger On Map */ false,               
/* 7  Marker Color */        "ColorRed",         
/* 8  MarkerBrush */         "Solid",            
/* 9  Marker Alpha */        0.2,                
/* 10 Marker Text */         "",                 
/* 11 Vest group */          Basic,              
/* 12 Loot group */          Useful,             
/* 13 Zombie group */        MediumMil,          
/* 14 Avoid Territory */     true,              
/* 15 Mission Radius */      0,                  
/* 16 Mission SQF */         nil,                
/* 17 Loot Box */            nil,                 
/* 18 Heli Crashes */        true                 
];

// List all the trigger group to use here.
Triggers = [Trigger_1,Trigger_2,Trigger_3,Trigger_4,Trigger_5,Trigger_6,Trigger_7];

// DON'T EDIT BELOW

#include "code\post_init.sqf";