#pragma once

#include <cstdint>
#include <vector>
#include <memory>
#include "resource/Resource.h"
#include "SceneCommand.h"
#include <libultra/types.h>

namespace LUS {
typedef struct {

} Marker;

class EndMarker : public SceneCommand<Marker> {
  public:
    using SceneCommand::SceneCommand;

    Marker* GetPointer();
    size_t GetPointerSize();

    Marker endMarker;
};
}; // namespace LUS
