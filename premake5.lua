-- OUT_DIR and INT_DIR must be defined in the top-most premake file before including this file

project "zlib"
    kind "SharedLib"
    language "C"

    debugdir (OUT_DIR)
    targetdir (OUT_DIR)
    objdir (INT_DIR)

    files
    {
        "*.h",
        "*.c"
    }

    includedirs
    {
        "."
    }

    defines
    {
        "ZLIB_DLL",
        "ZLIB_INTERNAL"
    }

    filter "system:windows"
        systemversion "latest"

    filter "system:linux"
        systemversion "latest"

    filter "system:macosx"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "Full"

    filter "configurations:not Debug"
        runtime "Release"
        symbols "Off"
        optimize "Full"
