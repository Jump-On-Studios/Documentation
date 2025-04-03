---
outline: [2,3]
---
# Ped Texture

A powerfull module to manage the ped texture like makeup/tatoo/...

:::warning
Textures can only be apply on **networked** ped. If you want use it in a script with ped only visible by one player, like character selector, you have to move the player in solo routing bucket and spawn the ped as networked.
:::

## JO Variables

### jo.pedTexture.categories
An object to know the on each part of the ped the layername has to be apply
#### Syntax
```lua
jo.pedTexture.categories[layername]
```
#### Parameters
`layername` : *string*
> The layer name of the texture

#### Example
```lua
local part = jo.pedTexture.categories.eyeshadow
print(part)
--Expected output: heads
```

### jo.pedTexture.variations
A variable with the list of existing texture for peds. The key is the layername and value the list of variations
#### Syntax
```lua
jo.pedTexture.variations[layername] = variations
```
#### Parameters
`layername` : *string*
> The layername of the texture
  
`variations` : *table*
> the list of variations  
> `variations[x].label` : *string* - the label of the variations  
> `variations[x].value` : *table* - the definition of the variations
  

#### Example
```lua
local listEyeshadow = jo.pedTexture.variations.eyeshadow
for _,variation in pairs (listEyeshadow) do
    print(variable.label)
    print(json.encode(variation.value))
end
```


<!--@include: ./autodoc/autodoc_g_client_functions.md-->
