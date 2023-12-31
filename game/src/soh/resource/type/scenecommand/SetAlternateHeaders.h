#pragma once

#include <cstdint>
#include <vector>
#include <memory>
#include <string>
#include "resource/Resource.h"
#include "SceneCommand.h"
#include "soh/resource/type/Scene.h"
#include "RomFile.h"
#include <libultra/types.h>


namespace LUS {

class SetAlternateHeaders : public SceneCommand<void> {
  public:
    using SceneCommand::SceneCommand;

    void* GetPointer();
    size_t GetPointerSize();

    uint32_t numHeaders;
    std::vector<std::shared_ptr<Scene>> headers;
};
}; // namespace LUS
