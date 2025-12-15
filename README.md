# Custom Notifier (Flutter)

A lightweight and dependency-free **Flutter utility** to show **custom Toasts**
and **custom SnackBars** with full control over position, shape, colors, icons,
and duration.

Built using Flutter’s `Overlay` and `SnackBar` APIs — fast, flexible, and easy to use.

---

## ✨ Features

🍞 Custom Toast messages (Top / Center / Bottom)  
📢 Custom SnackBars with floating style  
🎨 Fully customizable colors, shape, padding & elevation  
🔔 Optional icons  
⏱ Configurable display duration  
⚡ Lightweight & fast (pure Flutter)  
❌ No third-party dependencies  

---

## ✨ Preview



https://github.com/user-attachments/assets/c4e466c6-3360-477b-9553-48f04c5917c8


---

## ✨ Installation
Add this to your package's pubspec.yaml file:
```
dependencies:
  custom_notifier:
    path: ../custom_notifier
```
▶️ From GitHub
```
dependencies:
  custom_notifier:
    git:
      url: https://github.com/yourusername/custom_notifier.git
```
Then Run:
```
flutter pub get
```
## 📁 Folder Structure
```
custom_notifier/
│
├── lib/
│   └── custom_notifier.dart
│
├── example/
│   └── lib/
│       └── main.dart      # Demo app using CustomNotifier
│
├── screenshots/
│   └── custom_snackbar.png
│
├── pubspec.yaml
├── README.md
└── LICENSE
  ```
## 🚀 Usage 
```

Below is a simple demo screen showing how to use **CustomNotifier** to display
**custom Toasts** and **custom SnackBars** in different positions.

---

import 'package:flutter/material.dart';
import 'package:snackbar_custom/custom_snackbar/custom_snackbar.dart';

class Demo extends StatelessWidget {
  Demo({super.key});

  final CustomNotifier notifier = CustomNotifier();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Toast & SnackBar Demo")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),

              // Bottom Toast
              ElevatedButton(
                onPressed: () {
                  notifier.showCustomToast(
                    context,
                    message: "Bottom Toast",
                    icon: Icons.check_circle,
                    backgroundColor: Colors.green,
                    position: ToastPosition.bottom,
                  );
                },
                child: const Text("Bottom Toast"),
              ),

              const SizedBox(height: 20),

              // Center Toast
              ElevatedButton(
                onPressed: () {
                  notifier.showCustomToast(
                    context,
                    message: "Center Toast",
                    icon: Icons.info_outline,
                    backgroundColor: Colors.blue,
                    position: ToastPosition.center,
                  );
                },
                child: const Text("Center Toast"),
              ),

              const SizedBox(height: 20),

              // Top Toast
              ElevatedButton(
                onPressed: () {
                  notifier.showCustomToast(
                    context,
                    message: "Top Toast",
                    icon: Icons.arrow_upward,
                    backgroundColor: Colors.deepPurple,
                    position: ToastPosition.top,
                  );
                },
                child: const Text("Top Toast"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```
## 📜 License
MIT License
```
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

