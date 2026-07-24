import 'app_timezone.dart';

class AppTimezones {
  AppTimezones._();

  static const List<AppTimezone> all = [
    // Indonesia

    AppTimezone(
      id: 'Asia/Jakarta',
      label: 'Jakarta (UTC+07:00)',
      utcOffset: 'UTC+07:00',
    ),

    AppTimezone(
      id: 'Asia/Makassar',
      label: 'Makassar (UTC+08:00)',
      utcOffset: 'UTC+08:00',
    ),

    AppTimezone(
      id: 'Asia/Jayapura',
      label: 'Jayapura (UTC+09:00)',
      utcOffset: 'UTC+09:00',
    ),

    // Southeast Asia

    AppTimezone(
      id: 'Asia/Singapore',
      label: 'Singapore (UTC+08:00)',
      utcOffset: 'UTC+08:00',
    ),

    AppTimezone(
      id: 'Asia/Kuala_Lumpur',
      label: 'Kuala Lumpur (UTC+08:00)',
      utcOffset: 'UTC+08:00',
    ),

    AppTimezone(
      id: 'Asia/Bangkok',
      label: 'Bangkok (UTC+07:00)',
      utcOffset: 'UTC+07:00',
    ),

    AppTimezone(
      id: 'Asia/Ho_Chi_Minh',
      label: 'Ho Chi Minh City (UTC+07:00)',
      utcOffset: 'UTC+07:00',
    ),

    AppTimezone(
      id: 'Asia/Manila',
      label: 'Manila (UTC+08:00)',
      utcOffset: 'UTC+08:00',
    ),

    // East Asia

    AppTimezone(
      id: 'Asia/Tokyo',
      label: 'Tokyo (UTC+09:00)',
      utcOffset: 'UTC+09:00',
    ),

    AppTimezone(
      id: 'Asia/Seoul',
      label: 'Seoul (UTC+09:00)',
      utcOffset: 'UTC+09:00',
    ),

    AppTimezone(
      id: 'Asia/Shanghai',
      label: 'Shanghai (UTC+08:00)',
      utcOffset: 'UTC+08:00',
    ),

    AppTimezone(
      id: 'Asia/Hong_Kong',
      label: 'Hong Kong (UTC+08:00)',
      utcOffset: 'UTC+08:00',
    ),

    AppTimezone(
      id: 'Asia/Taipei',
      label: 'Taipei (UTC+08:00)',
      utcOffset: 'UTC+08:00',
    ),

    // South Asia

    AppTimezone(
      id: 'Asia/Kolkata',
      label: 'New Delhi (UTC+05:30)',
      utcOffset: 'UTC+05:30',
    ),

    AppTimezone(
      id: 'Asia/Kathmandu',
      label: 'Kathmandu (UTC+05:45)',
      utcOffset: 'UTC+05:45',
    ),

    AppTimezone(
      id: 'Asia/Dhaka',
      label: 'Dhaka (UTC+06:00)',
      utcOffset: 'UTC+06:00',
    ),

    // Middle East

    AppTimezone(
      id: 'Asia/Dubai',
      label: 'Dubai (UTC+04:00)',
      utcOffset: 'UTC+04:00',
    ),

    AppTimezone(
      id: 'Asia/Riyadh',
      label: 'Riyadh (UTC+03:00)',
      utcOffset: 'UTC+03:00',
    ),

    AppTimezone(
      id: 'Asia/Tehran',
      label: 'Tehran (UTC+03:30)',
      utcOffset: 'UTC+03:30',
    ),

    // Europe

    AppTimezone(
      id: 'Europe/London',
      label: 'London (UTC+00:00)',
      utcOffset: 'UTC+00:00',
    ),

    AppTimezone(
      id: 'Europe/Paris',
      label: 'Paris (UTC+01:00)',
      utcOffset: 'UTC+01:00',
    ),

    AppTimezone(
      id: 'Europe/Berlin',
      label: 'Berlin (UTC+01:00)',
      utcOffset: 'UTC+01:00',
    ),

    AppTimezone(
      id: 'Europe/Amsterdam',
      label: 'Amsterdam (UTC+01:00)',
      utcOffset: 'UTC+01:00',
    ),

    AppTimezone(
      id: 'Europe/Madrid',
      label: 'Madrid (UTC+01:00)',
      utcOffset: 'UTC+01:00',
    ),

    AppTimezone(
      id: 'Europe/Rome',
      label: 'Rome (UTC+01:00)',
      utcOffset: 'UTC+01:00',
    ),

    // Oceania

    AppTimezone(
      id: 'Australia/Perth',
      label: 'Perth (UTC+08:00)',
      utcOffset: 'UTC+08:00',
    ),

    AppTimezone(
      id: 'Australia/Adelaide',
      label: 'Adelaide (UTC+09:30)',
      utcOffset: 'UTC+09:30',
    ),

    AppTimezone(
      id: 'Australia/Sydney',
      label: 'Sydney (UTC+10:00)',
      utcOffset: 'UTC+10:00',
    ),

    AppTimezone(
      id: 'Pacific/Auckland',
      label: 'Auckland (UTC+12:00)',
      utcOffset: 'UTC+12:00',
    ),

    // North America

    AppTimezone(
      id: 'America/New_York',
      label: 'New York (UTC-05:00)',
      utcOffset: 'UTC-05:00',
    ),

    AppTimezone(
      id: 'America/Chicago',
      label: 'Chicago (UTC-06:00)',
      utcOffset: 'UTC-06:00',
    ),

    AppTimezone(
      id: 'America/Denver',
      label: 'Denver (UTC-07:00)',
      utcOffset: 'UTC-07:00',
    ),

    AppTimezone(
      id: 'America/Los_Angeles',
      label: 'Los Angeles (UTC-08:00)',
      utcOffset: 'UTC-08:00',
    ),

    AppTimezone(
      id: 'America/Toronto',
      label: 'Toronto (UTC-05:00)',
      utcOffset: 'UTC-05:00',
    ),

    AppTimezone(
      id: 'America/Vancouver',
      label: 'Vancouver (UTC-08:00)',
      utcOffset: 'UTC-08:00',
    ),

    // South America

    AppTimezone(
      id: 'America/Sao_Paulo',
      label: 'São Paulo (UTC-03:00)',
      utcOffset: 'UTC-03:00',
    ),

    AppTimezone(
      id: 'America/Buenos_Aires',
      label: 'Buenos Aires (UTC-03:00)',
      utcOffset: 'UTC-03:00',
    ),

    AppTimezone(
      id: 'America/Santiago',
      label: 'Santiago (UTC-04:00)',
      utcOffset: 'UTC-04:00',
    ),

    // Africa

    AppTimezone(
      id: 'Africa/Cairo',
      label: 'Cairo (UTC+02:00)',
      utcOffset: 'UTC+02:00',
    ),

    AppTimezone(
      id: 'Africa/Johannesburg',
      label: 'Johannesburg (UTC+02:00)',
      utcOffset: 'UTC+02:00',
    ),

    AppTimezone(
      id: 'Africa/Nairobi',
      label: 'Nairobi (UTC+03:00)',
      utcOffset: 'UTC+03:00',
    ),
  ];

  static AppTimezone defaultTimezone = all.firstWhere(
    (e) => e.id == 'Asia/Jakarta',
  );
}
