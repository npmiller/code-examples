#!/usr/bin/env lua

local function split(t, e)
	local ts = {}
	local tb = {}
	for i=2,#t do
		 if t[i] <= e then
			 table.insert(ts, t[i])
		 else
			 table.insert(tb, t[i])
		 end
	 end
	return ts, tb
end

local function concat(l1, e, l2)
	table.insert(l1,e)
	for i=1,#l2 do
		table.insert(l1, l2[i])
	end
	return l1
end

function quicksort(l)
	if #l == 0 then 
		return {} 
	else
		local ts, tb = split(l, l[1])
		return concat(quicksort(ts), l[1], quicksort(tb))
	end
end

