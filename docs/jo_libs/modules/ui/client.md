---
outline: [2,3]
---
# UI

A module to manage UI elements from the game.

<!--@include: ./autodoc/autodoc_client_functions.md-->


## Internal Variables and Structures

The Timer UI system uses the following internal variables and structures, which should not be modified directly:

- `jo.ui.TimerUI.data.uiFlowblock` - Reference to the UI flowblock component
- `jo.ui.TimerUI.data.container` - Reference to the databinding container
- `jo.ui.TimerUI.data.timer` - Reference to the timer's databinding entry
- `jo.ui.TimerUI.data.show` - Reference to the visibility databinding entry
- `jo.ui.TimerUI.data.stateMachine` - Identifier for the UI state machine
- `jo.ui.TimerUI.data.time` - Current timer value in seconds

These variables are essential for the proper functioning and state management of the Timer UI system. Modifying them directly may cause unexpected behavior.