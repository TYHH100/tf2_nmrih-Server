// https://github.com/fdxx/l4d2_nativevote/blob/main/vote_example.sp
// https://www.bilibili.com/opus/637365823887900680
#pragma semicolon 1
#pragma newdecls required

#include <sourcemod>
#include <l4d2_nativevote>

public void OnPluginStart()
{
	RegConsoleCmd("sm_vote_realism", Cmd_VoteRealism);
}

Action Cmd_VoteRealism(int client, int args)
{
	if (!L4D2NativeVote_IsAllowNewVote())
	{
		PrintToChat(client, "currently not allowed initiate a new vote.");
		return Plugin_Handled;
	}

	L4D2NativeVote vote = L4D2NativeVote(VoteHandler);

	vote.SetDisplayText("切换为:写实模式 ?", client);
	vote.Initiator = client;
	vote.Value = 42;	// int, float, bool...
	vote.SetInfoString("Some String");

	int iCount = 0;
	int[] iClients = new int[MaxClients];

	for (int i = 1; i <= MaxClients; i++)
	{
		if (IsClientInGame(i) && !IsFakeClient(i))
		{
			if (GetClientTeam(i) == 2 || GetClientTeam(i) == 3)
			{
				iClients[iCount++] = i;
			}
		}
	}

	if (!vote.DisplayVote(iClients, iCount, 20))
		LogError("Failed to start vote!");

	return Plugin_Handled;
}

void VoteHandler(L4D2NativeVote vote, VoteAction action, int param1, int param2)
{
	switch (action)
	{
		case VoteAction_End:
		{
			// if (vote.YesCount > vote.NoCount)
			if (vote.YesCount > vote.PlayerCount/2)
			{
				vote.SetPass("投票通过! 指令执行中...");

				char str[256];
				vote.GetInfoString(str, sizeof(str));
				CreateTimer(2.0, Timer_Realism);
			}
			else
			{
				vote.SetFail();
			}
		}
	}
}

public Action Timer_Realism(Handle timer)
{
	ServerCommand("sm_cvar mp_gamemode realism");
	return Plugin_Stop;
}