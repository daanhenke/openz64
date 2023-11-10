configure_file(
    "libultra/src/install_config.h.in"
    "${CMAKE_CURRENT_BINARY_DIR}/generated-include/libultra/install_config.h" @ONLY
)

set(LIBULTRA_SOURCES
    Context.cpp

    audio/Audio.cpp
    audio/AudioPlayer.cpp
    audio/SDLAudioPlayer.cpp

    config/Config.cpp
    config/ConsoleVariable.cpp

    controller/ControlDeck.cpp
    controller/DummyController.cpp
    controller/KeyboardController.cpp
    controller/SDLController.cpp

    debug/Console.cpp
    debug/CrashHandler.cpp

    graphic/Fast3D/gfx_cc.cpp
    graphic/Fast3D/gfx_pc.cpp
    graphic/Fast3D/gfx_opengl.cpp
    graphic/Fast3D/gfx_sdl2.cpp

    log/luslog.cpp

    public/bridge/resourcebridge.cpp
    public/bridge/windowbridge.cpp
    public/bridge/audiobridge.cpp
    public/bridge/controllerbridge.cpp
    public/bridge/consolevariablebridge.cpp
    public/bridge/crashhandlerbridge.cpp

    public/libultra/os.cpp

    resource/Archive.cpp
    resource/Resource.cpp
    resource/ResourceManager.cpp
    resource/ResourceLoader.cpp
    resource/ResourceFactory.cpp

    resource/factory/ArrayFactory.cpp
    resource/factory/BlobFactory.cpp
    resource/factory/DisplayListFactory.cpp
    resource/factory/MatrixFactory.cpp
    resource/factory/TextureFactory.cpp
    resource/factory/VertexFactory.cpp

    resource/type/Array.cpp
    resource/type/Blob.cpp
    resource/type/DisplayList.cpp
    resource/type/Matrix.cpp
    resource/type/Texture.cpp
    resource/type/Vertex.cpp

    utils/stox.cpp
    utils/Utils.cpp

    utils/binarytools/BinaryReader.cpp
    utils/binarytools/BinaryWriter.cpp
    utils/binarytools/MemoryStream.cpp
    utils/binarytools/Stream.cpp

    window/Window.cpp

    window/gui/ConsoleWindow.cpp
    window/gui/Gui.cpp
    window/gui/InputEditorWindow.cpp
    window/gui/InputViewer.cpp
    window/gui/GameOverlay.cpp
    window/gui/StatsWindow.cpp
    window/gui/GuiWindow.cpp
    window/gui/GuiElement.cpp
    window/gui/GuiMenuBar.cpp
)

list(TRANSFORM LIBULTRA_SOURCES PREPEND "libultra/src/")

add_library(libultra STATIC ${LIBULTRA_SOURCES})
target_include_directories(libultra
    PRIVATE "libultra/src" "${CMAKE_CURRENT_BINARY_DIR}/generated-include/libultra"
    PUBLIC "libultra/include"
)
target_link_libraries(libultra
    PRIVATE StrHash64
    PUBLIC ZAPDUtils ImGui storm tinyxml2 nlohmann_json::nlohmann_json spdlog ThreadPool stb
)
target_compile_definitions(libultra PRIVATE
    ENABLE_OPENGL
)