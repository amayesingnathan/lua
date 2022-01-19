project "Lua"
    kind "StaticLib"
    language "C"
    staticruntime "on"
		
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin/int/" .. outputdir .. "/%{prj.name}")

    files 
    { 
        "*.h", 
        "*.c",
    }
	
    filter "system:windows"
        systemversion "latest"
        
    filter "configurations:Debug"
		runtime "Debug"
        symbols "on"

    filter "configurations:Release"
		runtime "Release"
        optimize "on"

    filter "configurations:Dist"
		runtime "Release"
        optimize "on"
