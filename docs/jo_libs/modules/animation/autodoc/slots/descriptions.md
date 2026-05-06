<!-- #region client|jo.animation.play -->

:::details Flags list
| Bit index | Integer value | Name | Description |
| :--- | ----: | :--- | :---------- |
| 0 | 1 | `AF_LOOPING` | Loop the animation continuously |
| 1 | 2 | `AF_HOLD_LAST_FRAME` | Freeze on the last frame when done |
| 2 | 4 | `AF_NOT_INTERRUPTABLE` | Prevent other tasks from cancelling the animation |
| 3 | 8 | `AF_UPPERBODY` | Play on upper body only (allows movement) |
| 4 | 16 | `AF_SECONDARY` | Play as a secondary/blended animation |
| 5 | 32 | `AF_ABORT_ON_PED_MOVEMENT` | Stop the animation when the ped moves |
| 6 | 64 | `AF_ADDITIVE` | Blend additively on top of existing animations |
| 7 | 128 | `AF_OVERRIDE_PHYSICS` | Override physics during playback |
| 8 | 256 | `AF_EXTRACT_INITIAL_OFFSET` | Use the animation's initial position offset |
| 9 | 512 | `AF_EXIT_AFTER_INTERRUPTED` | Exit cleanly when interrupted |
| 10 | 1024 | `AF_TAG_SYNC_IN` | Sync entry tag with other peds |
| 11 | 2048 | `AF_TAG_SYNC_OUT` | Sync exit tag with other peds |
| 12 | 4096 | `AF_TAG_SYNC_CONTINUOUS` | Continuously sync tag with other peds |
| 13 | 8192 | `AF_FORCE_START` | Force the animation to start immediately |
| 14 | 16384 | `AF_USE_KINEMATIC_PHYSICS` | Use kinematic physics during playback |
| 15 | 32768 | `AF_USE_MOVER_EXTRACTION` | Extract movement from the animation clip |
| 16 | 65536 | `AF_DONT_SUPPRESS_LOCO` | Don't suppress locomotion during playback |
| 17 | 131072 | `AF_ENDS_IN_DEAD_POSE` | Hold the final dead pose at the end |
| 18 | 262144 | `AF_ACTIVATE_RAGDOLL_ON_COLLISION` | Trigger ragdoll on collision |
| 19 | 524288 | `AF_DONT_EXIT_ON_DEATH` | Keep playing the animation after death |
| 20 | 1048576 | `AF_ABORT_ON_WEAPON_DAMAGE` | Cancel the animation when the ped takes weapon damage |
| 21 | 2097152 | `AF_DISABLE_FORCED_PHYSICS_UPDATE` | Disable forced physics updates during playback |
| 22 | 4194304 | `AF_GESTURE` | Play as a gesture (short, non-blocking) |
| 23 | 8388608 | `AF_SKIP_IF_BLOCKED_BY_HIGHER_PRIORITY_TASK` | Skip if a higher-priority task is active |
| 24 | 16777216 | `AF_USE_ABSOLUTE_MOVER` | Use absolute world-space movement extraction |
| 25 | 33554432 | `AF_0xC57F16E7` | Unknown |
| 26 | 67108864 | `AF_UPPERBODY_TAGS` | Apply upper body sync tags |
| 27 | 134217728 | `AF_PROCESS_ATTACHMENTS_ON_START` | Process ped attachments at animation start |
| 28 | 268435456 | `AF_EXPAND_PED_CAPSULE_FROM_SKELETON` | Expand the ped's collision capsule based on skeleton |
| 29 | 536870912 | `AF_BLENDOUT_WRT_LAST_FRAME` | Blend out relative to the last frame position |
| 30 | 1073741824 | `AF_DISABLE_PHYSICAL_ACTIVATION` | Disable physical activation events |
| 31 | 2147483648 | `AF_DISABLE_RELEASE_EVENTS` | Disable release/end events for the animation |

:::

<!-- #endregion client|jo.animation.play -->