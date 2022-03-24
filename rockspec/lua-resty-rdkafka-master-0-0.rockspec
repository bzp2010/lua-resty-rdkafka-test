package = "lua-resty-rdkafka-master"
version = "0-0"
source = {
    url = "git://github.com/bzp2010/lua-resty-rdkafka-test",
    branch = "master",
}

description = {
    summary = "librdkafka's warpper in Lua for Nginx + Lua",
    homepage = "https://github.com/bzp2010/lua-resty-rdkafka-test",
    license = "Apache License 2.0",
}

dependencies = {}

build = {
    type = "make",
    build_variables = {
        CFLAGS="$(CFLAGS) -std=c99 -g -Wno-pointer-to-int-cast -Wno-int-to-pointer-cast",
        LIBFLAG="$(LIBFLAG)",
        LUA_LIBDIR="$(LUA_LIBDIR)",
        LUA_BINDIR="$(LUA_BINDIR)",
        LUA_INCDIR="$(LUA_INCDIR)",
        LUA="$(LUA)",
    },
    install_variables = {
        INST_PREFIX="$(PREFIX)",
        INST_BINDIR="$(BINDIR)",
        INST_LIBDIR="$(LIBDIR)",
        INST_LUADIR="$(LUADIR)",
        INST_CONFDIR="$(CONFDIR)",
    },

    librdkafka = {
        sources = {"librdkafka/src/rdkafka.c"},
    }
}
