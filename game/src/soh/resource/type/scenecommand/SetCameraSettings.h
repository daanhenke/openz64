#pragma once

#include <cstdint>
#include <vector>
#include <memory>
#include "resource/Resource.h"
#include "SceneCommand.h"
#include <libultra/types.h>

namespace LUS {
typedef struct {
  int8_t cameraMovement;
  int32_t worldMapArea;
} CameraSettings;

class SetCameraSettings : public SceneCommand<CameraSettings> {
  public:
    using SceneCommand::SceneCommand;

    CameraSettings* GetPointer();
    size_t GetPointerSize();

    CameraSettings settings;
};
}; // namespace LUS
