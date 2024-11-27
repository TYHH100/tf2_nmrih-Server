## [AFK Manager](https://forums.alliedmods.net/showthread.php?t=79904)
用于接管游戏自带的AFK

## [Ultimate Mapchooser](https://github.com/Steell/Ultimate-Mapchooser/tree/master)
提供地图分组、玩家监控、以及设置地图到几点可以投票等相关功能

## [WinRate](https://forums.alliedmods.net/showthread.php?p=2578250)
记录通关次数和游玩次数

这边的修改是删除了，服务器名字的检测

需要配置MySQL

指令
- !wr

## [Death Notifications](https://forums.alliedmods.net/showthread.php?p=2082035)
在聊天框提示,玩家的死亡信息

## say_se
代码来自[
HLstatsX Community Edition|hlstatsx.sp](https://bitbucket.org/Maverick_of_UC/hlstatsx-community-edition/src/master/sourcemod/scripting/hlstatsx.sp)

用于向聊天框发送,相关消息

## [Backpack 2](https://github.com/dysphie/nmrih-backpack2?tab=readme-ov-file)
提供也可以供玩家存储物品的背包(容器)

## [Guaranteed Spawn](https://github.com/dysphie/nmrih-guaranteedspawn)
允许刚加入的玩家,复活在指定玩家旁边

自带防护,如果你死了退出重新进来,是无法复活的

## [Inventory Ornaments](https://github.com/dysphie/nmrih-inventory-ornaments)
在玩家人物身上显示相应的物品

例如医疗包、药品、任务道具等

## [NMO Guard](https://github.com/dysphie/nmo-guard)
允许玩家找回丢失的任务道具

三方地图自定义的可能无法找回

指令
- !softlock

## [Better Tools](https://github.com/dysphie/nmrih-better-tools)
改善一些工具的作用

## [Player Pings](https://github.com/dysphie/nmrih-ping-system)
为玩家提供一个标点功能

指令
- !ping

按键绑定
- bind "," sm_ping

## [Shepherd](https://github.com/dysphie/nmrih-shepherd)
用于处理,需要所有人在的点,但未有玩家跟上的

指令
- !missing

管理员指令
- !ultimatum
- !checkpoints

## [Door Grief Protection](https://github.com/dysphie/nmrih-door-protect)
如果玩家被门卡住,将会把门变成半透明可穿过的

## [HUD](https://github.com/F1F88/HUD)
在屏幕右边,为玩家提供血量、耐力、武器弹药和状态显示等功能

## [obj_translator](https://github.com/clague/nmrih-server/blob/master/nmrihsrv/nmrih/addons/sourcemod/scripting/obj_translator.sp)
提供地图翻译

## [Say Sounds](https://forums.alliedmods.net/showthread.php?p=729788)
提供聊天触发词的音频播放

列如放音乐或wow音频

## [Scoreboard Tweaks](https://github.com/dysphie/nmrih-scoreboard-tweaks)
用于恢复掉线玩家的分数

## [Weapon Configs: Ex](https://github.com/dysphie/nmrih-weapon-configs-ex)
用于修改武器的相关数据

## [Weapon Menu](https://forums.alliedmods.net/showthread.php?t=212705)
给玩家赐予相关物品

## [Server Hud Logo](https://forums.alliedmods.net/showthread.php?p=1664292)
在屏幕上添加文本

管理员指令
- !serverlogo_reload

## [SteamWorks.ext Update Check](https://forums.alliedmods.net/showthread.php?t=269826) | [Automatic Steam Update](https://forums.alliedmods.net/showthread.php?p=2238058)
提供更新自动重启

需要扩展
[SteamWorks](https://github.com/hexa-core-eu/SteamWorks)

需要搭配启动项
```Shell
    -autoupdate //在游戏启动的时候自动检查更新
    -steam_dir /home/steamcmd //设置steamcmd文件路径
    -steamcmd_script /home/steamcmd/nmrih.txt //设置执行脚本或txt文件路径
```

## [Invisible Weapons Fix](https://github.com/dysphie/nmrih-invisible-weapons-fix)
修复丢地上的武器无法看见的问题

## [Full Infinite Ammo](https://forums.alliedmods.net/showthread.php?p=2082039)
提供无限备弹或弹夹、无限体力

## [Hostname Waves & Objectives](https://forums.alliedmods.net/showthread.php?p=2280126)
提供服务器名字后缀动态变化的当前任务或当前回合

## [Clear map](https://forums.alliedmods.net/showthread.php?p=2284631)
提供清理物品和僵尸的指令

管理员指令
- !clear
- !nonpcs
- !count

## [HexTags](https://forums.alliedmods.net/showthread.php?p=2566623)
可以给玩家名字前面加上前缀

管理员指令
- !reloadtags

需要插件[Chat-Processor](https://forums.alliedmods.net/showthread.php?p=2448733)

## [Simple respawn the players](https://forums.alliedmods.net/showthread.php?p=2548908)
提供复活玩家清理僵尸等相关功能

管理员指令
- !rsp

## [Fake sv_downloadurl to players](https://forums.alliedmods.net/showthread.php?p=1572227)
为玩家提供虚假的返回链接

原因是在玩家那边控制台输入sv_downloadurl

是会返回服务器那边配置的下载链接,可能会出现盗刷的情况

所以这个插件提供了一个可以配置假的返回文本或链接

## [Delay Command](https://forums.alliedmods.net/showthread.php?t=309101)
用于延迟执行指令

## [Custom Votes Redux - Modified](https://github.com/caxanga334/cvreduxmodified)
提供一个自定义投票功能

指令
- !votemenu

管理员指令
- !customvotes_reload

## [SourceBans++](https://github.com/sbpp/sourcebans-pp/)
提供多服务器管理

例如添加管理员、发送rcon、添加ban

需要配置MySQL 5.6或MariaDB 10以及PHP 8.1或更高版本

假如Web是1.6.4
需要配置PHP 5.6

需要以及扩展PHP
- sockets
- imap
- gmp
- pdo_mysql
- mysqli

## [Anti-Stuck](https://forums.alliedmods.net/showthread.php?p=2590950)
可以让玩家脱离卡点

指令
- !stuck

## [Advenced help menu](https://forums.alliedmods.net/showthread.php?p=2798458)
提供可以打开的菜单

修改:插件添加了,玩家加入游戏聊天框提示!h

管理员指令
- !advhr

## [AutoJoinGame](https://forums.alliedmods.net/showthread.php?p=2069806)
自动跳过加入游戏