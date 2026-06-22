# Typography

## Overview

The FoCient typography system is designed to support readability, focus, and efficient information processing during long productivity sessions.

Typography establishes a clear visual hierarchy that helps users quickly understand the importance of information and navigate the interface with minimal cognitive effort.

---

# Font Family

## Primary Font

| Property    | Value                                        |
| ----------- | -------------------------------------------- |
| Font Family | Inter                                        |
| Category    | Sans Serif                                   |
| Usage       | Application UI, Forms, Navigation, Dashboard |

### Rationale

Inter was selected because it provides:

* Excellent readability on digital screens
* Consistent rendering across devices
* Modern and professional appearance
* Strong suitability for productivity applications

---

# Typography Scale

## Display

Used for hero sections and major visual emphasis.

| Token          | Font Size | Font Weight | Line Height | Usage           |
| -------------- | --------- | ----------- | ----------- | --------------- |
| Display Large  | 48px      | 700         | 56px        | Marketing Hero  |
| Display Medium | 40px      | 700         | 48px        | Major Section   |
| Display Small  | 32px      | 700         | 40px        | Primary Heading |

---

## Headline

Used for page titles and key section headers.

| Token           | Font Size | Font Weight | Line Height | Usage          |
| --------------- | --------- | ----------- | ----------- | -------------- |
| Headline Large  | 28px      | 700         | 36px        | Screen Title   |
| Headline Medium | 24px      | 600         | 32px        | Major Section  |
| Headline Small  | 20px      | 600         | 28px        | Section Header |

---

## Title

Used for card titles and subsections.

| Token        | Font Size | Font Weight | Line Height | Usage         |
| ------------ | --------- | ----------- | ----------- | ------------- |
| Title Large  | 18px      | 600         | 28px        | Card Header   |
| Title Medium | 16px      | 600         | 24px        | Card Title    |
| Title Small  | 14px      | 600         | 20px        | Small Section |

---

## Body

Used for primary content throughout the application.

| Token       | Font Size | Font Weight | Line Height | Usage                 |
| ----------- | --------- | ----------- | ----------- | --------------------- |
| Body Large  | 16px      | 400         | 24px        | Primary Content       |
| Body Medium | 14px      | 400         | 20px        | Supporting Content    |
| Body Small  | 12px      | 400         | 18px        | Secondary Information |

---

## Label

Used for buttons, badges, form labels, and metadata.

| Token        | Font Size | Font Weight | Line Height | Usage                  |
| ------------ | --------- | ----------- | ----------- | ---------------------- |
| Label Large  | 14px      | 500         | 20px        | Button Text            |
| Label Medium | 12px      | 500         | 16px        | Form Labels            |
| Label Small  | 11px      | 500         | 16px        | Badges, Tags, Metadata |

---

# Font Weight Scale

| Weight Name | Value | Usage     |
| ----------- | ----- | --------- |
| Regular     | 400   | Body Text |
| Medium      | 500   | Labels    |
| SemiBold    | 600   | Titles    |
| Bold        | 700   | Headlines |

---

# Typography Hierarchy

Typography should be applied according to the following hierarchy:

1. Display → Marketing and hero content
2. Headline → Screen titles
3. Title → Card and section titles
4. Body → Main content
5. Label → Buttons, forms, and metadata

---

# Accessibility Guidelines

## Do

* Maintain a clear visual hierarchy.
* Use a minimum body text size of 14px for important content.
* Ensure sufficient color contrast.
* Use font weights consistently.

## Don't

* Use multiple font families.
* Use body text below 12px.
* Overuse bold typography.
* Create custom text styles outside the design system.

---

# Flutter Token Mapping

| Design Token    | Flutter Token                |
| --------------- | ---------------------------- |
| Display Large   | AppTypography.displayLarge   |
| Display Medium  | AppTypography.displayMedium  |
| Display Small   | AppTypography.displaySmall   |
| Headline Large  | AppTypography.headlineLarge  |
| Headline Medium | AppTypography.headlineMedium |
| Headline Small  | AppTypography.headlineSmall  |
| Title Large     | AppTypography.titleLarge     |
| Title Medium    | AppTypography.titleMedium    |
| Title Small     | AppTypography.titleSmall     |
| Body Large      | AppTypography.bodyLarge      |
| Body Medium     | AppTypography.bodyMedium     |
| Body Small      | AppTypography.bodySmall      |
| Label Large     | AppTypography.labelLarge     |
| Label Medium    | AppTypography.labelMedium    |
| Label Small     | AppTypography.labelSmall     |

---

# Implementation Notes

All typography styles must be implemented through `AppTypography`.

Avoid defining ad-hoc `TextStyle` objects directly inside widgets.

Always use typography tokens to maintain consistency across the FoCient design system.
