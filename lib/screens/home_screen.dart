import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await Get.dialog(
          AlertDialog(
            title: const Text("Closing The app"),
            content: const Text("Are you sure to close the app?"),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Get.back(result: true);
                  },
                  child: const Text("close")),
              ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text("Cancel")),
            ],
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "News App",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
