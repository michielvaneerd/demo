import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4286666002),
      surfaceTint: Color(4286666002),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294958518),
      onPrimaryContainer: Color(4280948736),
      secondary: Color(4285553473),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294762172),
      onSecondaryContainer: Color(4280817925),
      tertiary: Color(4283655230),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4292274617),
      onTertiaryContainer: Color(4279377667),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965492),
      onSurface: Color(4280359443),
      onSurfaceVariant: Color(4283450681),
      outline: Color(4286739816),
      outlineVariant: Color(4292134068),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281741095),
      inversePrimary: Color(4294425712),
      primaryFixed: Color(4294958518),
      onPrimaryFixed: Color(4280948736),
      primaryFixedDim: Color(4294425712),
      onPrimaryFixedVariant: Color(4284759808),
      secondaryFixed: Color(4294762172),
      onSecondaryFixed: Color(4280817925),
      secondaryFixedDim: Color(4292788898),
      onSecondaryFixedVariant: Color(4283908907),
      tertiaryFixed: Color(4292274617),
      onTertiaryFixed: Color(4279377667),
      tertiaryFixedDim: Color(4290432415),
      onTertiaryFixedVariant: Color(4282141736),
      surfaceDim: Color(4293253324),
      surfaceBright: Color(4294965492),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963685),
      surfaceContainer: Color(4294569183),
      surfaceContainerHigh: Color(4294174426),
      surfaceContainerHighest: Color(4293779668),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4284431104),
      surfaceTint: Color(4286666002),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4288375592),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283645735),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4287131989),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281878565),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4285102674),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965492),
      onSurface: Color(4280359443),
      onSurfaceVariant: Color(4283121974),
      outline: Color(4285095249),
      outlineVariant: Color(4286937451),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281741095),
      inversePrimary: Color(4294425712),
      primaryFixed: Color(4288375592),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4286468879),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4287131989),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285421630),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4285102674),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283523388),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293253324),
      surfaceBright: Color(4294965492),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963685),
      surfaceContainer: Color(4294569183),
      surfaceContainerHigh: Color(4294174426),
      surfaceContainerHighest: Color(4293779668),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4281540096),
      surfaceTint: Color(4286666002),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4284431104),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281278218),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283645735),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4279772679),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4281878565),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965492),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4281016856),
      outline: Color(4283121974),
      outlineVariant: Color(4283121974),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281741095),
      inversePrimary: Color(4294961361),
      primaryFixed: Color(4284431104),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4282459904),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283645735),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282067219),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4281878565),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4280430864),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293253324),
      surfaceBright: Color(4294965492),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963685),
      surfaceContainer: Color(4294569183),
      surfaceContainerHigh: Color(4294174426),
      surfaceContainerHighest: Color(4293779668),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294425712),
      surfaceTint: Color(4294425712),
      onPrimary: Color(4282788352),
      primaryContainer: Color(4284759808),
      onPrimaryContainer: Color(4294958518),
      secondary: Color(4292788898),
      onSecondary: Color(4282330391),
      secondaryContainer: Color(4283908907),
      onSecondaryContainer: Color(4294762172),
      tertiary: Color(4290432415),
      onTertiary: Color(4280694036),
      tertiaryContainer: Color(4282141736),
      onTertiaryContainer: Color(4292274617),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279767564),
      onSurface: Color(4293779668),
      onSurfaceVariant: Color(4292134068),
      outline: Color(4288450176),
      outlineVariant: Color(4283450681),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293779668),
      inversePrimary: Color(4286666002),
      primaryFixed: Color(4294958518),
      onPrimaryFixed: Color(4280948736),
      primaryFixedDim: Color(4294425712),
      onPrimaryFixedVariant: Color(4284759808),
      secondaryFixed: Color(4294762172),
      onSecondaryFixed: Color(4280817925),
      secondaryFixedDim: Color(4292788898),
      onSecondaryFixedVariant: Color(4283908907),
      tertiaryFixed: Color(4292274617),
      onTertiaryFixed: Color(4279377667),
      tertiaryFixedDim: Color(4290432415),
      onTertiaryFixedVariant: Color(4282141736),
      surfaceDim: Color(4279767564),
      surfaceBright: Color(4282398768),
      surfaceContainerLowest: Color(4279438599),
      surfaceContainerLow: Color(4280359443),
      surfaceContainer: Color(4280622615),
      surfaceContainerHigh: Color(4281346337),
      surfaceContainerHighest: Color(4282069803),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294688884),
      surfaceTint: Color(4294425712),
      onPrimary: Color(4280488704),
      primaryContainer: Color(4290479937),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293117606),
      onSecondary: Color(4280423170),
      secondaryContainer: Color(4289105007),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4290695587),
      onTertiary: Color(4279048704),
      tertiaryContainer: Color(4286945132),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279767564),
      onSurface: Color(4294966007),
      onSurfaceVariant: Color(4292397241),
      outline: Color(4289699986),
      outlineVariant: Color(4287529331),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293779668),
      inversePrimary: Color(4284891136),
      primaryFixed: Color(4294958518),
      onPrimaryFixed: Color(4280028672),
      primaryFixedDim: Color(4294425712),
      onPrimaryFixedVariant: Color(4283314176),
      secondaryFixed: Color(4294762172),
      onSecondaryFixed: Color(4280028672),
      secondaryFixedDim: Color(4292788898),
      onSecondaryFixedVariant: Color(4282725148),
      tertiaryFixed: Color(4292274617),
      onTertiaryFixed: Color(4278785024),
      tertiaryFixedDim: Color(4290432415),
      onTertiaryFixedVariant: Color(4281088793),
      surfaceDim: Color(4279767564),
      surfaceBright: Color(4282398768),
      surfaceContainerLowest: Color(4279438599),
      surfaceContainerLow: Color(4280359443),
      surfaceContainer: Color(4280622615),
      surfaceContainerHigh: Color(4281346337),
      surfaceContainerHighest: Color(4282069803),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294966007),
      surfaceTint: Color(4294425712),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294688884),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294966007),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4293117606),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294246367),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4290695587),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279767564),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294966007),
      outline: Color(4292397241),
      outlineVariant: Color(4292397241),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293779668),
      inversePrimary: Color(4282262784),
      primaryFixed: Color(4294959811),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294688884),
      onPrimaryFixedVariant: Color(4280488704),
      secondaryFixed: Color(4294959811),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4293117606),
      onSecondaryFixedVariant: Color(4280423170),
      tertiaryFixed: Color(4292538045),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4290695587),
      onTertiaryFixedVariant: Color(4279048704),
      surfaceDim: Color(4279767564),
      surfaceBright: Color(4282398768),
      surfaceContainerLowest: Color(4279438599),
      surfaceContainerLow: Color(4280359443),
      surfaceContainer: Color(4280622615),
      surfaceContainerHigh: Color(4281346337),
      surfaceContainerHighest: Color(4282069803),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
