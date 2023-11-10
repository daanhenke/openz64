#pragma once

#include <cstdint>
#include <vector>
#include <memory>
#include "resource/Resource.h"
#include "SceneCommand.h"
// #include <libultra/types.h>
#include "soh/resource/type/Path.h"

namespace LUS {

class SetPathways : public SceneCommand<PathData*> {
  public:
    using SceneCommand::SceneCommand;

    PathData** GetPointer();
    size_t GetPointerSize();

    uint32_t numPaths;
    std::vector<PathData*> paths;
};
}; // namespace LUS
