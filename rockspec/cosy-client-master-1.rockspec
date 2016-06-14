package = "cosy-client"
version = "master-1"
source  = {
  url = "git://github.com/cayonerie/server"
}

description = {
  summary    = "CosyVerif: client",
  detailed   = [[
    Client of the CosyVerif platform.
  ]],
  homepage   = "http://www.cosyverif.org/",
  license    = "MIT/X11",
  maintainer = "Alban Linard <alban@linard.fr>",
}

dependencies = {
  "lua >= 5.1",
  "argparse",
  "ansicolors",
  "jwt",
  "layeredata",
  "lua-websockets",
  "luasocket",
}

build = {
  type    = "builtin",
  modules = {
    ["cosy.client"] = "src/cosy/client/init.lua",
  },
  install = {
    bin = {
      ["cosy-cli"] = "src/cosy/client/bin.lua",
    },
  },
}
