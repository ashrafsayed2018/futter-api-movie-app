import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final VoidCallback onIntializeCompleted;
  const SplashScreen({
    Key? key,
    required this.onIntializeCompleted,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2))
        .then((value) => widget.onIntializeCompleted());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "fliked",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              image: NetworkImage(
                  "https://play-lh.googleusercontent.com/5Y97X0kfd9uznAJXFOmLXEjqNTjJNZ07nKOmPvPbFUoUKkBswIYGIzMOzcYnF9bMdw"),
            ),
          ),
        ),
      ),
    );
  }
}
