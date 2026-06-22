# Spacing

## Overview

The FoCient spacing system is built using a 4-point grid system to ensure visual consistency, predictable layouts, and scalable component design.

All spacing values must be derived from multiples of 4.

---

# Spacing Scale

| Token      | Value | Usage                |
| ---------- | ----- | -------------------- |
| Spacing/0  | 0px   | No spacing           |
| Spacing/4  | 4px   | Minimal spacing      |
| Spacing/8  | 8px   | Compact spacing      |
| Spacing/12 | 12px  | Small spacing        |
| Spacing/16 | 16px  | Default spacing      |
| Spacing/20 | 20px  | Medium spacing       |
| Spacing/24 | 24px  | Section spacing      |
| Spacing/28 | 28px  | Large spacing        |
| Spacing/32 | 32px  | Component grouping   |
| Spacing/36 | 36px  | Large grouping       |
| Spacing/40 | 40px  | Section separation   |
| Spacing/44 | 44px  | Major separation     |
| Spacing/48 | 48px  | Page section spacing |
| Spacing/52 | 52px  | Extra large spacing  |
| Spacing/56 | 56px  | Layout spacing       |
| Spacing/60 | 60px  | Large layout spacing |
| Spacing/64 | 64px  | Hero section spacing |

---

# Usage Guidelines

## Micro Spacing

Used inside components.

| Token |
| ----- |
| 4px   |
| 8px   |
| 12px  |

Examples:

* Icon and label spacing
* Checkbox label spacing
* Small internal padding

---

## Component Spacing

Used within component layouts.

| Token |
| ----- |
| 16px  |
| 20px  |
| 24px  |

Examples:

* Button padding
* Text field padding
* Card internal spacing

---

## Section Spacing

Used between content groups.

| Token |
| ----- |
| 32px  |
| 40px  |
| 48px  |

Examples:

* Between dashboard sections
* Between onboarding blocks
* Between analytics sections

---

## Layout Spacing

Used for page-level layouts.

| Token |
| ----- |
| 56px  |
| 64px  |

Examples:

* Hero sections
* Empty states
* Major page spacing

---

# Design Rules

## Do

* Use only spacing tokens from the design system.
* Maintain the 4-point grid consistently.
* Prefer larger spacing over visual clutter.
* Use spacing to establish hierarchy.

## Don't

* Use arbitrary spacing values such as 7px, 13px, 19px, or 27px.
* Hardcode spacing values directly in widgets.
* Mix different spacing systems.

---

# Flutter Token Mapping

| Design Token | Flutter Token   |
| ------------ | --------------- |
| Spacing/4    | AppSpacing.xs   |
| Spacing/8    | AppSpacing.sm   |
| Spacing/12   | AppSpacing.md   |
| Spacing/16   | AppSpacing.lg   |
| Spacing/24   | AppSpacing.xl   |
| Spacing/32   | AppSpacing.xxl  |
| Spacing/64   | AppSpacing.hero |

---

# Implementation Notes

All spacing values must be implemented through `AppSpacing`.

Example:

```dart
Padding(
  padding: EdgeInsets.all(AppSpacing.lg),
)
```

Avoid hardcoded spacing values inside widgets.
