---
outline: [2,3]
---

# Component

Component is a very usefull module to manage entity component. The module is designed to create a persistence of component colors if you defined a custom colorway.

## JO Variables

### jo.component.categoryName
Type : *table*  
> Links between the hash and name of a category.  
>> key: category hash  
>> value: category name

### jo.component.order
Type : *table*  
> The order to apply the component  
>> key: order to apply the component  
>> value: category name

### jo.component.wearableStates
Type : *table*  
> The list of available wearable state by category  
>> key: category name  
>> value: table of wearable states

<!--@include: ./autodoc/autodoc_g_client_functions.md-->