# Theme System

## Overview

The FoCient Theme System defines how design tokens are combined to create a consistent visual experience across the application.

The theme system ensures that colors, typography, spacing, elevation, and iconography work together seamlessly while supporting both Light Theme and Dark Theme.

---

# Theme Architecture

The FoCient design system is structured into three layers.

## Layer 1 — Design Tokens

The foundation of the design system.

### Includes

* Color Palette
* Typography
* Spacing
* Radius
* Elevation
* Iconography

These tokens should never be used directly as business logic.

They serve as the visual foundation for all UI components.

---

## Layer 2 — Theme Mapping

The theme layer maps design tokens into UI roles.

### Examples

| UI Role        | Design Token |
| -------------- | ------------ |
| Primary Action | Primary/500  |
| App Background | Neutral/50   |
| Surface        | Neutral/0    |
| Primary Text   | Neutral/900  |
| Secondary Text | Neutral/500  |
| Border         | Neutral/200  |

Theme mapping allows FoCient to support multiple themes without changing component implementations.

---

## Layer 3 — Components

Components consume theme values rather than raw design tokens.

### Examples

* Button
* Text Field
* Card
* Dropdown
* Badge
* Navigation

Components should always reference theme roles instead of hardcoded values.

---

# Supported Themes

FoCient supports the following theme modes:

| Theme Mode   | Description                                     |
| ------------ | ----------------------------------------------- |
| Light Theme  | Default productivity environment                |
| Dark Theme   | Reduced visual strain in low-light environments |
| System Theme | Automatically follows device settings           |

---

# Theme Goals

The FoCient theme system is designed to achieve the following objectives:

### Consistency

Provide a unified visual language across all screens and components.

### Scalability

Allow new components and features to be added without redesigning existing UI.

### Accessibility

Maintain sufficient contrast and readability across all supported themes.

### Maintainability

Ensure that visual updates can be performed through design tokens rather than individual components.

---

# Theme Principles

## Productivity First

Visual styling should support focus rather than create distraction.

---

## Minimal Cognitive Load

Colors, typography, and elevation should communicate hierarchy clearly.

---

## Semantic Meaning

Colors should communicate purpose.

Examples:

* Success = Completed
* Warning = Attention Required
* Error = Failed Action
* Info = Informational Feedback

---

## Consistency Over Creativity

Components should prioritize consistency rather than unique styling.

---

# Theme Rules

## Do

* Use theme roles whenever possible.
* Use semantic colors according to their meaning.
* Maintain consistent hierarchy across all screens.
* Follow design token definitions.

---

## Don't

* Hardcode colors.
* Hardcode typography styles.
* Create custom shadows.
* Create custom radius values.
* Override theme styles without a design review.

---

# Flutter Architecture

The Flutter implementation follows this structure:

```text
lib/app/theme/

app_colors.dart
app_typography.dart
app_spacing.dart
app_radius.dart
app_shadows.dart
app_icons.dart

app_theme.dart
light_theme.dart
dark_theme.dart
```

---

# Theme Flow

```text
Design Tokens
      ↓
Theme Mapping
      ↓
ThemeData
      ↓
Reusable Components
      ↓
Application Screens
```

---

# Future Expansion

The theme system should support future enhancements including:

* Dynamic Color Schemes
* User Theme Preferences
* High Contrast Mode
* Accessibility Themes
* Seasonal Branding

without requiring major component refactoring.

---

# Implementation Notes

All visual styling within FoCient must originate from the theme system.

No component should directly define its own color palette, typography scale, spacing scale, radius values, or shadow definitions.

The theme system is the single source of truth for visual consistency throughout the application.
