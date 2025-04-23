<!-- #region shared|jo.file.isExist -->
#### Example
```lua
local isExist = jo.file.isExist('module.fileName')
print(isExist)
-- OR --
local isExist = jo.file.isExist('@resource.folder.fileName')
print(isExist)
```
<!-- #endregion shared|jo.file.isExist -->


<!-- #region shared|jo.file.load -->
#### Example
```lua
local file = jo.file.load('module.fileName')
print('File loaded')
-- OR --
local isExist = jo.file.load('@resource.folder.fileName')
print('File loaded')

```
<!-- #endregion shared|jo.file.load -->


<!-- #region shared|jo.file.read -->
#### Example
```lua
local content,resource,modPath = jo.file.read('module.fileName')
print(content,resource,modPath)
-- OR --
local content,resource,modPath = jo.file.read('@resource.folder.fileName')
print(content,resource,modPath)
```
<!-- #endregion shared|jo.file.read -->
