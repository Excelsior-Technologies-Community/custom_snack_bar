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

              // ================= BOTTOM TOAST =================
              ElevatedButton(
                onPressed: () {
                  notifier.showCustomToast(
                    context,
                    message: "Bottom Toast",
                    icon: Icons.check_circle,
                    backgroundColor: Colors.green,
                    borderRadius: 20,
                    position: ToastPosition.bottom,
                  );
                },
                child: const Text("Bottom Toast"),
              ),

              const SizedBox(height: 20),

              // ================= CENTER TOAST =================
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

              // ================= TOP TOAST =================
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
