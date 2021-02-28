project 'yaml'
    kind 'StaticLib'
    language 'C++'
    
	targetdir ("bin/" .. OutputDir .. "/%{prj.name}")
	objdir ("bin-int/" .. OutputDir .. "/%{prj.name}")

    files { 'src/**.cpp', 'src/**.h', 'include/**.h' }

    includedirs { 'include' }

    filter 'system:windows'
        systemversion 'latest'
        cppdialect 'C++17'
        staticruntime "On"
        flags { 'MFC' }

    filter 'configurations:Debug'
        runtime 'Debug'
        symbols 'On'

    filter 'configurations:Release'
        runtime 'Release'
        optimize 'On'
