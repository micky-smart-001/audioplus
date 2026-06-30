ListTile(
  title:
      const Text(
    "Dark Mode",
  ),
  trailing: Switch(
    value:
        themeProvider.mode ==
            ThemeMode.dark,
    onChanged: (value) {
      themeProvider.setTheme(
        value
            ? ThemeMode.dark
            : ThemeMode.light,
      );
    },
  ),
)