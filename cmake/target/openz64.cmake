set(OPENZ64_SOURCES
    code/main.c
)

list(TRANSFORM OPENZ64_SOURCES PREPEND "game/src/")
add_executable(openz64 ${OPENZ64_SOURCES})
target_include_directories(openz64
    PRIVATE "game/src"
    PUBLIC "game/include"
)
target_link_libraries(openz64
    PUBLIC libultra
)