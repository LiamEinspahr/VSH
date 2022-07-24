#include <sourcemod>
 
public Plugin myinfo =
{
	name = "HelloWorld",
	author = "Me",
	description = "My first plugin ever",
	version = "1.0",
	url = "http://www.sourcemod.net/"
};
 
public void OnPluginStart()
{
	PrintCenterTextAll("Hello world!");
}

