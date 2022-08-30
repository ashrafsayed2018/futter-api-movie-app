import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _buildUi();
  }

  Widget _buildUi() {
    return const Scaffold(
      body: Center(
        child: Text("hello"),
      ),
    );
  }
}
