local tableHelper = require("../")

local Class = {}
Class.__index = Class

local deleted = tableHelper.Deleted.new(Class, "Class")

function Class.new()
	return setmetatable({
		name = "Class",
	}, Class)
end

function Class.doSomething(self)
	print("Hello,", self.name)
end

function Class.delete(self)
	deleted:setmetatable(self)
end

local class = Class.new()
class:doSomething()
class:delete()
class:doSomething()
