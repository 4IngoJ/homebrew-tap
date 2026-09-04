# 4IngoJ/homebrew-tap

Homebrew tap for [SideSchedule](https://github.com/4IngoJ/sideschedule) — a
day-calendar sidebar for macOS that reserves screen space instead of
overlaying it.

## Install

```bash
brew install --cask 4ingoj/tap/sideschedule
```

The app updates itself via [Sparkle](https://sparkle-project.org/), so
`brew outdated`/`brew upgrade` leave it alone by default once installed
(`auto_updates true` in the cask). To have Homebrew pick up a version bump
here instead, use `brew upgrade --cask --greedy`.

## Source

Release binaries and the update feed live in
[4IngoJ/sideschedule-releases](https://github.com/4IngoJ/sideschedule-releases).
This tap only carries the cask definition that points at them.
