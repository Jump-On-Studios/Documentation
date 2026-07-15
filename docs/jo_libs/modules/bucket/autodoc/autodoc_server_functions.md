
## JO Functions

### jo.bucket.getPlayersInBucket()

<!-- @include: ./slots/headers.md#server|jo.bucket.getPlayersInBucket -->

Returns the list of players in a bucket <br>

<!-- @include: ./slots/descriptions.md#server|jo.bucket.getPlayersInBucket -->

#### Syntax

```lua
jo.bucket.getPlayersInBucket(bucketId)
```

#### Parameters

`bucketId` : _number_
> The bucket id
>

#### Return Value

Type : _table_

> Return the list of player sources in the bucket, or an empty table if the bucket doesn't exist

<!-- @include: ./slots/examples.md#server|jo.bucket.getPlayersInBucket -->

<!-- @include: ./slots/footers.md#server|jo.bucket.getPlayersInBucket -->

