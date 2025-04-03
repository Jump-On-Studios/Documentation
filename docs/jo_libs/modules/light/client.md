---
outline: [2,3]
---

# Light

Light is a powerful module to create and manage dynamic light sources with smooth transitions in your RedM script. It allows for easily creating, moving, and fading lights with full control over color, intensity, and range.

::: tip Tips for using lights :

- **Performance**: Lights are relatively expensive to render. Keep the number of active lights to a minimum.
- **Range**: Smaller light ranges (5-15 units) often look better and are more efficient.
- **Transitions**: The `ease` parameter allows for smooth transitions when changing properties, creating more natural-looking effects.
- **Colors**: Different colors create different moods - warm colors (orange, yellow) for fires, cool colors (blue, cyan) for magical effects, etc.

:::

<!--@include: ./autodoc/autodoc_client_functions.md-->