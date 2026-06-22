# Dark Theme

## Overview

The FoCient Dark Theme is designed to reduce eye strain in low-light environments while preserving readability, focus, and productivity.

The theme maintains the same visual hierarchy and component behavior as the Light Theme while adapting color mappings for dark surfaces.

---

# Theme Characteristics

### Visual Style

* Dark and focused
* Reduced visual glare
* Comfortable for extended usage
* Modern and immersive
* Productivity-oriented

### Primary Use Cases

* Night-time usage
* Low-light environments
* Extended productivity sessions
* Reduced eye fatigue

---

# Color Mapping

## Background

| UI Role              | Token       |
| -------------------- | ----------- |
| App Background       | Neutral/900 |
| Secondary Background | Neutral/800 |
| Elevated Surface     | Neutral/700 |

---

## Surface

| UI Role              | Token       |
| -------------------- | ----------- |
| Card Surface         | Neutral/800 |
| Modal Surface        | Neutral/800 |
| Dropdown Surface     | Neutral/800 |
| Bottom Sheet Surface | Neutral/800 |

---

## Text

| UI Role         | Token       |
| --------------- | ----------- |
| Primary Text    | Neutral/0   |
| Secondary Text  | Neutral/300 |
| Supporting Text | Neutral/400 |
| Disabled Text   | Neutral/500 |
| Inverse Text    | Neutral/900 |

---

## Border

| UI Role         | Token       |
| --------------- | ----------- |
| Default Border  | Neutral/700 |
| Strong Border   | Neutral/600 |
| Disabled Border | Neutral/800 |
| Focus Border    | Primary/500 |
| Error Border    | Error/500   |

---

## Brand Colors

| UI Role          | Token         |
| ---------------- | ------------- |
| Primary Action   | Primary/500   |
| Primary Hover    | Primary/600   |
| Primary Pressed  | Primary/700   |
| Secondary Action | Secondary/500 |
| Accent Action    | Accent/500    |

---

## Semantic Colors

### Success

| UI Role            | Token       |
| ------------------ | ----------- |
| Success Background | Success/100 |
| Success Content    | Success/500 |
| Success Emphasis   | Success/700 |

### Warning

| UI Role            | Token       |
| ------------------ | ----------- |
| Warning Background | Warning/100 |
| Warning Content    | Warning/500 |
| Warning Emphasis   | Warning/700 |

### Error

| UI Role          | Token     |
| ---------------- | --------- |
| Error Background | Error/100 |
| Error Content    | Error/500 |
| Error Emphasis   | Error/700 |

### Info

| UI Role         | Token    |
| --------------- | -------- |
| Info Background | Info/100 |
| Info Content    | Info/500 |
| Info Emphasis   | Info/700 |

---

# Typography Mapping

| UI Role       | Typography Token |
| ------------- | ---------------- |
| Screen Title  | Headline Large   |
| Section Title | Headline Small   |
| Card Title    | Title Medium     |
| Body Content  | Body Medium      |
| Button Label  | Label Large      |
| Metadata      | Label Small      |

---

# Elevation Mapping

| Component     | Elevation Token |
| ------------- | --------------- |
| Page Layout   | Elevation/0     |
| Standard Card | Elevation/1     |
| Dropdown      | Elevation/2     |
| Date Picker   | Elevation/2     |
| Time Picker   | Elevation/2     |
| Modal         | Elevation/3     |
| Dialog        | Elevation/3     |

---

# Radius Mapping

| Component      | Radius Token |
| -------------- | ------------ |
| Text Field     | Radius/12    |
| Button         | Radius/12    |
| Dropdown       | Radius/12    |
| Card           | Radius/12    |
| Analytics Card | Radius/16    |
| Badge          | Radius/9999  |
| Tag            | Radius/9999  |

---

# Icon Mapping

| State    | Token       |
| -------- | ----------- |
| Default  | Neutral/300 |
| Active   | Primary/500 |
| Disabled | Neutral/500 |
| Success  | Success/500 |
| Warning  | Warning/500 |
| Error    | Error/500   |
| Info     | Info/500    |

---

# Accessibility Guidelines

## Do

* Maintain strong contrast between text and surfaces.
* Use semantic colors consistently.
* Preserve visual hierarchy through typography and spacing.
* Use elevation to distinguish layered content.

## Don't

* Use pure black backgrounds.
* Reduce text contrast for aesthetic purposes.
* Replace hierarchy with color alone.
* Overuse saturated colors.

---

# Dark Theme Design Principles

## Comfortable Viewing

Dark surfaces should reduce eye strain without compromising readability.

---

## Consistent Hierarchy

The same hierarchy established in Light Theme must be preserved.

---

## Balanced Contrast

Contrast should remain strong enough for accessibility while avoiding excessive visual harshness.

---

## Semantic Consistency

Semantic colors should retain the same meaning across both themes.

Examples:

* Success = Completed
* Warning = Attention Required
* Error = Failed Action
* Info = Informational Feedback

---

# Flutter Implementation

The Dark Theme is implemented through:

```text
dark_theme.dart
```

and consumed through:

```text
AppTheme.dark
```

within the application theme system.

---

# Notes

The Dark Theme is an adaptation of the FoCient design system, not a separate design system.

All components should be designed using shared design tokens to ensure consistency between Light Theme and Dark Theme.

No component should require a separate redesign solely for dark mode support.
