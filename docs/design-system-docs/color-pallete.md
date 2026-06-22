# Color Palette

## Overview

Color Palette FoCient dirancang untuk menciptakan pengalaman yang fokus, modern, dan nyaman digunakan dalam sesi produktivitas jangka panjang.

Sistem warna FoCient dibangun menggunakan enam kategori utama:

* Brand Colors
* Neutral Colors
* Success Colors
* Warning Colors
* Error Colors
* Info Colors

---

# Brand Colors

Brand Colors digunakan untuk membangun identitas visual FoCient serta memberikan emphasis pada action dan fitur utama.

## Primary Colors

Primary Color merupakan warna utama FoCient dan digunakan untuk action, focus state, navigation, dan interaction utama.

| Token       | Color Name        | Hex     | Usage                                                  |
| ----------- | ----------------- | ------- | ------------------------------------------------------ |
| Primary/50  | Soft Sky          | #EFF6FF | Subtle background, selected container                  |
| Primary/100 | Light Blue Mist   | #DBEAFE | Active container, focus background                     |
| Primary/300 | Calm Blue         | #93C5FD | Secondary highlight, supporting emphasis               |
| Primary/500 | Focus Blue        | #3B82F6 | Primary button, active navigation, primary interaction |
| Primary/600 | Deep Focus        | #2563EB | Interaction emphasis, hover state                      |
| Primary/700 | Productivity Blue | #1D4ED8 | Active state, pressed state                            |
| Primary/900 | Midnight Focus    | #172554 | Strong emphasis, premium section                       |

### Usage Guidelines

**Use For**

* Primary CTA Button
* Active Navigation
* Selected State
* Focus State
* Progress Indicator

**Avoid**

* Large backgrounds
* Body text
* Decorative usage without interaction purpose

---

## Secondary Colors

Secondary Color digunakan untuk merepresentasikan AI dan smart recommendation.

| Token         | Color Name         | Hex     | Usage                                    |
| ------------- | ------------------ | ------- | ---------------------------------------- |
| Secondary/100 | Lavender Mist      | #EDE9FE | AI container background                  |
| Secondary/500 | Intelligent Purple | #8B5CF6 | AI interaction, recommendation indicator |
| Secondary/700 | Deep Indigo        | #6D28D9 | Strong AI emphasis                       |

### Usage Guidelines

**Use For**

* AI Features
* Recommendation Cards
* AI Insights
* AI Assistant

---

## Accent Colors

Accent Color digunakan untuk automation, synchronization, dan smart workflow.

| Token      | Color Name | Hex     | Usage                                  |
| ---------- | ---------- | ------- | -------------------------------------- |
| Accent/500 | Smart Cyan | #06B6D4 | Automation indicator, sync state       |
| Accent/700 | Deep Teal  | #0F766E | Automation emphasis, advanced workflow |

### Usage Guidelines

**Use For**

* Automation Features
* Synchronization Status
* Smart Workflow Indicator

---

# Neutral Colors

Neutral Colors merupakan fondasi utama antarmuka FoCient dan digunakan untuk background, surface, text, border, dan layout.

| Token       | Color Name     | Hex     | Usage                            |
| ----------- | -------------- | ------- | -------------------------------- |
| Neutral/0   | Pure White     | #FFFFFF | Elevated surface, modal, card    |
| Neutral/50  | Soft Mist      | #F8FAFC | Application background           |
| Neutral/100 | Light Fog      | #F1F5F9 | Secondary surface                |
| Neutral/200 | Silver Mist    | #E2E8F0 | Border, divider                  |
| Neutral/300 | Cool Gray      | #CBD5E1 | Strong divider, inactive outline |
| Neutral/400 | Muted Gray     | #94A3B8 | Placeholder, disabled icon       |
| Neutral/500 | Balanced Slate | #64748B | Secondary text, metadata         |
| Neutral/600 | Deep Slate     | #475569 | Supporting text, default icon    |
| Neutral/700 | Graphite       | #334155 | Title, section label             |
| Neutral/800 | Charcoal Blue  | #1E293B | Dark surface                     |
| Neutral/900 | Midnight Slate | #0F172A | Primary text, strongest emphasis |

### Usage Guidelines

Neutral Colors should become the dominant visual language of the interface.

---

# Success Colors

Success Colors digunakan untuk menunjukkan keberhasilan dan penyelesaian aktivitas.

| Token       | Color Name   | Hex     | Usage                         |
| ----------- | ------------ | ------- | ----------------------------- |
| Success/100 | Mint Mist    | #DCFCE7 | Success background            |
| Success/500 | Growth Green | #22C55E | Completed task, success state |
| Success/700 | Deep Success | #15803D | Strong success emphasis       |

---

# Warning Colors

Warning Colors digunakan untuk reminder, deadline, dan kondisi yang memerlukan perhatian.

| Token       | Color Name  | Hex     | Usage                   |
| ----------- | ----------- | ------- | ----------------------- |
| Warning/100 | Soft Amber  | #FEF3C7 | Warning background      |
| Warning/500 | Focus Amber | #F59E0B | Reminder, caution state |
| Warning/700 | Deep Amber  | #B45309 | Strong warning emphasis |

---

# Error Colors

Error Colors digunakan untuk menunjukkan kesalahan, kegagalan, dan destructive action.

| Token     | Color Name   | Hex     | Usage                         |
| --------- | ------------ | ------- | ----------------------------- |
| Error/100 | Soft Rose    | #FEE2E2 | Error background              |
| Error/500 | Alert Red    | #EF4444 | Error state, validation error |
| Error/700 | Deep Crimson | #B91C1C | Critical error emphasis       |

---

# Info Colors

Info Colors digunakan untuk informasi, helper message, dan neutral system feedback.

| Token    | Color Name   | Hex     | Usage                                 |
| -------- | ------------ | ------- | ------------------------------------- |
| Info/100 | Sky Mist     | #E0F2FE | Information background                |
| Info/500 | Insight Blue | #0EA5E9 | Information indicator, helper message |
| Info/700 | Deep Info    | #0369A1 | Strong information emphasis           |

---

# Color Usage Hierarchy

Apply colors using the following priority:

1. Neutral → Surface, text, layout
2. Primary → Action and interaction
3. Secondary → AI and recommendation
4. Accent → Automation and smart workflow
5. Semantic → Status and feedback

---

# Design Rules

### Do

* Use Neutral Colors as the dominant interface color.
* Use Primary Colors for primary actions.
* Use Secondary Colors only for AI-related features.
* Use Accent Colors for automation-related features.
* Use Semantic Colors according to status context.

### Don't

* Use Semantic Colors as branding colors.
* Use Secondary Colors outside AI-related experiences.
* Use Accent Colors for primary CTA buttons.
* Hardcode color values directly in Flutter widgets.

---

# Flutter Token Mapping

All colors must be implemented through design tokens.

Example:

| Design Token | Flutter Token        |
| ------------ | -------------------- |
| Primary/500  | AppColors.primary500 |
| Primary/700  | AppColors.primary700 |
| Neutral/50   | AppColors.neutral50  |
| Neutral/900  | AppColors.neutral900 |
| Success/500  | AppColors.success500 |
| Error/500    | AppColors.error500   |

Never use raw hex values directly in production code.
