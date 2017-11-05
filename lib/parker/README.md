# Parker

This is a very simple tool for organising your video game screenshots. I _love_ my game screenshots, and like to have them neatly sorted by platform and game, but I might just be weird.

It currently supports 3 platforms: Steam, the Nintendo Switch, and the PS4. Please note: you'll still have to, y'know, actually copy them onto a disk somewhere yourself before running Parker. I wish this wasn't still a painful experience, but here we are.

## Installation

Parker is built in Ruby as a gem, and thus:

> gem install parker

And done.

## Usage

It's a very simple command-line tool - by default, Parker will try to copy your screenshots into the current directory, though you can provide an alternative with the `-d` option.

It will look for JSON configuration files with a name matching each game platform in its `~/.config/parker` directory:

- `~/.config/parker/steam.json`
- `~/.config/parker/switch.json`
- `~/.config/parker/playstation.json`

All config files share the same format:

```json
{
  "source_path": "/path/to/game/screenshots/",
  "name": "My Steam Screenshots",
  "games": {
    "game_id_1": "Awesome Game",
    "game_id_2": "Awesome Game 2: More Awesomer"
  }
}
```

Your config _must_ have a `source_path`, or Parker won't know where to look for screenshots, and that would be bad.

The optional `name` value will be used to name the parent directory housing each game (and so in the above example, if you were telling Parker to use `~/Pictures/Screenshots`, the above would copy games into `~/Pictures/Screenshots/My Steam Screenshots/Awesome Game`, etc. If left out, it defaults to a capitalised version of the platform name.

The key/value in the `games` section is required for every platform _except_ the Playstation (due to the layout of the screenshots on disk coming off the console, we can pull the game name for you). You can determine the game ID for Steam and Switch games based on the ID in the screenshot path, or the ending hash of the filename, respectively. This is less than ideal, but hey, it works for now.

It's possible that eventually I'd either add a way to look these up or keep a giant database of the mappings locally. Maybe.

And that's pretty much it. This is mostly for me, really, but I'd love to know if someone else finds it useful.
