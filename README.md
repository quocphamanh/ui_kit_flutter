# izi_flutter_ui_kit

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

There are two ways of running the code generator.
##One-time code generation:

in the project root, you generate JSON serialization code for your models whenever they are needed.
This triggers a one-time build that goes through the source files, picks the relevant ones, and
generates the necessary serialization code for them.

While this is convenient, it would be nice if you did not have to run the build manually every time
you make changes in your model classes.

- flutter pub run build_runner build


##Generating code continuously :

A watcher makes our source code generation process more convenient. It watches changes in our
project files and automatically builds the necessary files when needed. Start the watcher by running

- flutter pub run build_runner watch