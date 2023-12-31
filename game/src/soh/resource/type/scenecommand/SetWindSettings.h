#pragma once

#include <cstdint>
#include <vector>
#include <memory>
#include "resource/Resource.h"
#include "SceneCommand.h"
#include <libultra/types.h>

namespace LUS {
typedef struct {
  int8_t windWest;
  int8_t windVertical;
  int8_t windSouth;
  uint8_t windSpeed;
} WindSettings;

class SetWindSettings : public SceneCommand<WindSettings> {
  public:
    using SceneCommand::SceneCommand;

    WindSettings* GetPointer();
    size_t GetPointerSize();

    WindSettings settings;
};
}; // namespace LUS
