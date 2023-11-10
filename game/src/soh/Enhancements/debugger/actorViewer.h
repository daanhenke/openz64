#pragma once

#include <libultraship.h>

class ActorViewerWindow : public LUS::GuiWindow {
  public:
    using GuiWindow::GuiWindow;

    void DrawElement() override;
    void InitElement() override;
    void UpdateElement() override {};
};
