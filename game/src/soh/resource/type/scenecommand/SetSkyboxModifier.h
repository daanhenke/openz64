#pragma once

#include <cstdint>
#include <vector>
#include <memory>
#include "resource/Resource.h"
#include "SceneCommand.h"
#include <libultra/types.h>

namespace LUS {
typedef struct {
  uint8_t skyboxDisabled;
  uint8_t sunMoonDisabled;
} SkyboxModifier;

class SetSkyboxModifier : public SceneCommand<SkyboxModifier> {
  public:
    using SceneCommand::SceneCommand;

    SkyboxModifier* GetPointer();
    size_t GetPointerSize();

    SkyboxModifier modifier;
};
}; // namespace LUS
