import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertest/config/app_images.dart';
import 'package:fluttertest/config/appcolors.dart';
import 'package:fluttertest/screens/customer.dart';
import 'package:fluttertest/screens/home.dart';
import 'package:fluttertest/screens/kahat.dart';
import 'package:fluttertest/screens/orders.dart';
import 'package:fluttertest/widgets/appbar_btn.dart';
import 'package:fluttertest/widgets/apptextStyle.dart';
import 'package:fluttertest/widgets/nav_btn.dart';
import 'package:fluttertest/widgets/rabdom_drawer.dart';

class HomePage extends StatefulWidget {
  final ValueChanged<Locale> onLocaleChanged;

  const HomePage({super.key, required this.onLocaleChanged});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedTab = 0;

  List screens = [
    const Home(),
    const CustomersScreen(),
    const KhataScreen(),
    const OrdersScreen()
  ];

  void onTapOfBtn(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return CircularButton(
              icon: AppImages.drawerIcons,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              padding: const EdgeInsets.all(10),
            );
          },
        ),
        actions: const <Widget>[
          // Like/Dislike Button
          CircularButton(
              icon: AppImages.like), // Notification Button with Badge
          // Stack(
          //   children: <Widget>[
          //     Container(
          //       margin: const EdgeInsets.all(10),
          //       decoration: const BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: Colors.white,
          //       ),
          //       child: IconButton(
          //         icon: const Icon(
          //           Icons.notifications,
          //           color: Colors.red,
          //           size: 20,
          //         ),
          //         onPressed: () {
          //           // Handle notification action
          //         },
          //       ),
          //     ),
          //     Positioned(
          //       right: 10,
          //       top: 10,
          //       child: Container(
          //         padding: const EdgeInsets.all(2),
          //         decoration: const BoxDecoration(
          //           color: Colors.red,
          //           shape: BoxShape.circle,
          //         ),
          //         constraints: const BoxConstraints(
          //           minWidth: 16,
          //           minHeight: 16,
          //         ),
          //         child: const Text(
          //           '5', // Replace with your dynamic notification count
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 10,
          //           ),
          //           textAlign: TextAlign.center,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // // Profile Photo Button
          CircularButton(
            icon: AppImages.notification1,
            notificationCount: 2,
          ),
          CircularButton(
            icon: AppImages.profileCircle,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SafeArea(
              child: ListTile(
                leading: const CircularButton(
                  icon: AppImages.home,
                ),
                title: Text(
                  'Home',
                  style: AppTextStyle.regularText(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.fontColor),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            ListTile(
              leading: const CircularButton(
                icon: AppImages.profileCircle,
              ),
              title:  Text('Settings', style: AppTextStyle.regularText(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.fontColor),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
           
            RandomDrawerContent(),
          ],
        ),
      ),
      body: screens[selectedTab],
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.fontColor,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 60,
        // color: Colors.cyan.shade400,
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CustomNavBarButton(
              isSelected: selectedTab == 0,
              text: "Home",
              icon: AppImages.home,
              onPressed: () {
                onTapOfBtn(0);
              },
            ),
            CustomNavBarButton(
              isSelected: selectedTab == 1,
              text: "Customers",
              icon: AppImages.customer,
              onPressed: () {
                onTapOfBtn(1);
              },
            ),
            CustomNavBarButton(
              isSelected: selectedTab == 2,
              text: "Khatal",
              icon: AppImages.khata,
              onPressed: () {
                onTapOfBtn(2);
              },
            ),
            CustomNavBarButton(
              isSelected: selectedTab == 3,
              text: "Orders",
              icon: AppImages.order_nav,
              onPressed: () {
                onTapOfBtn(3);
              },
            ),
            // CustomNavBarButton(icon: ,)
            // const Column(mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Icon(
            //       Icons.menu,
            //       color: Colors.black,
            //     ),
            //     Text("home")
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
