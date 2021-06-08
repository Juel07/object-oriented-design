### Exercise - Secret Diary

#### To achieve these goals:

> "I can build with objects" 
> "I can test-drive my code"

#### Test-drive the secret diary example:

```
SecretDiary
  - lock
  - unlock
  - add_entry
  - get_entries
```

Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.

When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

When the user locks the diary, by calling `lock`, `add_entry` and `get_entries` should, again, throw an error.
First organize it into one class only.

Then, when all your tests are green, reorganize it into classes with high cohesion.

This will also involve reorganizing your tests!

#### Evidence Plan
How comfortable do you feel assessing how cohesive a class is?
Did you successfully break the SecretDiary class up into multiple cohesive classes?