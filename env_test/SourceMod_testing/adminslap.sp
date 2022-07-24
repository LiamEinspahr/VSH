#include <sourcemod>
#include <sdktools>

public Plugin author = 
{
    name = "Get Slapt",
    author = "Liam",
    description = "Nah",
    version = "6.9",
    url = "https://www.google.com/",

};

public void OnPluginStart()
{
    RegAdminCmd("sm_getslapt", CBFUNC, ADMFLAG_SLAY);
    LoadTranslations("common.phrases.txt"); // Required for FindTarget fail reply
}

public Action CBFUNC(int client, int args)
{
char arg1[32], arg2[32];

/* By default, we set damage = 0 */
int damage = 0;

/* Get the first argument */
GetCmdArg(1, arg1, sizeof(arg1));

/* If there are 2 or more arguments, we set damage to
    * what the user specified. If a damage isn't specified
    * then it will stay zero. */
if (args >= 2)
{
    GetCmdArg(2, arg2, sizeof(arg2));
    damage = StringToInt(arg2);
}

/* Try and find a matching player */
int target = FindTarget(client, arg1);
if (target == -1)
{
    /* FindTarget() automatically replies with the 
        * failure reason and returns -1 so we know not 
        * to continue
        */
    return Plugin_Handled;
}

SlapPlayer(target, damage);
ReplyToCommand(client, "[SM] You slapped %N for %d damage!", target, damage);

return Plugin_Handled;

}