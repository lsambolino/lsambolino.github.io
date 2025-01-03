# -*- coding: utf-8 -*- #
# frozen_string_literal: true

# DO NOT EDIT

# This file is automatically generated by `rake builtins:lua`.
# See tasks/builtins/lua.rake for more info.

module Rouge
  module Lexers
    class Lua
      def self.builtins
        @builtins ||= {}.tap do |b|
          b["basic"] = Set.new ["_g", "_version", "assert", "collectgarbage", "dofile", "error", "getmetatable", "ipairs", "load", "loadfile", "next", "pairs", "pcall", "print", "rawequal", "rawget", "rawlen", "rawset", "select", "setmetatable", "tonumber", "tostring", "type", "xpcall", "file:close", "file:flush", "file:lines", "file:read", "file:seek", "file:setvbuf", "file:write", "lua_cpath", "lua_cpath_5_3", "lua_init", "lua_init_5_3", "lua_path", "lua_path_5_3", "luaopen_base", "luaopen_coroutine", "luaopen_debug", "luaopen_io", "luaopen_math", "luaopen_os", "luaopen_package", "luaopen_string", "luaopen_table", "luaopen_utf8", "lua_errerr", "lua_errfile", "lua_errgcmm", "lua_errmem", "lua_errrun", "lua_errsyntax", "lua_hookcall", "lua_hookcount", "lua_hookline", "lua_hookret", "lua_hooktailcall", "lua_maskcall", "lua_maskcount", "lua_maskline", "lua_maskret", "lua_maxinteger", "lua_mininteger", "lua_minstack", "lua_multret", "lua_noref", "lua_ok", "lua_opadd", "lua_opband", "lua_opbnot", "lua_opbor", "lua_opbxor", "lua_opdiv", "lua_opeq", "lua_opidiv", "lua_ople", "lua_oplt", "lua_opmod", "lua_opmul", "lua_oppow", "lua_opshl", "lua_opshr", "lua_opsub", "lua_opunm", "lua_refnil", "lua_registryindex", "lua_ridx_globals", "lua_ridx_mainthread", "lua_tboolean", "lua_tfunction", "lua_tlightuserdata", "lua_tnil", "lua_tnone", "lua_tnumber", "lua_tstring", "lua_ttable", "lua_tthread", "lua_tuserdata", "lua_use_apicheck", "lua_yield", "lual_buffersize"]
          b["modules"] = Set.new ["require", "package.config", "package.cpath", "package.loaded", "package.loadlib", "package.path", "package.preload", "package.searchers", "package.searchpath"]
          b["coroutine"] = Set.new ["coroutine.create", "coroutine.isyieldable", "coroutine.resume", "coroutine.running", "coroutine.status", "coroutine.wrap", "coroutine.yield"]
          b["debug"] = Set.new ["debug.debug", "debug.gethook", "debug.getinfo", "debug.getlocal", "debug.getmetatable", "debug.getregistry", "debug.getupvalue", "debug.getuservalue", "debug.sethook", "debug.setlocal", "debug.setmetatable", "debug.setupvalue", "debug.setuservalue", "debug.traceback", "debug.upvalueid", "debug.upvaluejoin"]
          b["io"] = Set.new ["io.close", "io.flush", "io.input", "io.lines", "io.open", "io.output", "io.popen", "io.read", "io.stderr", "io.stdin", "io.stdout", "io.tmpfile", "io.type", "io.write"]
          b["math"] = Set.new ["math.abs", "math.acos", "math.asin", "math.atan", "math.ceil", "math.cos", "math.deg", "math.exp", "math.floor", "math.fmod", "math.huge", "math.log", "math.max", "math.maxinteger", "math.min", "math.mininteger", "math.modf", "math.pi", "math.rad", "math.random", "math.randomseed", "math.sin", "math.sqrt", "math.tan", "math.tointeger", "math.type", "math.ult"]
          b["os"] = Set.new ["os.clock", "os.date", "os.difftime", "os.execute", "os.exit", "os.getenv", "os.remove", "os.rename", "os.setlocale", "os.time", "os.tmpname"]
          b["string"] = Set.new ["string.byte", "string.char", "string.dump", "string.find", "string.format", "string.gmatch", "string.gsub", "string.len", "string.lower", "string.match", "string.pack", "string.packsize", "string.rep", "string.reverse", "string.sub", "string.unpack", "string.upper"]
          b["table"] = Set.new ["table.concat", "table.insert", "table.move", "table.pack", "table.remove", "table.sort", "table.unpack"]
          b["utf8"] = Set.new ["utf8.char", "utf8.charpattern", "utf8.codepoint", "utf8.codes", "utf8.len", "utf8.offset"]
        end
      end
    end
  end
end
