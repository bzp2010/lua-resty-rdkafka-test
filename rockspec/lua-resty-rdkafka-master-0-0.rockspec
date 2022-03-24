package = "lua-resty-rdkafka-master"
version = "0-0"
rockspec_format = "3.0"
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
    type = "command",
    build_command = [[
        cd librdkafka && $(CMAKE) . -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE) -j
    ]],
    install = {
       lib = {
           ["librdkafka"] = "librdkafka/src/librdkafka.so.1",
       },
    },
    --install_command = "cd librdkafka && $(MAKE) install",
}
