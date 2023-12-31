#pragma once

#include <cstdint>
#include <vector>
#include <memory>
#include "resource/Resource.h"
#include "SceneCommand.h"
#include <libultra/types.h>

namespace LUS {
typedef struct {
  int8_t elfMessage;
  int16_t globalObject;
} SpecialObjects;

class SetSpecialObjects : public SceneCommand<SpecialObjects> {
  public:
    using SceneCommand::SceneCommand;

    SpecialObjects* GetPointer();
    size_t GetPointerSize();

    SpecialObjects specialObjects;
};
}; // namespace LUS
