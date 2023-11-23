import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_template/src/core/utils/screen_size.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../utils/app_logger.dart';

class ScrollProvider extends ChangeNotifier {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ScrollOffsetController scrollOffsetController =
      ScrollOffsetController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();
  bool _isOnTop = true;
  bool get isOnTop => _isOnTop;
  toggleOnTop(bool state) {
    _isOnTop = state;
    notifyListeners();
  }

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  toggleCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  checkOnTop(ItemPosition itemPosition) {
    if (itemPosition.itemLeadingEdge < -.6) {
      toggleCurrentIndex(itemPosition.index + 1);
    } else {
      toggleCurrentIndex(itemPosition.index);
    }

    if (itemPosition.index != 0 ||
        (itemPosition.index == 0 && itemPosition.itemLeadingEdge < -.6)) {
      toggleOnTop(false);
    } else {
      toggleOnTop(true);
    }
  }

  init() {
    itemPositionsListener.itemPositions.addListener(() {
      logger(itemPositionsListener.itemPositions.value.toSet().toString());
      checkOnTop(itemPositionsListener.itemPositions.value.toList().first);
    });
  }

  final scrollDuration = const Duration(seconds: 1);

  void jumpTo(int index) => itemScrollController.scrollTo(
      index: index,
      duration: scrollDuration,
      curve: Curves.easeInOutCubic,
      alignment: navHeight/ screenHeight);
}
