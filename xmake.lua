set_project("learn_vkguide")
set_languages("c++23")

add_rules("mode.debug", "mode.release")

set_runtimes(is_mode("debug") and "MDd" or "MD")

set_exceptions("cxx")

includes("app/xmake.lua")
includes("engine/xmake.lua")
