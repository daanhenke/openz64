#ifndef Z_EFF_SS_ICE_SMOKE_H
#define Z_EFF_SS_ICE_SMOKE_H

#include <libultra.h>
#include "global.h"

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f velocity;
    /* 0x18 */ Vec3f accel;
    /* 0x24 */ s16 scale;
} EffectSsIceSmokeInitParams; // size = 0x28

#endif
