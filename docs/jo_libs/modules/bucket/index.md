# Bucket

Bucket is a module to manage routing buckets (instances) on the server

## Include Bucket in your script

1. To use the Bucket library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}

```
2. Add the bucket module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'bucket',
}

```
You can now use the library inside of your resource with the `jo.bucket` global variable.

## Functions

Documentation for the [Server](./server.md) side.  