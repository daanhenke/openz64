find_package(PulseAudio)

list(APPEND LIBULTRA_PLATFORM_SOURCES
    audio/PulseAudioPlayer.cpp
)

list(APPEND LIBULTRA_PLATFORM_LIBRARIES
    ${PULSEAUDIO_LIBRARY}
)