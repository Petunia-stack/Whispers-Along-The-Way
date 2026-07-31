# Whispers Along the Way

## Overview

**Whispers Along the Way** is a 2D adventure game built with **Godot 4** that explores how Scripture can be naturally integrated into gameplay rather than presented as an interruption. Instead of rewarding players only with points or achievements, completing an in-game quest leads to meaningful encouragement followed by a relevant Bible passage.

This project was created for the **Kaggle x YouVersion x Gloo AI Studio** challenge.

---

## Features

* 2D village exploration
* NPC dialogue system
* Apple collection quest
* Quest progress tracker
* Scripture displayed after quest completion
* Integration with the YouVersion Platform through a local verse workflow
* Modular architecture prepared for Gloo AI personalized encouragement
* Ending scene with fade transition

---

## Technologies Used

* Godot 4.4.1
* GDScript
* Python
* JSON
* YouVersion Platform API
* Gloo AI Studio (integration architecture prepared)

---

## Project Flow

1. Player explores the village.
2. NPC introduces the quest.
3. Player collects three apples.
4. Player returns to the NPC.
5. Personalized encouragement is prepared through the Gloo integration layer.
6. A Bible passage is displayed.
7. The game concludes with an ending scene.

---

## APIs

### YouVersion Platform API

The project uses the YouVersion Platform to provide Scripture as part of the gameplay experience.

### Gloo AI Studio

The project includes a dedicated `GlooManager` component designed for personalized AI encouragement. Due to a billing activation issue that prevented API credential generation before the submission deadline, the architecture has been prepared so the live Gloo API can be connected with minimal code changes once access is available.

---

## How to Run

1. Install Godot 4.4.1 or later.
2. Clone or download this repository.
3. Open `project.godot`.
4. Run the project.

---

## Future Improvements

* Live Gloo AI personalized responses
* Multiple quests
* Additional NPC interactions
* Dynamic Scripture selection
* Player progression system

---

## Author

Created by **Tshiamo Petunia** for the Kaggle × YouVersion × Gloo AI Studio Hackathon.
