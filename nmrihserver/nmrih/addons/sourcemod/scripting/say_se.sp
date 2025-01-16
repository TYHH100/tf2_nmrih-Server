#include <sourcemod>
#include <sdktools>
#include <morecolors>

#define PLUGIN_VERSION "1.0.1"

public Plugin:myinfo =  
{
	name = "say_se",
	author = "",
	description = "用于对分组地图,发送相关文本",
	version = PLUGIN_VERSION,
	url = ""
};

public OnPluginStart()
{
	RegServerCmd("sm_say_se",				sm_say_se);
	RegServerCmd("sm_say_rc",				sm_say_rc);
	RegServerCmd("sm_say_sechallenge",		sm_say_sechallenge); // 摸鱼馆UMC地图池中的挑战图分组
	RegServerCmd("sm_say_sepracticesabre",	sm_say_sepracticesabre); // 摸鱼馆UMC地图池中的练刀图分组
	RegServerCmd("sm_say_sepvp",			sm_say_sepvp);
	RegServerCmd("sm_say_senmo",			sm_say_senmo);
	RegServerCmd("sm_say_senms",			sm_say_senms);
	RegServerCmd("sm_say_semg",				sm_say_semg);
}

public Action:sm_say_se(args)
{
	if (args < 1)
	{
		PrintToServer("Usage: sm_say_se <message>");
		return Plugin_Handled;
	}

	new String: display_message[192];
	GetCmdArg(1, display_message, sizeof(display_message));

	if (strcmp(display_message, " ") != 0)
	{
		CPrintToChatAll("{blue}[Server]:{white}%s", display_message);
	}
		
	return Plugin_Handled;
}

public Action:sm_say_rc(args)
{
	if (args < 1)
	{
		PrintToServer("Usage: sm_say_rc <message>");
		return Plugin_Handled;
	}

	new String: display_message[192];
	GetCmdArgString(display_message, sizeof(display_message));

	if (strcmp(display_message, " ") != 0)
	{
		CPrintToChatAll("{blue}[Rcon消息]:{white}%s", display_message);
	}
		
	return Plugin_Handled;
}

public Action:sm_say_sechallenge(args)
{
	CPrintToChatAll("{blue}[Server]:{red}挑战图{white},希望你们做好准备!");
	return Plugin_Handled;
}

public Action:sm_say_sepracticesabre(args)
{
	CPrintToChatAll("{blue}[Server]:{lawngreen}练刀图{white},各位练刀愉快()");
	return Plugin_Handled;
}

public Action:sm_say_sepvp(args)
{
	CPrintToChatAll("{blue}[Server]:{palegoldenrod}PvP图{white},注意你的身后!");
	return Plugin_Handled;
}

public Action:sm_say_senmo(args)
{
	CPrintToChatAll("{blue}[Server]:{lime}任务图{white},跟随任务完成地图.");
	return Plugin_Handled;
}

public Action:sm_say_senms(args)
{
	CPrintToChatAll("{blue}[Server]:{coral}防守图{white},看好据点!");
	return Plugin_Handled;
}

public Action:sm_say_semg(args)
{
	CPrintToChatAll("{blue}[Server]:{hotpink}小游戏图{white},注意看作者的说明或其他观察熟练的玩家操作,进行游玩.\n如果服务器有对相关地图有玩法进行说明记得查看!");
	return Plugin_Handled;
}