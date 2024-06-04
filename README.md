# VulkanGuideTemplate

Project Template of [vkguide](https://vkguide.dev/).

## Build

First, ensure you have [Vulkan SDK](https://vulkan.lunarg.com/) and [XMake](https://xmake.io/#/guide/installation) installed.

### Configure

```shell
# Project configuration:
# `-c`: Clean configuration
# `-a`: Architecture [x86_64|i386|arm64 ...]
# `-m`: Mode [debug|release]
xmake f -c -a x64 -m debug
```

> Note: If `xmake` complains about MSVC MSB8020 v144 not being found, try running `xmake update -s dev`.

### Build and Run

To build all targets:

```shell
xmake b
```

To run the `app` target:

```shell
xmake r app
```

Alternatively, you can build all and run the default target in one step:

```shell
xmake && xmake r
```

> Note: During the build, shaders will automatically locate the Vulkan path, compile into SPIR-V (.spv) files, and be placed in `$(buildir)/$(plat)/$(arch)/$(mode)/shaders`. Additionally, models from the assets directory will be automatically copied to `$(buildir)/$(plat)/$(arch)/$(mode)/assets`. These logics are written in `engine/xmake.lua`.

### Using with IDEs

Generate project files for your preferred IDE after each source file change:

For CMake-based IDEs (e.g., CLion):

```shell
xmake project -k cmakelists
```

For VSCode with `compile_commands.json`:

```shell
xmake project -k compile_commands
```

For Visual Studio

```shell
xmake project -k vsxmake -m "debug,release"
```

You can also generate other types of project files:

```shell
# xmake project -k makefile
# xmake project -k xcode
```
