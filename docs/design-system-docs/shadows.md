# Elevation

## Overview

The FoCient elevation system defines visual depth and hierarchy through shadows.

Elevation helps users distinguish between surfaces, identify interactive elements, and understand the relative importance of content within the interface.

The system consists of four elevation levels ranging from flat surfaces to highly elevated components.

---

# Elevation Scale

| Token       | Level  | Usage                               |
| ----------- | ------ | ----------------------------------- |
| Elevation/0 | Flat   | Background surfaces                 |
| Elevation/1 | Low    | Standard interactive components     |
| Elevation/2 | Medium | Floating content                    |
| Elevation/3 | High   | Priority overlays and modal content |

---

# Elevation Hierarchy

## Elevation/0

No shadow applied.

### Purpose

Used for flat surfaces that should blend into the page layout.

### Examples

* Application Background
* Page Containers
* Section Backgrounds
* Static Layout Areas

### Visual Priority

Lowest

---

## Elevation/1

Subtle shadow for basic separation.

### Purpose

Creates light distinction between a component and its surrounding surface.

### Examples

* Standard Card
* Button
* Text Field
* Dropdown
* Navigation Bar

### Visual Priority

Low

---

## Elevation/2

Moderate shadow for floating content.

### Purpose

Used when a component should appear above surrounding content.

### Examples

* Floating Action Elements
* Expanded Dropdown
* Date Picker
* Time Picker
* Popover

### Visual Priority

Medium

---

## Elevation/3

Strongest shadow level in the FoCient design system.

### Purpose

Used for high-priority overlays and temporary surfaces.

### Examples

* Modal
* Dialog
* Bottom Sheet
* Full Overlay Components

### Visual Priority

High

---

# Component Mapping

| Component       | Elevation Token |
| --------------- | --------------- |
| Page Background | Elevation/0     |
| Standard Card   | Elevation/1     |
| Button          | Elevation/1     |
| Text Field      | Elevation/1     |
| Dropdown Menu   | Elevation/2     |
| Date Picker     | Elevation/2     |
| Time Picker     | Elevation/2     |
| Modal           | Elevation/3     |
| Dialog          | Elevation/3     |
| Bottom Sheet    | Elevation/3     |

---

# Design Rules

## Do

* Use elevation to communicate hierarchy.
* Keep most surfaces at Elevation/0 or Elevation/1.
* Reserve Elevation/3 for temporary overlays.
* Maintain consistent elevation across similar components.

## Don't

* Apply elevation to every component.
* Use elevation for decoration only.
* Mix elevation levels without hierarchy.
* Create custom shadow values outside the design system.

---

# Accessibility Guidelines

* Elevation should support hierarchy, not replace it.
* Combine elevation with spacing and contrast.
* Ensure elevated components remain visually distinguishable in both light and dark themes.

---

# Flutter Token Mapping

| Design Token | Flutter Token   |
| ------------ | --------------- |
| Elevation/0  | AppShadows.none |
| Elevation/1  | AppShadows.sm   |
| Elevation/2  | AppShadows.md   |
| Elevation/3  | AppShadows.lg   |

---

# Implementation Notes

All shadows must be implemented through `AppShadows`.

Example:

```dart
Container(
  decoration: BoxDecoration(
    boxShadow: AppShadows.md,
  ),
)
```

Avoid defining custom BoxShadow values directly inside widgets.

All elevation values must be controlled by the FoCient design system.
