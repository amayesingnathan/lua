project "lua"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"
		
    targetdir 	("%{wks.location}/bin/%{prj.name}/" .. outputDir)
    objdir 		("%{wks.location}/obj/%{prj.name}/" .. outputDir)

    files 
    { 
        "lua.hpp",
        "*.h", 
        "*.c"
    }
	
    removefiles { "onelua.c" }

    filter "system:windows"
        systemversion "latest"
        
	filter "system:linux"
        pic "On"
        systemversion "latest"

    filter "configurations:Debug"
		runtime "Debug"
        symbols "on"

	filter "configurations:ARMd"
		runtime "Debug"
        symbols "on"

	filter "configurations:ARM64d"
		runtime "Debug"
		symbols "on"

    filter "configurations:Release"
		runtime "Release"
        optimize "on"

	filter "configurations:ARM"
		runtime "Release"
		optimize "on"

	filter "configurations:ARM64"
		runtime "Release"
		optimize "on"
