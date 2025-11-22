# GTG Mission Skip  
Skip the currently tracked quest instantly using a hotkey.  
A Cyber Engine Tweaks (CET) mod for Cyberpunk 2077.  

**Author:** darkyboys  
**License:** MIT  

---

## ✨ Features
- Instantly skip the currently tracked quest or objective.
- Uses Cyberpunk’s internal JournalManager for clean state transitions.
- Works with any main quest, side quest, gig, or activity.
- Lightweight, safe, and easy to use — only runs when you press the hotkey.

---

## 📥 Installation

1. Download or clone this repository.
2. Copy the included **bin** folder into your Cyberpunk 2077 installation directory.

Example path:

```

Cyberpunk 2077/
└─ bin/
└─ x64/
└─ plugins/
└─ cyber_engine_tweaks/
└─ mods/
└─ Mission-Skip/

```

3. Launch the game.
4. Open **Cyber Engine Tweaks** overlay.
5. Go to **Hotkeys** → find **GTG Mission Skip** → assign any key you want.

That's it!

---

## 🎮 Usage

1. Open the game’s Journal.
2. Track the quest or objective you want to skip.
3. Press your assigned hotkey.
4. The quest stage will immediately advance.

A small notification will appear confirming the skip.

---

## 📁 File Structure

```

Mission-Skip/
├─ init.lua        # Hotkey and file loader
├─ exec.lua      # Quest-skipping logic
├─ db.sqlite3      # CET internal database
└─ Mission-Skip.log

````

---

## 🧩 How It Works (Technical)
When the hotkey is pressed:

- CET loads `exec.lua`
- The script fetches:
  - The tracked journal entry
  - Its parent quest entry
  - The quest hash
- Then calls:

```lua
journalManager:ChangeEntryStateByHash(hash, 3, 2)
````

This safely moves the quest forward exactly one step.

---

## 📜 License (MIT)

```
MIT License

Copyright (c) 2025 darkyboys

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

[... full MIT license text ...]
```

Full license included in `LICENSE` file.

---

## ⭐ Support

Enjoy the mod! Feel free to report issues or request features via GitHub.
