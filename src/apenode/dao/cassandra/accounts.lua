-- Copyright (C) Mashape, Inc.

local BaseDao = require "apenode.dao.cassandra.base_dao"

local Accounts = {}
Accounts.__index = Accounts

setmetatable(Accounts, {
  __index = BaseDao, -- this is what makes the inheritance work
  __call = function (cls, ...)
    local self = setmetatable({}, cls)
    self:_init(...)
    return self
  end,
})

function Accounts:_init()
  BaseDao._init(self, constants.ACCOUNTS_COLLECTION) -- call the base class constructor
end

function Accounts:get_by_provider_id(provider_id)
  return nil
end

return Accounts