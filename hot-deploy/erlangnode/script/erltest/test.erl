-module(test).

-import(lists, [delete/2, foreach/2, map/2, member/2,reverse/2]).

-define(javarpc_ip, "127.0.0.1").
-define(javarpc_port, 9090).

-export([start/1,start/0,ping/0,testScv/0,listMap/0,groovyScv/0]).

start() -> start("localhost").

start(Ofbiz_server)->
   
    MBox = ecc,
	OfbizNode = ofbiz@JOHN,
	
	%simple ping test
	MsgValue = "any thing",
	MsgKey = "message",
	PingData = [{MsgKey, MsgValue}],
   
	javarpc:call("ping",PingData),

	%testScv
	MapData = {message,"any thing new"},
	TestScvData = [{"defaultValue", 12345},MapData],
	%Response = javarpc:call("testScv",TestScvData),
	%io:format("Response is ~p~n" ,[Response]),
   
    % test list of map as the value 
	
	TestListMap = [{"listMap",TestScvData},{"mapfield",MapData},{"message",MsgValue}],
	%javarpc:call("testListMap",TestListMap),

	% test the 
ok.

listMap() ->
	MapData = {message,"any thing new"},
	MapData2 = {msgAtom,"any"},
	MapData3 = {message3,"anythingAtom"},
	MsgValue = "any thing",
	TestScvData = [{defaultValue, 12345.678},MapData,MapData2, {cxy, {ff,ff}}, {d, "ddd"},{sdds, [{dd, 22}, {dsd,sddsds}]}],
	TupleData = {"a",bAtom,c,"d",coolAtom},
	
	%%
	TestData = [content,machine,'1287:632995:203004',"machine",
                             null,null,null,null,"shixianfang",null,null,null,
                             null,null,
                             {machine,'1287:632995:203004',"Windows2000df",
                                 "\\\\192.168.0.176","administrator","test1",
                                 "0","nt","unknown","WMI","#","login",
                                 "password",[],[],null,"GBK",null,"interJavalib",
                                 22,"0",3,"1",null,"passwd",null,27,"SERVER",
                                 [{port,0},
                                  {is_realtime_monitor,"false"},
                                  {snmpParam,
                                      [{contextId,null},
                                       {passwd,null},
                                       {privPasswd,null},
                                       {snmpPort,161},
                                       {setCommunity,null},
                                       {snmpVer,null},
                                       {authType,null},
                                       {getCommunity,null},
                                       {user,null},
                                       {timeout,300},
                                       {contextName,null}]},
                                  {'_proxy',"default"},
                                  {telnetParam,
                                      [{port,23},
                                       {superPrompt,null},
                                       {passwd,null},
                                       {passwdPrompt,null},
                                       {prompt,null},
                                       {superPasswd,null},
                                       {superUser,null},
                                       {user,null},
                                       {timeout,5000},
                                       {userPrompt,null}]},
                                  {y,"165"},
                                  {x,"315"}],
                                 "other"}],
			%%
			TestData1 = [machine,'1287:632995:203004',"Windows2000df",
                                 "\\\\192.168.0.176","administrator","test1",
                                 "0","nt","unknown","WMI","#","login",
                                 "password",null,null,null,"GBK",null,"interJavalib",
                                 22,"0",3,"1",null,"passwd",null,27,"SERVER",
                                 [{port,0},
                                  {is_realtime_monitor,"false"},
                                  {snmpParam,
                                      [{contextId,null},
                                       {passwd,null},
                                       {privPasswd,null},
                                       {snmpPort,161},
                                       {setCommunity,null},
                                       {snmpVer,null},
                                       {authType,null},
                                       {getCommunity,null},
                                       {user,null},
                                       {timeout,300},
                                       {contextName,null}]},
                                  {'_proxy',"default"},
                                  {telnetParam,
                                      [{port,23},
                                       {superPrompt,null},
                                       {passwd,null},
                                       {passwdPrompt,null},
                                       {prompt,null},
                                       {superPasswd,null},
                                       {superUser,null},
                                       {user,null},
                                       {timeout,5000},
                                       {userPrompt,null}]},
                                  {y,"165"},
                                  {x,"315"}],
                                 "other"],
	%%
	TestData3 = [{id, '1287:632995:203004'},{name, "Windows2000df"},
                                 {host, "\\\\192.168.0.176"},{login, "administrator"},{passwd, "test1"},
                                 {trace,"0"},{os,"nt"},{status,"unknown"},{method, "WMI"},{prompt,"#"},{loginprom, "login"},
                                 {passwdprom, "password"},{secondprom, null},{secondresp,null},{initshell,null},{remoteencoding,"GBK"},{sshcommand,null},{sshclient,"interJavalib"},
                                 {sshport,22},{disableconncaching,"0"},{connlimit, 3},{version,"1"},{keyfile, null},{sshauthmethod,"passwd"},{label,null},{total,27},{type, "SERVER"},
                                 {other,[{port,0},
                                  {is_realtime_monitor,"false"},
                                  {snmpParam,
                                      [{contextId,null},
                                       {passwd,null},
                                       {privPasswd,null},
                                       {snmpPort,161},
                                       {setCommunity,null},
                                       {snmpVer,null},
                                       {authType,null},
                                       {getCommunity,null},
                                       {user,null},
                                       {timeout,300},
                                       {contextName,null}]},
                                  {'_proxy',"default"},
                                  {telnetParam,
                                      [{port,23},
                                       {superPrompt,null},
                                       {passwd,null},
                                       {passwdPrompt,null},
                                       {prompt,null},
                                       {superPasswd,null},
                                       {superUser,null},
                                       {user,null},
                                       {timeout,5000},
                                       {userPrompt,null}]},
                                  {y,"165"},
                                  {x,"315"}]},
                                 {pwdmode, "other"}],
TestData4 = [{id, vcv, '1287:632995:203004'},{name, sds, "Windows2000df"},
                                 {host, "\\\\192.168.0.176"},{login, "administrator"},{passwd, "test1"},
                                 {trace,"0"},{os,"nt"},{status,"unknown"},{method, "WMI"},{prompt,"#"},{loginprom, "login"},
                                 {passwdprom, "password"},{secondprom, null},{secondresp,null},{initshell,null},{remoteencoding,"GBK"},{sshcommand,null},{sshclient,"interJavalib"},
                                 {sshport,22},{disableconncaching,"0"},{connlimit, 3},{version,"1"},{keyfile, null},{sshauthmethod,"passwd"},{label,null},{total,27},{type, "SERVER"},
                                 {other,[{port,0},
                                  {is_realtime_monitor,"false"},
                                  {snmpParam,
                                      [{contextId,""},
                                       {passwd,""},
                                       {privPasswd,""},
                                       {snmpPort,161},
                                       {setCommunity,""},
                                       {snmpVer,""},
                                       {authType,""},
                                       {getCommunity,""},
                                       {user,""},
                                       {timeout,300},
                                       {contextName,null}]},
                                  {'_proxy',"default"},
                                  {telnetParam,
                                      [{port,23},
                                       {superPrompt,null},
                                       {passwd,null},
                                       {passwdPrompt,null},
                                       {prompt,null},
                                       {superPasswd,null},
                                       {superUser,null},
                                       {user,null},
                                       {timeout,5000},
                                       {userPrompt,null}]},
                                  {y,"165"},
                                  {x,"315"}]},
                                 {pwdmode, "other"},
				 {pwdAtom,"anypassword"}],
		MachineData = [{name,"Oracle11gd"},
                     {host,"\\\\192.168.0.49"},
                     {login,"administrator"},
                     {passwd,"888888"},
                     {trace,"0"},
                     {os,"nt"},
                     {status,"unknown"},
                     {method,"WMI"},
                     {prompt,"#"},
                     {loginprom,"login"},
                     {passwdprom,"password"},
                     {secondprom,"null"},
                     {secondresp,null},
                     {initshell,null},
                     {remoteencoding,"GBK"},
                     {sshcommand,null},
                     {sshclient,"interJavalib"},
                     {sshport,"22"},
                     {disableconncaching,"0"},
                     {connlimit,"3"},
                     {version,"1"},
                     {keyfile,null},
                     {sshauthmethod,"passwd"},
                     {label,null},
                     {type,"SERVER"},
                     {other,
                         [{port,0},
                          {is_realtime_monitor,"false"},
                          {snmpParam,
                              [{contextId,null},
                               {passwd,null},
                               {privPasswd,null},
                               {snmpPort,161},
                               {setCommunity,null},
                               {snmpVer,null},
                               {authType,null},
                               {getCommunity,null},
                               {user,null},
                               {timeout,300},
                               {contextName,null}]},
							   {'_proxy',"default"},
                          {telnetParam,
                              [{port,23},
                               {superPrompt,null},
                               {passwd,null},
                               {passwdPrompt,null},
                               {prompt,null},
                               {superPasswd,null},
                               {superUser,null},
                               {user,null},
                               {timeout,5000},
                               {userPrompt,null}]},
                          {y,"390"},
                          {x,"465"}]},
                     {pwdmode,"other"}],
		MonitorData = [{proxy,"default"},
                          {activate_baseline,false},
                          {app_,localhost},
                          {class,browsa_cpu_utilization},
                          {countersInError,0},
                          {depends_condition,"good"},
                          {depends_on,"none"},
                          {disabled,false},
                          {browse,[{utilization,"utilization"}]},
                          {error_classifier,{countersInError,'>=',98," "}},
                          {error_frequency,0},
                          {frequency,600},
                          {good_classifier,{countersInError,'>=',0," "}},
                          {id,'0.22.3'},
                          {machine,"\\\\192.168.0.248"},
                          {name,"CPU Utilization:\\\\192.168.0.248dddd"},
                          {parent,'0.22'},
                          {schedule,"all"},
                          {verfiy_error,false},
                          {warning_classifier,{countersInError,'>=',70," "}}],
	TestListMap1 = [{listMap,MonitorData},{listValue,TupleData},{mapField,MachineData},{message,MsgValue}],
	%TestListMap2 = [{listMap,TestScvData},{listValue,TupleData},{mapField,[MapData, MapData2]},{message,MsgValue}],
	Response = javarpc:call("testListMap",[{message,"message data"},{listValue,TestData4}]),
	io:format("Input is ~p~n" ,[{listValue,MachineData}]),
	io:format("Response is ~p~n" ,[Response]),

ok.

ping() ->

	%simple ping test
	MsgValue = "Hello ofbiz@"++javarpc:gethostname(),
	MsgKey = message,
	PingData = [{MsgKey, MsgValue}],
   
	Response = javarpc:call("testPing",PingData),
	io:format("Response is ~p~n" ,[Response]),
	
	ok.

testScv() ->
	%testScv
	MapData = {message,"any thing new"},
	TestScvData = [{defaultValue, 12345},MapData],
	Response = javarpc:call("testScv",TestScvData),
	io:format("Response is ~p~n" ,[Response]),
ok.

groovyScv() ->
	MapData = {message,"any thing new"},
	Response = javarpc:call("testGroovy",[MapData]),
	io:format("Response is ~p~n" ,[Response]),
ok.

%testing return list
%testing input list