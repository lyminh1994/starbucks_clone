# starbucks_clone

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

To create a brand logo screen as the initial screen in your Flutter app, you can use a `SplashScreen` or a custom `SplashScreen` widget to display your brand logo for a certain duration before transitioning to the main content of your app. Here's an example using the `flutter_native_splash` package to generate a splash screen:

1. Install the `flutter_native_splash` package:
    - Add the `flutter_native_splash` package to your `pubspec.yaml` file and run `flutter pub get` to install it.

2. Configure the `flutter_native_splash` package:
    - Create a file named `flutter_native_splash.yaml` in the root of your Flutter project.
    - Add the configuration for your splash screen, including the image path, background color, and duration.
    - Here's an example configuration:

   ```yaml
    flutter_native_splash:
      image: assets/images/logo.png
      color: "42A5F5"
      fill: true
      android: true
      ios: true
   ```

   Replace `assets/images/logo.png` with the path to your brand logo image file.

3. Generate the splash screen:
    - Run the `flutter_native_splash` command in your terminal to generate the splash screen files:

   ```bash
   dart run flutter_native_splash:create
   dart run flutter_native_splash:remove
   ```

   This will generate the necessary files and configurations for the splash screen in both Android and iOS.
