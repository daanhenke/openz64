set(OPENZ64_SOURCES
    boot/stackcheck.c
    boot/idle.c
    boot/is_debug.c
    boot/logutils.c
    boot/viconfig.c
    boot/yaz0.c
    boot/z_std_dma.c

    buffers/gfxbuffers.c
    buffers/heaps.c
    buffers/zbuffer.c

    code/__osMalloc.c
    code/audio_data.c
    code/audio_effects.c
    code/audio_heap.c
    code/audio_init_params.c
    code/audio_load.c
    code/audio_playback.c
    code/audio_seqplayer.c
    code/audio_sound_params.c
    code/audio_synthesis.c
    code/audioMgr.c
    code/code_80097A00.c
    code/code_800A9F30.c
    code/code_800ACE70.c
    code/code_800AD920.c
    code/code_800C3C20.c
    code/code_800D2E30.c
    code/code_800D31A0.c
    code/code_800E4FE0.c
    code/code_800E6840.c
    code/code_800EC960.c
    code/code_800F7260.c
    code/code_800F9280.c
    code/code_800FBCE0.c
    code/code_800FC620.c
    code/code_800FCE80.c
    code/code_800FD970.c
    code/code_801068B0.c
    code/debug_malloc.c
    code/fault.c
    code/fault_drawer.c
    code/game.c
    code/gamealloc.c
    code/gfxprint.c
    code/graph.c
    code/irqmgr.c
    code/main.c
    code/padmgr.c
    code/padutils.c
    code/padsetup.c
    code/printutils.c
    code/sched.c
    code/shrink_window.c
    code/sleep.c
    code/speed_meter.c
    code/sys_cfb.c
    code/sys_matrix.c
    code/sys_math.c
    code/sys_math3d.c
    code/sys_math_atan.c
    code/sys_ucode.c
    code/system_malloc.c
    code/title_setup.c
    code/TwoHeadArena.c
    code/z_actor.c
    code/z_bgcheck.c
    code/z_camera.c
    code/z_common_data.c
    code/z_collision_check.c
    code/z_debug.c
    code/z_DLF.c
    code/z_effect.c
    code/z_effect_soft_sprite_old_init.c
    code/z_eff_spark.c
    code/z_eff_ss_dead.c
    code/z_fbdemo_fade.c
    code/z_fbdemo_wipe1.c
    code/z_fbdemo_triforce.c
    code/z_game_dlftbls.c
    code/z_kanfont.c
    code/z_kankyo.c
    code/z_lib.c
    code/z_lights.c
    code/z_lifemeter.c
    code/z_malloc.c
    code/z_message_PAL.c
    code/z_olib.c
    code/z_parameter.c
    code/z_prenmi.c
    code/z_prenmi_buff.c
    code/z_play.c
    code/z_player_lib.c
    code/z_quake.c
    code/z_rcp.c
    code/z_room.c
    code/z_scene.c
    code/z_scene_table.c
    code/z_skelanime.c
    code/z_skin_matrix.c
    code/z_view.c
    code/z_vimode.c
    code/z_vismono.c
    code/z_vr_box.c

    soh/ActorDB.cpp
    soh/CrashHandlerExt.cpp
    soh/frame_interpolation.cpp
    soh/GbiWrap.cpp
    soh/gu_pc.c
    soh/mixer.c
    soh/OTRGlobals.cpp
    soh/SaveManager.cpp
    soh/SohGui.cpp
    soh/SohMenuBar.cpp
    soh/stubs.c
    soh/UIWidgets.cpp
    soh/util.cpp
    soh/z_message_OTR.cpp
    soh/z_play_otr.cpp
    soh/z_scene_otr.cpp

    soh/config/ConfigUpdaters.cpp

    soh/Enhancements/gameconsole.c
    soh/Enhancements/gameplaystats.cpp

    soh/Enhancements/audio/AudioCollection.cpp
    soh/Enhancements/audio/AudioEditor.cpp

    soh/Extractor/Extract.cpp

    soh/Enhancements/game-interactor/GameInteractor_Hooks.cpp
    soh/Enhancements/game-interactor/GameInteractor_State.cpp

    overlays/gamestates/ovl_title/z_title.c
    overlays/gamestates/ovl_select/z_select.c
    overlays/gamestates/ovl_file_choose/z_file_choose.c

    overlays/misc/ovl_kaleido_scope/z_kaleido_scope_PAL.c
)

list(TRANSFORM OPENZ64_SOURCES PREPEND "game/src/")
add_executable(openz64 ${OPENZ64_SOURCES})
target_include_directories(openz64
    PRIVATE "game/src"
    PUBLIC "game/include"
)
target_link_libraries(openz64
    PUBLIC libultra
    PRIVATE DrLibs
)