import 'package:flutter/material.dart';

import '../models/milkmenu.dart';
import '../models/milklist.dart';
import '../widgets/itemcard.dart';

class Pager extends StatefulWidget {
  Pager({Key key}) : super(key: key);

  @override
  _PagerState createState() => _PagerState();
}

const double _viewPort = 0.75;

class _PagerState extends State<Pager> with TickerProviderStateMixin {
  final PageController _backgroundPageController = PageController();
  final PageController _pageController = PageController(viewportFraction: _viewPort);
  ValueNotifier<double> selectedIndex = ValueNotifier<double>(0.0);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _backgroundPageController.dispose();
    super.dispose();
  }

  _contentWidget(Milkmenu milkmenu, int index) {
    return Stack(
      children: <Widget>[
        Center(
          child: Container(
            child: Stack(
              children: <Widget>[
                Itemcard(
                  milkmenu: milkmenu,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildPages() {
    final List<Widget> pages = <Widget>[];
    for (int index = 0; index < 4; index++) {
      pages.add(_contentWidget(
        Milklist.milklist[index],
        index,
      ));
    }
    return pages;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Positioned.fill(
        child: Container(
          decoration: BoxDecoration(
              gradient:
                  Milklist.milklist[selectedIndex.value.toInt()].background),
        ),
      ),
      Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Text(
              "เมนูนม",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontFamily: "Kanit",
                fontWeight: FontWeight.w600,
              ),
            )),
      ),
      PageView.builder(
        itemCount: Milklist.milklist.length,
        itemBuilder: (BuildContext context, int itemCount) {
          return Container();
        },
        controller: _backgroundPageController,
      ),
      NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          if (notification.depth == 0 && notification is ScrollUpdateNotification) {
            selectedIndex.value = _pageController.page + 0.000001;
            if (_backgroundPageController.page != _pageController.page) {
              _backgroundPageController.position
                  .jumpTo(_pageController.position.pixels / _viewPort);
            }
            setState(() {});
          }
          return false;
        },
        child: PageView(
          controller: _pageController,
          children: _buildPages(),
        ),
      ),
    ]);
  }
}
