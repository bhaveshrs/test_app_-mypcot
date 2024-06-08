// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fluttertest/config/appcolors.dart';
import 'package:fluttertest/widgets/apptextStyle.dart';
import 'package:intl/intl.dart';

class CustomCalendar extends StatefulWidget implements PreferredSizeWidget {
  final DateTime? lastDayOfMonth;
  const CustomCalendar({
    super.key,
    this.lastDayOfMonth,
  });

  @override
  Size get preferredSize => const Size.fromHeight(148.0);

  @override
  State<CustomCalendar> createState() => Custom_CalendarState();
}

class Custom_CalendarState extends State<CustomCalendar> {
  late int selectedIndex;
  DateTime now = DateTime.now();

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    selectedIndex =
        now.day - 1; // Set selectedIndex to today's date (0-based index)

    // Scroll to the selected index after the first frame is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToSelectedIndex();
    });
  }

  void _scrollToSelectedIndex() {
    const double itemWidth = 42.0 + 32.0; // width + padding
    final double screenCenter = MediaQuery.of(context).size.width / 1.2;
    final double scrollOffset =
        itemWidth * selectedIndex - screenCenter + (itemWidth / 2);

    _scrollController.animateTo(
      scrollOffset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const ClampingScrollPhysics(),
      controller: _scrollController,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: Row(
          children: List.generate(
            widget.lastDayOfMonth?.day ?? DateTime(now.year, now.month, 0).day,
            (index) {
              final currentDate = DateTime(now.year, now.month, index + 1);
              final dayName = DateFormat('E').format(currentDate);
              return Padding(
                padding:
                    EdgeInsets.only(left: index == 0 ? 16.0 : 0.0, right: 16.0),
                child: GestureDetector(
                  onTap: () => setState(
                    () {
                      selectedIndex = index;
                      _scrollToSelectedIndex(); // Scroll to the newly selected index
                    },
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FittedBox(
                        child: Text(dayName.substring(0, 3).toUpperCase(),
                            style: AppTextStyle.regularText(
                                color: selectedIndex == index
                                    ? AppColors.darkGreen
                                    : AppColors.fontColor.withOpacity(0.2),
                                fontSize: 17)
                            //  TextStyle(
                            //   fontSize: 20.0,
                            //   color: selectedIndex == index ? AppColors.darkGreen : Colors.black54,
                            //   fontWeight: FontWeight.bold,
                            // ),
                            ),
                      ),
                      const SizedBox(height: 3.0),
                      Text(
                        "${index + 1}",
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 2.0),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedIndex == index
                              ? AppColors.darkGreen
                              : Colors.transparent,
                        ),
                        height: 5.0,
                        width: 5.0,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
