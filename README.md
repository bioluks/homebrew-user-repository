# Bioluks Tap

## How do I install these formulae?

`brew install bioluks/user-repository/<formula>` or `brew install bioluks/tap/<formula>`.

Else you can do `brew tap bioluks/user-repository` or `brew tap bioluks/tap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "bioluks/user-repository"
brew "<formula>"
```
or do:
```ruby
tap "bioluks/tap"
brew "<formula>"
```
What I simply want to say is both `bioluks/user-repository` and `bioluks/tap` are valid.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
