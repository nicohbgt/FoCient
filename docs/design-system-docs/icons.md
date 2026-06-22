# Iconography

## Overview

The FoCient iconography system is designed to provide clarity, consistency, and visual simplicity throughout the application.

Icons are used to support navigation, communicate actions, represent states, and improve information scanning without creating visual noise.

---

# Design Principles

The FoCient icon system follows these principles:

* Simple and recognizable
* Consistent visual weight
* Minimal visual complexity
* Scalable across all screen sizes
* Accessible and easy to understand

---

# Icon Style

FoCient uses two icon styles.

## Primary Outline

Used as the default icon style throughout the application.

### Usage

* Navigation
* Form controls
* Utility actions
* Status indicators

### Characteristics

* Outline style
* Lightweight appearance
* Better visual balance
* Preferred for most UI elements

---

## Secondary Filled

Used only when stronger visual emphasis is required.

### Usage

* Active state
* Selected state
* Important actions
* Feature highlights

### Characteristics

* Filled style
* Higher visual emphasis
* Limited usage

---

# Icon Grid System

All icons must follow the FoCient grid system.

| Token   | Size    |
| ------- | ------- |
| Icon/XS | 16 × 16 |
| Icon/SM | 20 × 20 |
| Icon/MD | 24 × 24 |
| Icon/LG | 32 × 32 |
| Icon/XL | 40 × 40 |

---

# Recommended Usage

| Size | Usage                             |
| ---- | --------------------------------- |
| 16px | Metadata, inline actions          |
| 20px | Compact controls                  |
| 24px | Default application icon size     |
| 32px | Navigation and feature highlights |
| 40px | Hero and onboarding illustrations |

---

# Stroke System

To maintain visual consistency, all custom icons should use the following stroke widths.

| Token           | Stroke Width |
| --------------- | ------------ |
| Stroke/Default  | 1.75px       |
| Stroke/Emphasis | 2px          |

---

# Stroke Usage

## 1.75px

Default icon stroke.

### Usage

* Navigation
* Forms
* General UI

---

## 2px

Stronger visual emphasis.

### Usage

* Feature highlight
* Active state
* Promotional content

---

# Color System

Icons should follow semantic color rules.

| State          | Usage                        |
| -------------- | ---------------------------- |
| Default Light  | Standard icon on light theme |
| Default Dark   | Standard icon on dark theme  |
| Active         | Selected or active state     |
| Disabled Light | Disabled icon on light theme |
| Disabled Dark  | Disabled icon on dark theme  |
| Success        | Success status               |
| Warning        | Warning status               |
| Error          | Error status                 |
| Info           | Information status           |

---

# Color Mapping

| State          | Token       |
| -------------- | ----------- |
| Default Light  | Neutral/600 |
| Default Dark   | Neutral/300 |
| Active         | Primary/500 |
| Disabled Light | Neutral/400 |
| Disabled Dark  | Neutral/700 |
| Success        | Success/500 |
| Warning        | Warning/500 |
| Error          | Error/500   |
| Info           | Info/500    |

---

# Icon Spacing

FoCient uses a spacing system specifically for icon placement.

| Token    | Value | Usage            |
| -------- | ----- | ---------------- |
| Tight    | 4px   | Dense layouts    |
| Balanced | 8px   | Default spacing  |
| Spacious | 12px  | Large components |

---

# Recommended Icon Spacing

## 4px — Tight

### Usage

* Compact lists
* Dense navigation
* Metadata display

---

## 8px — Balanced

### Usage

* Buttons
* Form fields
* Navigation items

Default spacing across the application.

---

## 12px — Spacious

### Usage

* Feature cards
* Empty states
* Onboarding screens

---

# Design Rules

## Do

* Use 24px as the default icon size.
* Use outline icons as the primary style.
* Maintain consistent spacing.
* Follow semantic color usage.

## Don't

* Mix multiple icon styles in the same component.
* Use arbitrary icon sizes.
* Use arbitrary stroke widths.
* Apply decorative colors without meaning.

---

# Flutter Token Mapping

| Design Token | Flutter Usage |
| ------------ | ------------- |
| Icon/XS      | 16            |
| Icon/SM      | 20            |
| Icon/MD      | 24            |
| Icon/LG      | 32            |
| Icon/XL      | 40            |

---

# Implementation Notes

The FoCient application should use a centralized icon system through `AppIcons`.

Example:

```dart
Icon(
  AppIcons.home,
  size: 24,
)
```

Avoid using hardcoded icon sizes throughout the application.

Always follow the icon size, color, and spacing tokens defined in the design system.
