--[[
LuCI - Lua Configuration Interface

Copyright 2010 Jo-Philipp Wich <xm@subsignal.org>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0
]]--
require("luci.sys")

m = Map("n2n", translate("N2N"), translate("This is a luci for N2N , by penfj , thanks for ntop"))

s = m:section(TypedSection, "edge", "")
s.addremove = false
s.anonymous = true

enable = s:option(Flag, "enable", translate("Enable"))
name = s:option(Value, "ipaddr", translate("Ipaddr"))
supernode = s:option(Value, "supernode", translate("Supernode"))
port = s:option(Value, "port", translate("Port"))
community = s:option(Value, "community", translate("Community"))
key = s:option(Value, "key", translate("Key"))
route = s:option(Value, "route", translate("Route"))

local apply = luci.http.formvalue("cbi.apply")
if apply then
	
	io.popen("/etc/init.d/n2n restart")
end

return m

