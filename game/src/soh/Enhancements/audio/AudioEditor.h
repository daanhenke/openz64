#pragma once
#include "stdint.h"

#ifdef __cplusplus

#include <libultraship.h>
#include <imgui.h>

class AudioEditor : public LUS::GuiWindow {
    public:
        using LUS::GuiWindow::GuiWindow;

        void DrawElement() override;
        void InitElement() override {};
        void UpdateElement() override {};
        ~AudioEditor() {};
};

void AudioEditor_RandomizeAll();
void AudioEditor_ResetAll();

extern "C" {
#endif

u16 AudioEditor_GetReplacementSeq(u16 seqId);


#ifdef __cplusplus
}
#endif
