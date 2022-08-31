import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//

class MainPage extends ConsumerWidget {
  double? _deviceHeight;
  double? _deviceWidth;
  TextEditingController? _searchTextFieldController;
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    _searchTextFieldController = TextEditingController();
    return _buildUi();
  }

  Widget _buildUi() {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: _deviceWidth,
        height: _deviceHeight,
        child: Stack(
          alignment: Alignment.center,
          children: [
            _backgroundWidget(),
            _forgroundWidgets(),
          ],
        ),
      ),
    );
  }

  Widget _backgroundWidget() {
    return Container(
      width: _deviceWidth,
      height: _deviceHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/movie-poster-template-design-21a1c803fe4ff4b858de24f5c91ec57f_screen.jpg?ts=1636996180"),
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.2),
          ),
        ),
      ),
    );
  }

  Widget _forgroundWidgets() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, _deviceHeight! * 0.02, 0, 0),
      width: _deviceHeight! * .88,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _topBarWidget(),
        ],
      ),
    );
  }

  Widget _topBarWidget() {
    return Container(
      height: _deviceWidth! * .08,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //  search field widget
          _searchFieldWidget()
        ],
      ),
    );
  }

  Widget _searchFieldWidget() {
    const border = InputBorder.none;
    return SizedBox(
      width: _deviceWidth! * 0.05,
      height: _deviceHeight! * 0.05,
      child: TextField(
        controller: _searchTextFieldController,
        onSubmitted: (input) {},
        style: const TextStyle(color: Colors.white),
        decoration: const InputDecoration(
          focusedBorder: border,
          border: border,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white24,
          ),
          hintStyle: TextStyle(
            color: Colors.white54,
          ),
          fillColor: Colors.white24,
          hintText: "search ....",
        ),
      ),
    );
  }
}
