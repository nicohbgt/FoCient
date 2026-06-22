# Radius

## Overview

The FoCient radius system defines the corner curvature used throughout the application.

A consistent radius scale helps create a modern, friendly, and visually cohesive experience while maintaining predictable component styling.

---

# Radius Scale

| Token       | Value | Usage                           |
| ----------- | ----- | ------------------------------- |
| Radius/0    | 0px   | Sharp corners, dividers         |
| Radius/4    | 4px   | Small elements                  |
| Radius/8    | 8px   | Compact components              |
| Radius/12   | 12px  | Standard components             |
| Radius/16   | 16px  | Large containers                |
| Radius/9999 | Full  | Pills, chips, circular elements |

---

# Radius Usage Hierarchy

## Radius/0

Used when no corner rounding is required.

### Examples

* Divider
* Progress bar edge
* Full-width separator

---

## Radius/4

Used for small UI elements.

### Examples

* Small badge
* Status indicator
* Compact tag

---

## Radius/8

Used for compact components.

### Examples

* Checkbox
* Small button
* Input accessories

---

## Radius/12

Default radius across the FoCient interface.

### Examples

* Primary Button
* Text Field
* Dropdown
* Card
* Modal

---

## Radius/16

Used for larger surfaces and containers.

### Examples

* Dashboard Widget
* Analytics Card
* Bottom Sheet
* Feature Banner

---

## Radius/9999

Used for fully rounded components.

### Examples

* Chip
* Pill Button
* Avatar
* Circular Badge

---

# Component Mapping

| Component        | Radius Token |
| ---------------- | ------------ |
| Primary Button   | Radius/12    |
| Secondary Button | Radius/12    |
| Text Field       | Radius/12    |
| Dropdown         | Radius/12    |
| Date Picker      | Radius/12    |
| Time Picker      | Radius/12    |
| Card             | Radius/12    |
| Analytics Card   | Radius/16    |
| Badge            | Radius/9999  |
| Tag              | Radius/9999  |
| Chip             | Radius/9999  |
| Avatar           | Radius/9999  |

---

# Design Rules

## Do

* Use Radius/12 as the default component radius.
* Use Radius/16 for larger containers.
* Use Radius/9999 for pill and circular elements.
* Maintain consistency across similar components.

## Don't

* Introduce arbitrary radius values.
* Use different radii for components with the same purpose.
* Hardcode radius values inside widgets.

---

# Flutter Token Mapping

| Design Token | Flutter Token  |
| ------------ | -------------- |
| Radius/0     | AppRadius.none |
| Radius/4     | AppRadius.xs   |
| Radius/8     | AppRadius.sm   |
| Radius/12    | AppRadius.md   |
| Radius/16    | AppRadius.lg   |
| Radius/9999  | AppRadius.full |

---

# Implementation Notes

All radius values must be implemented through `AppRadius`.

Example:

```dart
Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(AppRadius.md),
  ),
)
```

Avoid using raw radius values directly in production code.
