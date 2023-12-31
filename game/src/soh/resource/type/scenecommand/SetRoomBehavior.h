#pragma once

#include <cstdint>
#include <vector>
#include <memory>
#include "resource/Resource.h"
#include "SceneCommand.h"
#include <libultra/types.h>

namespace LUS {
typedef struct {
  int8_t gameplayFlags;
  int32_t gameplayFlags2;
} RoomBehavior;

class SetRoomBehavior : public SceneCommand<RoomBehavior> {
  public:
    using SceneCommand::SceneCommand;

    RoomBehavior* GetPointer();
    size_t GetPointerSize();

    RoomBehavior roomBehavior;
};
}; // namespace LUS
