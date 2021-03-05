-- Simplified Chinese localization file for zhCN.
local E = unpack(select(2, ...)); --Import: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local L = E.Libs.ACL:NewLocale("ElvUI", "zhCN")

local COLOR1 = '|cFF1784d1'
local COLOR2 = '|cfd9b9b9b'

L["BoP"] = true
L["BoE"] = true
L["BoU"] = true
L[" |cff00ff00bound to |r"] = " |cff00ff00绑定到 |r"
L["(Hold Shift) Memory Usage"] = "(按住Shift) 内存占用"
L["(Modifer Click) Collect Garbage"] = "(按住修饰键并点击) 垃圾回收"
L["%s frame has a conflicting anchor point. Forcing the Buffs to be attached to the main unitframe."] = true
L["%s is attempting to share his filters with you. Would you like to accept the request?"] = "%s 试图与你分享过滤器配置. 你是否接受?"
L["%s is attempting to share the profile %s with you. Would you like to accept the request?"] = "%s 试图与你分享配置文件 %s. 你是否接受?"
L["%s: %s tried to call the protected function '%s'."] = "%s: %s 尝试调用保护函数 '%s'."
L["|cFFE30000Lua error recieved. You can view the error message when you exit combat."] = "|cFFE30000LUA错误已接收, 你可以在脱离战斗后检查.|r"
L["|cffFFFFFFLeft Click:|r Change Talent Specialization"] = "|cffFFFFFF左键点击:|r 更改当前专精"
L["|cffFFFFFFRight Click:|r Change Loot Specialization"] = "|cffFFFFFF右键点击:|r 更改拾取专精"
L["|cffFFFFFFShift + Left Click:|r Show Talent Specialization UI"] = "|cffFFFFFFShift + 左键:|r 显示专精天赋框架"
L["A raid marker feature is available by pressing Escape -> Keybinds. Scroll to the bottom -> ElvUI -> Raid Marker."] = true
L["A setting you have changed will change an option for this character only. This setting that you have changed will be uneffected by changing user profiles. Changing this setting requires that you reload your User Interface."] = "你所做的改动只会影响到使用这个插件的本角色, 你需要重新加载界面才能使改动生效."
L["ABOVE_THREAT_FORMAT"] = "%s: %.0f%% [%.0f%% 以上 |cff%02x%02x%02x%s|r]"
L["Accepting this will reset the UnitFrame settings for %s. Are you sure?"] = "接受这个将重置关于%s的单位单位框架. 你确定吗？"
L["Accepting this will reset your Filter Priority lists for all auras on NamePlates. Are you sure?"] = "接受这个将重置姓名板中所有光环的过滤器优先级. 你确定吗？"
L["Accepting this will reset your Filter Priority lists for all auras on UnitFrames. Are you sure?"] = "接受这个将重置单位框架中所有光环的过滤器优先级. 你确定吗？"
L["Additive Blend"] = "覆盖混合"
L["Adjust the UI Scale to fit your screen."] = true
L["AFK"] = "离开"
L["AFK Mode"] = "离开模式"
L["All keybindings cleared for |cff00ff00%s|r."] = "取消 |cff00ff00%s|r 所有绑定的快捷键."
L["Alliance: "] = true
L["Alpha Key"] = "Alpha通道"
L["Already Running.. Bailing Out!"] = "正在运行!"
L["Alternative Power"] = "特殊能量条"
L["AP:"] = "神器能量:"
L["AP"] = "攻击强度"
L["Archeology Progress Bar"] = "考古进度条"
L["Are you sure you want to apply this font to all ElvUI elements?"] = "确定要对所有ElvUI元素使用这个字体?"
L["Are you sure you want to disband the group?"] = "确定要解散队伍?"
L["Are you sure you want to reset all the settings on this profile?"] = "确定需要重置这个配置文件中的所有设置?"
L["Are you sure you want to reset every mover back to it's default position?"] = "确定需要重置所有框架至默认位置?"
L["Arena Frames"] = "竞技场框架"
L["Arena"] = "竞技场"
L["Aura Bars & Icons"] = "光环条及图标"
L["Auras Set"] = "光环设定"
L["Auras"] = "光环"
L["Auto Scale"] = "自动缩放"
L["AVD: "] = "免伤: "
L["Avoidance Breakdown"] = "免伤统计"
L["Azerite Bar"] = "艾泽里特能量条"
L["Bag Mover (Grow Down)"] = "背包框架(向下)"
L["Bag Mover (Grow Up)"] = "背包框架(向上)"
L["Bag Mover"] = "背包框架"
L["Bags"] = "背包"
L["Bandwidth"] = "带宽"
L["Bank Mover (Grow Down)"] = "银行框架(向下)"
L["Bank Mover (Grow Up)"] = "银行框架(向上)"
L["Bank"] = "银行"
L["Bar "] = "动作条 "
L["Bars"] = "条"
L["Battleground datatexts temporarily hidden, to show type /bgstats"] = true
L["Battleground datatexts will now show again if you are inside a battleground."] = "当你处于战场时战场信息将再次显示."
L["BfA Missions"] = "BfA战役"
L["Binding"] = "绑定"
L["Binds Discarded"] = "取消绑定"
L["Binds Saved"] = "保存绑定"
L["Blend Mode"] = "混合模式"
L["Blend"] = "混合"
L["Blizzard Widgets"] = true
L["BNet Frame"] = "战网提示信息"
L["Boss Button"] = "特殊技能键"
L["Boss Frames"] = "首领框架"
L["Building(s) Report:"] = "建筑报告:"
L["Calendar"] = "日历"
L["Calling Quest(s) available."] = true
L["Can't buy anymore slots!"] = "银行背包栏位已达最大值"
L["Can't Roll"] = "无法需求此装备"
L["Caster"] = "法系输出"
L["Character: "] = "角色: "
L["Chat Set"] = "聊天设定"
L["Chat"] = "聊天框"
L["Chest"] = "胸"
L["Choose a theme layout you wish to use for your initial setup."] = "为你的个人设置选择一个你喜欢的皮肤主题."
L["Class Totems"] = "职业图腾"
L["Classbar"] = "职业特有条"
L["Classic"] = "经典"
L["Clean Boss Button"] = "简洁额外按键"
L["Combat"] = "战斗"
L["Combat/Arena Time"] = "战斗时间"
L["Config Mode:"] = "设置模式:"
L["Confused.. Try Again!"] = "请再试一次！"
L["Continue"] = "下一步"
L["Coords"] = "坐标"
L["copperabbrev"] = "|cffeda55f铜|r"
L["Count"] = "计数"
L["Current Difficulties:"] = true
L["Current Level:"] = "当前等级:"
L["CVars Set"] = "参数设定"
L["CVars"] = "参数"
L["Dark"] = "黑暗"
L["Data From: %s"] = "数据来源: %s"
L["Dead"] = "死亡"
L["Deficit:"] = "亏损:"
L["Delete gray items?"] = "删除灰色物品?"
L["Deposit Reagents"] = "导入材料"
L["Detected that your ElvUI OptionsUI addon is out of date. This may be a result of your Tukui Client being out of date. Please visit our download page and update your Tukui Client, then reinstall ElvUI. Not having your ElvUI OptionsUI addon up to date will result in missing options."] = "检测到您的ElvUI设置插件已过期.这可能是因为您的 Tukui 客户端已过期.请访问我们的下载页面并更新 Tukui 客户端，然后重新安装ElvUI.ElvUI设置插件过期会造成某些选项丢失"
L["Disable Warning"] = "禁用警告"
L["Disable"] = "禁用"
L["Disband Group"] = "解散队伍"
L["Discard"] = "取消"
L["Discord"] = "Discord"
L["DND"] = "忙碌"
L["Do you enjoy the new ElvUI?"] = "你喜欢新的ElvUI么？"
L["Do you swear not to post in technical support about something not working without first disabling the addon/module combination first?"] = "你发誓在你没停用其他插件前不会到技术支持询问某些功能失效吗？"
L["Don't forget to backup your WTF folder, all your profiles and settings are in there."] = true
L["Download"] = "下载"
L["DPS"] = "伤害输出"
L["Earned:"] = "赚取:"
L["ElvUI has a dual spec feature which allows you to load different profiles based on your current spec on the fly. You can enable it in the profiles tab."] = true
L["ElvUI Installation"] = "安装 ElvUI"
L["ElvUI is five or more revisions out of date. You can download the newest version from www.tukui.org. Get premium membership and have ElvUI automatically updated with the Tukui Client!"] = "ElvUI已过期5个或者更多的版本。你可以在www.tukui.org下载到最新的版本。购买会员可以使用Tukui客户端自动更新ElvUI"
L["ElvUI is out of date. You can download the newest version from www.tukui.org. Get premium membership and have ElvUI automatically updated with the Tukui Client!"] = "ElvUI已过期。你可以在www.tukui.org下载到最新的版本。购买会员可以使用Tukui客户端自动更新ElvUI"
L["ElvUI needs to perform database optimizations please be patient."] = "ElvUI需要进行数据库优化，请耐性等待。"
L["ElvUI Plugin Installation"] = "ElvUI插件安装"
L["ElvUI Status"] = true
L["Empty Slot"] = "空拾取位"
L["Enable"] = "启用"
L["Error resetting UnitFrame."] = "重置单位框架出现错误."
L["Experience Bar"] = "经验条"
L["Experience"] = "经验/声望条"
L["Feet"] = "脚"
L["Filter download complete from %s, would you like to apply changes now?"] = "过滤器配置下载于 %s, 你是否现在变更?"
L["Finished"] = "完成"
L["Fishy Loot"] = "贪婪"
L["Focus Castbar"] = "焦点目标施法条"
L["Focus Frame"] = "焦点目标框架"
L["FocusTarget"] = "焦点目标的目标框架"
L["Friends List"] = "好友列表"
L["From time to time you should compare your ElvUI version against the most recent version on our website or the Tukui client."] = true
L["G"] = "公会"
L["Garrison"] = "要塞"
L["Ghost"] = "鬼魂"
L["GM Ticket Frame"] = "GM对话框"
L["Gold"] = "金"
L["goldabbrev"] = "|cffffd700金|r"
L["Grid Size:"] = "网格尺寸:"
L["Hands"] = "手"
L["Head"] = "头"
L["Healer"] = "治疗"
L["Hold Control + Right Click:"] = "按住 Ctrl 并按鼠标右键:"
L["Hold Shift + Drag:"] = "按住 Shift 并拖动:"
L["Hold Shift + Right Click:"] = "按住Shift + 右键点击"
L["Home Latency:"] = "本机延迟:"
L["Home Protocol:"] = "本地协议:"
L["Honor Bar"] = "荣誉条"
L["Honor Remaining:"] = "荣誉值剩余:"
L["Honor XP:"] = "荣誉值:"
L["Horde: "] = true
L["Hover your mouse over any |cFF1784d1action|r, |cFF1784d1micro|r, |cFF1784d1macro|r, or |cFF1784d1spellbook|r button to bind it. This also works for items in your |cFF1784d1bag|r. Press the |cfd9b9b9bESC|r key to |cfd9b9b9bclear|r the current bindings."] = true
L["HP"] = "生命值"
L["HPS"] = "治疗输出"
L["I Swear"] = "我承诺"
L["I"] = "副本"
L["Icons Only"] = "图标"
L["If you accidentally removed a default chat tab you can always re-run the chat part of the ElvUI installer."] = true
L["If you are experiencing issues with ElvUI try disabling all your addons except ElvUI first."] = true
L["IL"] = "副本领袖"
L["Import Profile"] = "导入配置文件"
L["Importance: |cFF33FF33Low|r"] = "重要性:|cFF33FF33低|r"
L["Importance: |cffD3CF00Medium|r"] = "重要性: |cffD3CF00中|r"
L["Importance: |cffFF3333High|r"] = "重要度: |cffFF3333高|r"
L["In Progress"] = "正在进行中"
L["INCOMPATIBLE_ADDON"] = "%s is not compatible with %s.\nPlease select the addon/module to use."
L["Installation Complete"] = "安装完成"
L["Interrupted %s's \124cff71d5ff\124Hspell:%d:0\124h[%s]\124h\124r!"] = "已打断 %s 的 \124cff71d5ff\124Hspell:%d:0\124h[%s]\124h\124r!"
L["Invalid Target"] = "无效的目标"
L["is looking for members"] = "正在寻找队友"
L["It appears one of your AddOns have disabled the AddOn Blizzard_CompactRaidFrames. This can cause errors and other issues. The AddOn will now be re-enabled."] = "看起来你使用的一个插件使得Blizzard_CompactRaidFrames停用了。这会产生错误与问题。这个插件现在会被重新启用"
L["Item level: %.2f"] = "物品等级：%.2f"
L["Item Level:"] = "物品等级："
L["joined a group"] = "加入队伍"
L["KEY_ALT"] = "A"
L["KEY_CTRL"] = "C"
L["KEY_DELETE"] = "Del"
L["KEY_HOME"] = "Hm"
L["KEY_INSERT"] = "Ins"
L["KEY_MOUSEBUTTON"] = "M"
L["KEY_MOUSEWHEELDOWN"] = "MwD"
L["KEY_MOUSEWHEELUP"] = "MwU"
L["KEY_NUMPAD"] = "N"
L["KEY_PAGEDOWN"] = "PD"
L["KEY_PAGEUP"] = "PU"
L["KEY_SHIFT"] = "S"
L["KEY_SPACE"] = "SpB"
L["Key"] = "键"
L["Layout Set"] = "界面布局设置"
L["Layout"] = "界面布局"
L["Left Chat"] = "左侧对话框"
L["Left Click:"] = "左键:"
L["Legs"] = "腿"
L["Level Up Display / Boss Banner"] = "升级提示/Boss拾取"
L["List of installations in queue:"] = "即将安装的列表:"
L["Lock"] = "锁定"
L["LOGIN_MSG_HELP"] = ("Please use */ehelp|r for a list of available *ElvUI|r commands."):gsub('*', COLOR1)
L["LOGIN_MSG"] = ("Welcome to *ElvUI|r version *%s|r, type */ec|r to access the in-game configuration menu. If you are in need of technical support you can visit us at https://www.tukui.org or join our Discord: https://discord.gg/xFWcfgE"):gsub('*', COLOR1)
L["Loot / Alert Frames"] = "拾取/提醒框"
L["Loot Frame"] = "拾取框架"
L["Lord! It's a miracle! The download up and vanished like a fart in the wind! Try Again!"] = "天啊! 太奇葩了! 下载消失了! 就像在风中放了一个屁... 再试一次吧!"
L["Loss Control Icon"] = "失去控制图标"
L["lvl"] = "等级"
L["MA Frames"] = "主助理框"
L["Main Hand"] = "主手"
L["Max Rank"] = "最高等级"
L["Micro Bar"] = "微型系统菜单"
L["Minimap"] = "小地图"
L["MirrorTimer"] = "镜像计时器"
L["Mission(s) Report:"] = "任务报告:"
L["Mitigation By Level: "] = "等级减伤: "
L["Mobile"] = "App"
L["Modulating Blend"] = "忽略Alpha通道"
L["Mov. Speed:"] = _G.STAT_MOVEMENT_SPEED
L["MT Frames"] = "主坦克框"
L["Naval Mission(s) Report:"] = "海军任务报告:"
L["Nazjatar Follower XP"] = "纳沙塔尔随从经验"
L["Need help? Join our Discord: https://discord.gg/xFWcfgE"] = true
L["No bindings set."] = "无绑定设定"
L["No gray items to delete."] = "没有要删除的灰色物品"
L["No Guild"] = "没有公会"
L["No, Revert Changes!"] = "不，撤销修改！"
L["Nudge"] = "微调"
L["O"] = "官员"
L["Objective Frame"] = "任务框架"
L["Offhand"] = "副手"
L["Offline"] = "离线"
L["Oh lord, you have got ElvUI and Tukui both enabled at the same time. Select an addon to disable."] = "你不能同时使用Elvui和Tukui，请选择一个禁用."
L["One or more of the changes you have made require a ReloadUI."] = "已变更一或多个设定，需重载界面."
L["One or more of the changes you have made will effect all characters using this addon. You will have to reload the user interface to see the changes you have made."] = "你所做的改动可能会影响到使用这个插件的所有角色，你需要重新加载界面才能使改动生效。"
L["P"] = "队伍"
L["Party Frames"] = "小队框架"
L["Pending"] = "等待中"
L["Pet Bar"] = "宠物动作条"
L["Pet Castbar"] = "宠物施法条"
L["Pet Frame"] = "宠物框架"
L["PetTarget"] = "宠物的目标框架"
L["PL"] = "队长"
L["Player Buffs"] = "玩家增益"
L["Player Castbar"] = "玩家施法条"
L["Player Debuffs"] = "玩家减益"
L["Player Frame"] = "玩家框架"
L["Player NamePlate"] = "玩家姓名板"
L["Player Powerbar"] = "玩家能量条"
L["Please click the button below so you can setup variables and ReloadUI."] = "请按下方按钮设定变数并重载介面。"
L["Please click the button below to setup your CVars."] = "请按下方按钮设定参数."
L["Please press the continue button to go onto the next step."] = "请按继续按钮到下一步"
L["Plugins"] = "插件"
L["Preview"] = "预览"
L["Profile download complete from %s, but the profile %s already exists. Change the name or else it will overwrite the existing profile."] = "配置文件从 %s 下载完成, 但是配置文件 %s 已存在. 请更改名称, 否则它会覆盖你的现有配置文件."
L["Profile download complete from %s, would you like to load the profile %s now?"] = "配置文件从 %s 下载完成, 你是否加载配置文件 %s?"
L["Profile request sent. Waiting for response from player."] = "已发送文件请求. 等待对方响应."
L["Profit:"] = "利润:"
L["Purchase Bags"] = "购买背包"
L["Purchase"] = "购买"
L["R"] = "团队"
L["Raid Menu"] = "团队菜单"
L["Raid Pet"] = "团队宠物框架"
L["Raid-40"] = "40人团队框架"
L["Raid"] = "团队框架"
L["Reagent Bank"] = "材料银行"
L["Remaining:"] = "剩余:"
L["Remove Bar %d Action Page"] = "移除第%d动作条"
L["Reputation Bar"] = "声望条"
L["Request was denied by user."] = "请求被对方拒绝."
L["Reset Session Data: Hold Ctrl + Right Click"] = true
L["Reset Character Data: Hold Shift + Right Click"] = true
L["Reset Position"] = "重设位置"
L["Rested:"] = "休息:"
L["Right Chat"] = "右侧对话框"
L["Right Click the bag icon to assign a type of item to this bag."] = "右键点击背包按钮来选择将某一类型的物品放在此背包中"
L["RL"] = "团队领袖"
L["Role: Healer, Tank, Damage"] = true
L["Role: Tank, Damage, Healer"] = "职责：坦克，输出，治疗"
L["Role: Tank, Healer, Damage"] = "职责：坦克，治疗，输出"
L["RW"] = "团队警告"
L["Save"] = "储存"
L["Saved Dungeon(s)"] = "已有进度的地下城"
L["Saved Raid(s)"] = "已有进度的副本"
L["says"] = "说"
L["Select the type of aura system you want to use with ElvUI's unitframes. Set to Aura Bar & Icons to use both aura bars and icons, set to icons only to only see icons."] = "选择你想使用的光环系统类型. 选择光环条及图标将会同时显示光环条及图标，选择图标将只会显示图标."
L["Server: "] = "服务器: "
L["Session:"] = "本次登陆:"
L["Setup Chat"] = "设定聊天框"
L["Setup CVars"] = "设定参数"
L["Shoulder"] = "肩"
L["Show/Hide Reagents"] = "显示/隐藏材料"
L["Shows a frame with needed info for support."] = true
L["silverabbrev"] = "|cffc7c7cf银|r"
L["Skip Process"] = "跳过"
L["Sort Tab"] = "选项排列"
L["SP"] = "法术强度"
L["Spec"] = "专精"
L["Spell/Heal Power"] = "法术/治疗强度"
L["Spent:"] = "花费:"
L["Stance Bar"] = "姿态条"
L["Steps"] = "步骤"
L["Sticky Frames"] = "框架依附"
L["System"] = "系统信息"
L["Talent/Loot Specialization"] = "天赋/拾取专精"
L["Talking Head Frame"] = "剧情对话框"
L["Tank / Physical DPS"] = "坦克/物理输出"
L["Target Castbar"] = "目标施法条"
L["Target Frame"] = "目标框架"
L["Target Powerbar"] = "目标能量条"
L["Targeted By:"] = "同目标的有:"
L["TargetTarget Frame"] = "目标的目标框架"
L["TargetTargetTarget Frame"] = "目标的目标的目标框架"
L["Temporary Move"] = "移动背包"
L["The chat windows function the same as Blizzard standard chat windows, you can right click the tabs and drag them around, rename, etc. Please click the button below to setup your chat windows."] = "对话窗口与 WOW 原始对话窗口的操作方式相同，你可以拖拉、移动分页或重新命名分页。请按下方按钮以设定对话窗口。"
L["The in-game configuration menu can be accessed by typing the /ec command. Press the button below if you wish to skip the installation process."] = true
L["The profile you tried to import already exists. Choose a new name or accept to overwrite the existing profile."] = "你尝试导入的配置文件已经存在。请选择一个新的名字或者确认覆盖存在的配置文件。"
L["The spell '%s' has been added to the Blacklist unitframe aura filter."] = "法术\"%s\"已经被添加到单位框架的光环过滤器中."
L["Theme Set"] = "主题设置"
L["Theme Setup"] = "主题安装"
L["This install process will help you learn some of the features in ElvUI has to offer and also prepare your user interface for usage."] = "此安装程序有助你了解 ElvUI 部份功能，并可协助你预先设定 UI。"
L["This part of the installation process sets up your chat windows names, positions and colors."] = "此安装步骤将会设定聊天框的名称、位置和颜色。"
L["This part of the installation process sets up your World of Warcraft default options it is recommended you should do this step for everything to behave properly."] = "此安装步骤将会设定 WOW 预设选项，建议你执行此步骤，以确保功能均可正常运作。"
L["This setting caused a conflicting anchor point, where '%s' would be attached to itself. Please check your anchor points. Setting '%s' to be attached to '%s'."] = "这个设置引起一个互相矛盾的锚点, '%s' 被依附于他自身. 请检查你的锚点设置. 设置 '%s' 依附到 '%s'."
L["This will change the layout of your unitframes and actionbars."] = "这将会改变你单位框架和动作条的构架。"
L["To list all available ElvUI commands, type in chat /ehelp"] = true
L["To quickly move around certain elements of the UI, type /moveui"] = true
L["To setup chat colors, chat channels and chat font size, right-click the chat tab name."] = true
L["Toggle Bags"] = "背包开关"
L["Toggle Chat Frame"] = "开关聊天框架"
L["Toggle Configuration"] = "设置开关"
L["Tooltip"] = "鼠标提示"
L["Total CPU:"] = "CPU占用"
L["Total Memory:"] = "总内存:"
L["Total: "] = "合计: "
L["Trigger"] = "触发器"
L["Type /hellokitty to revert to old settings."] = "输入/hellokitty以撤销到原来的设定"
L["BelowMinimapWidget"] = true
L["TopWidget"] = true
L["PowerBarWidget"] = true
L["Unhittable:"] = "未命中:"
L["Vehicle Seat Frame"] = "载具座位框"
L["Vendor / Delete Grays"] = "出售/删除灰色物品"
L["Vendor Grays"] = "出售灰色物品"
L["Vendored gray items for: %s"] = "已出售灰色物品: %s"
L["Vendoring Grays"] = "正在出售灰色物品"
L["Voice Overlay"] = "语音界面"
L["Waist"] = "腰"
L["Welcome to ElvUI version %.2f!"] = "欢迎使用 ElvUI 版本 %.2f!"
L["whispers"] = "密语"
L["World Latency:"] = "世界延迟:"
L["World Protocol:"] ="世界协议:"
L["Wrist"] = "护腕"
L["XP:"] = "经验:"
L["yells"] = "大喊"
L["Yes, Keep Changes!"] = "是的，保存修改！"
L["You are now finished with the installation process. If you are in need of technical support please visit us at http://www.tukui.org."] = "你已经完成安装过程. 如果你需要技术支持请访问http://www.tukui.org"
L["You are using CPU Profiling. This causes decreased performance. Do you want to disable it or continue?"] = "你正在追踪CPU使用记录. 这将导致性能低下. 你想禁用它还是继续?"
L["You can access the copy chat and chat menu functions by left/right clicking on the icon in the top right corner of the chat panel."] = true
L["You can access the microbar by using middle mouse button on the minimap. You can also enable the MicroBar in the actionbar settings."] = true
L["You can always change fonts and colors of any element of ElvUI from the in-game configuration."] = "你可以在游戏内的设定选项内更改ElvUI的字体、颜色等设定."
L["You can enter the keybind mode by typing /kb"] = true
L["You can now choose what layout you wish to use based on your combat role."] = "你现在可以根据你的战斗角色选择合适的布局。"
L["You can quickly change your displayed DataTexts by mousing over them while holding ALT."] = true
L["You can see someones average item level inside the tooltip by holding shift and mousing over them."] = true
L["You don't have enough money to repair."] = "没有足够的资金来修复."
L["You don't have permission to mark targets."] = "你没有标记目标的权限"
L["You have imported settings which may require a UI reload to take effect. Reload now?"] = "你导入的设置可能需要重载界面才能生效。确认重载？"
L["You must be at a vendor."] = "你必需以商人为目标."
L["You must purchase a bank slot first!"] = "你必需购买一个银行背包栏位"
L["Your items have been repaired for: "] = "装备已修复: "
L["Your items have been repaired using guild bank funds for: "] = "物品已使用公会银行资金修复: "
L["Your profile was successfully recieved by the player."] = "你的配置文件已被其他玩家成功接收."
L["Zone Ability"] = "区域技能"

----------------------------------
L["DESC_MOVERCONFIG"] = [=[解除框架移动锁定. 现在可以移动它们, 移好后请点击「锁定」.

选项：
  左键 - 打开微调窗口.
  右键 - 打开配置窗口.
  Shift + 右键 - 暂时隐藏定位开关
  Ctrl + 右键 - 重置定位开关位置
]=]

L["EHELP_COMMANDS"] = ([=[Here is a list of all important *ElvUI|r commands:
 */ec|r or */elvui|r  -  Toggle the *OptionsUI|r.
 */moveui|r  -  Toggle anchors to reposition various elements.
 */kb|r  -  Toggle the keybind mode.
 */resetui|r  -  Reset all frames to their original positions.
 */bgstats|r  -  Toggle Battleground stats on your DataTexts.
 */hdt|r  -  Edit your DataTexts without opening the *OptionsUI|r.
 */estatus|r  -  Important informations for support questions.
 */egrid|r ^64|r or ^128|r or ^256|r  -  Toggle a pixel grid.
 */luaerror|r ^on|r or ^off|r  -  Disable all AddOns except ElvUI.
  NOTE: */luaerror|r ^off|r will re-enable the addons disabled from
  using */luaerror|r ^on|r within that session.
]=]):gsub('*', COLOR1):gsub('%^', COLOR2)
