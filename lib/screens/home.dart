import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertest/config/app_images.dart';
import 'package:fluttertest/config/appcolors.dart';
import 'package:fluttertest/widgets/appbar_btn.dart';
import 'package:fluttertest/widgets/apptextStyle.dart';
import 'package:fluttertest/widgets/clender.dart';
import 'package:fluttertest/widgets/custom_btn.dart';
import 'package:fluttertest/widgets/first_carousel.dart';
import 'package:fluttertest/widgets/second_carousel.dart';
import 'package:fluttertest/widgets/third_carousel.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome, Mypcot !!",
                          style: AppTextStyle.regularText(
                            color: AppColors.fontColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          )
                          // TextStyle(
                          //   fontSize: 20,
                          //   fontWeight: FontWeight.w600,
                          //   fontFamily: 'Roboto',
                          //   color:
                          // ),
                          ),
                      Text("here is your dashboard..",
                          style: AppTextStyle.regularText(
                            color: AppColors.fontColor.withOpacity(0.5),
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          )),
                    ],
                  ),
                  const Spacer(),
                  const CircularButton(
                    padding: EdgeInsets.all(14),
                    icon: AppImages.search,
                    svgSize: 35,
                  ),
                ],
              ),

              SizedBox(
                height: 270,
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            right: 10, left: 10, top: 20, bottom: 20),
                        decoration: const BoxDecoration(
                            color: AppColors.skyBlue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 250,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(AppImages.orders),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 25),
                                    decoration: const BoxDecoration(
                                        color: AppColors.darkOrange,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    child: Text(
                                      "Orders",
                                      style: AppTextStyle.regularText(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                      top: -10,
                                      right: 20,
                                      child: ThreeChildBox()),
                                  Positioned(
                                      top: 125,
                                      right: 20,
                                      child: TwoChildBox()),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            right: 10, left: 10, top: 20, bottom: 20),
                        decoration: const BoxDecoration(
                            color: AppColors.yellow,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 260,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      child: SvgPicture.asset(
                                    AppImages.subscriptions,
                                    // clipBehavior: Clip.none,
                                  )),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    decoration: const BoxDecoration(
                                        color: AppColors.blue,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    child: Text(
                                      "Subscriptions",
                                      style: AppTextStyle.regularText(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                      top: 80,
                                      left: 40,
                                      child: CommonBoxCarousel(
                                        text1: "10 ",
                                        text2: "Active",
                                        text3: "Subscriptions",
                                      )),
                                  Positioned(
                                      top: -10,
                                      left: 0,
                                      child: ThreeChildBoxSecCarousel()),
                                  Positioned(
                                      top: 155,
                                      left: 60,
                                      child: CommonBoxCarousel(
                                        height: 65,
                                        text1: "119 ",
                                        text2: "Pending",
                                        text3: "Deliveries",
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            right: 10, left: 10, top: 20, bottom: 20),
                        decoration: const BoxDecoration(
                            color: AppColors.green,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 260,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    AppImages.customersIllustration,
                                    // clipBehavior: Clip.none,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    decoration: const BoxDecoration(
                                        color: AppColors.pink,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    child: Text(
                                      "View Customers",
                                      style: AppTextStyle.regularText(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                      top: 80,
                                      left: 60,
                                      child: SecBoxThirdCarousel()),
                                  Positioned(
                                      top: -10,
                                      left: 20,
                                      child: ThreeChildBoxThirdCarousel()),
                                  Positioned(
                                      top: 155,
                                      left: 20,
                                      child: ThirdBoxCarousel(
                                        text1: "10 ",
                                        text2: "Active",
                                        text3: "Customers",
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DateFormat('MMMM, dd yyyy').format(DateTime.now()),
                        style: AppTextStyle.regularText(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: AppColors.fontColor.withOpacity(0.5)),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Today",
                        style: AppTextStyle.regularText(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColors.fontColor),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CustomButton(
                    text: "TIMELINE",
                    onPressed: () {},
                    suffixIcon: Icons.arrow_drop_down,
                  ),
                  CustomButton(
                    text: DateFormat('MMM, yyyy')
                        .format(DateTime.now())
                        .toUpperCase(),
                    onPressed: () {},
                    prefixIcon: AppImages.calender,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomCalendar(),
              const SizedBox(
                height: 40,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                // padding:
                //     const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                // decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                //   color: Colors.white,
                //   boxShadow: [
                //     BoxShadow(
                //       color: Colors.black26,
                //       offset: Offset(0, 1),
                //       blurRadius: 10
                //     ),
                //   ],
                // ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "New order created",
                            style: AppTextStyle.regularText(
                                fontSize: 18,
                                color: AppColors.fontColor.withOpacity(0.5),
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "New Order created with Order",
                            style: AppTextStyle.regularText(),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "09:00 AM",
                            style: AppTextStyle.regularText(
                                color: AppColors.orange,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Icon(
                            Icons.arrow_forward_rounded,
                            color: AppColors.orange,
                            size: 20,
                          )
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.orange,
                        ),
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(AppImages.newOrder),
                      )
                    ],
                  ),
                ),
              )

              //        HorizontalCalendar(
              //   date: DateTime.now(),
              //   backgroundColor: Colors.white,
              //   selectedColor: Colors.blue,
              //   showMonth:true,
              //   onDateSelected: (date) {
              //     print(date.toString());
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
