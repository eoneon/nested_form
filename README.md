== README

#Creating references in nested HABTM forms
I have two models `Item` and `Mounting` and I'm trying to create a many-to-many relationship on `item#new` using a nested form where the HABTM join table is named `ItemsMountings`.

+ In `item.rb` I added the helper method `accepts_nested_attributes_for` and passed in `:items_mountings`.
+ In the whitelisted params I passed in `items_mountings_attributes: [:item_id, :mounting_id`.
+In the view I used a `fields_for` helper and passed in `:items_mountings_attributes`. I used a `collection_select` to set the foreign key but display the relevant human readable attribute.
+ In the rails server the request looks like this:
```
Processing by ItemsController#create as HTML
  Parameters: {"utf8"=>"✓", "authenticity_token"=>"/vQsWtLx/D2+0HdChdM8A/t5DP/7qQ8VQgOQDLisPqM9bVgsWzYhZw8p7wKG+Xsd4VOma9N8KeD6L8Myt0/Mmg==", "item"=>{"name"=>"Charles"}, "item_mounting"=>{"mounting_id"=>"2"}, "commit"=>"Save"}
   (0.1ms)  begin transaction
  SQL (0.3ms)  INSERT INTO "items" ("name", "created_at", "updated_at") VALUES (?, ?, ?)  [["name", "Charles"], ["created_at", "2017-06-05 01:03:31.472911"], ["updated_at", "2017-06-05 01:03:31.472911"]]

```
+ I don't know what is going wrong here.
