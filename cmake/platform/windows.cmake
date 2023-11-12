set(CMAKE_C_FLAGS_RELEASE "-O2 -DNDEBUG")
set(CMAKE_CXX_FLAGS_RELEASE "-O2 -DNDEBUG")

set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")

macro(openz64_platform_customize_targets_impl)
    set_source_files_properties(game/src/soh/OTRGlobals.cpp
        TARGET_DIRECTORY openz64
        PROPERTIES COMPILE_FLAGS "/utf-8")

    target_compile_definitions(openz64 PRIVATE
        UNICODE
        _UNICODE
    )

    target_compile_definitions(libultra PRIVATE
        _CRT_SECURE_NO_WARNINGS
        WIN32
        _CONSOLE
    )

    target_link_options(openz64 PRIVATE /NODEFAULTLIB:library)

    target_compile_options(libultra PRIVATE
        $<$<CONFIG:Debug>:
        /Od;
        /Oi-
        >
        $<$<CONFIG:Release>:
        /Oi;
        /Gy
        >
        /permissive-;
        /MP;
        /sdl;
        /W3;
        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
        ${DEFAULT_CXX_EXCEPTION_HANDLING};
    )
    target_link_options(libultra PRIVATE
        $<$<CONFIG:Release>:
        /OPT:REF;
        /OPT:ICF
        >
        /SUBSYSTEM:CONSOLE
    )

    target_sources(libultra PRIVATE
        libultra/src/audio/WasapiAudioPlayer.cpp
    )

    target_sources(openz64 PRIVATE
        game/src/soh/Enhancements/speechsynthesizer/SAPISpeechSynthesizer.cpp
    )
endmacro()