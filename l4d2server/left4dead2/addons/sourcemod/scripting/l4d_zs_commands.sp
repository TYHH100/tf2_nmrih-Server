// https://github.com/fbef0102/L4D1_2-Plugins/tree/master/l4d_afk_commands
#include <sourcemod>
#include <sdktools>
#include <sdkhooks>
#include <multicolors>

ConVar g_hSurvivorSuicideSeconds;
float g_fSurvivorSuicideSeconds;

public Plugin myinfo =
{
	name = "",
	author = "",
	description = "",
	version = "",
	url = ""
};

public void OnPluginStart()
{
    LoadTranslations("common.phrases");
    LoadTranslations("l4d_zs_commands.phrases");
    RegConsoleCmd("sm_zs", ForceSurvivorSuicide, "Alive Survivor Suicide himself Command.");
    g_hSurvivorSuicideSeconds = CreateConVar("l4d_afk_commands_suicide_allow_second", 			"30.0", "Allow alive survivor player suicide by using '!zs' after joining survivor team for at least X seconds.\n0=Disable !zs", FCVAR_NOTIFY, true, 0.0);
    
    GetCvars();
    g_hSurvivorSuicideSeconds.AddChangeHook(ConVarChanged_Cvars);
}

void ConVarChanged_Cvars(Handle convar, const char[] oldValue, const char[] newValue)
{
	GetCvars();
}

void GetCvars()
{
    g_fSurvivorSuicideSeconds = g_hSurvivorSuicideSeconds.FloatValue;
}

Action ForceSurvivorSuicide(int client, int args)
{
	if (g_fSurvivorSuicideSeconds > 0.0 && client && GetClientTeam(client) == 2 && !IsFakeClient(client) && IsPlayerAlive(client))
	{
		CPrintToChatAll("[{blue}Server{default}] %t","Suicide",client);
		ForcePlayerSuicide(client);
	}
	return Plugin_Handled;
}