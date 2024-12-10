import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:task_app/Components/ProgressIndicator.dart';
import 'package:task_app/utils/Colors.dart';

class StocksScreen extends StatefulWidget {
  const StocksScreen({super.key});

  @override
  State<StocksScreen> createState() => _StocksScreenState();
}

class _StocksScreenState extends State<StocksScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = Get.height;
    double screenWidth = Get.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: screenWidth * 0.3),
                    Center(child: Image.asset("assets/Images/stocks.png")),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Image.asset(
                    "assets/Images/line.png",
                    color: AppColors.Orange,
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    children: List.generate(2, (index) {
                      return Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.025),
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              width: screenWidth * 0.44,
                              height: screenHeight * 0.25,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.black),
                                color: AppColors.lightgreyBlue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: index == 1
                                  ? SizedBox.shrink(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 14, 0, 0),
                                            child: Container(
                                              height: screenHeight * 0.09,
                                              width: screenWidth * 0.38,
                                              decoration: BoxDecoration(
                                                  color: AppColors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(15)),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets
                                                            .fromLTRB(
                                                            15, 10, 5, 5),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color: AppColors
                                                                  .lightYellow,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15)),
                                                          height:
                                                              screenHeight * 0.04,
                                                          width:
                                                              screenWidth * 0.28,
                                                          child: const Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    "5.20%",
                                                                    style: TextStyle(
                                                                        color: AppColors
                                                                            .black,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold),
                                                                  )
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const Text(
                                                    "Avg. return/trade",
                                                    style: TextStyle(
                                                        color: AppColors.grey,
                                                        fontSize: 10),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: PercentageSemiCircle(
                                                percentage: 90.09),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 15, 0, 0),
                                            child: SizedBox(
                                              height: screenHeight * 0.04,
                                              width: screenWidth * 0.38,
                                              child: OutlinedButton(
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    AppColors.purple,
                                                  ),
                                                  side: MaterialStateProperty.all(
                                                    const BorderSide(
                                                        color: AppColors.purple,
                                                        width: 1),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: const Text(
                                                  "Subscribe",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,
                                                      color: AppColors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 14, 0, 0),
                                          child: Container(
                                            height: screenHeight * 0.09,
                                            width: screenWidth * 0.38,
                                            decoration: BoxDecoration(
                                                color: AppColors.white,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(15, 10, 5, 5),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            color: AppColors
                                                                .lightYellow,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15)),
                                                        height:
                                                            screenHeight * 0.04,
                                                        width: screenWidth * 0.28,
                                                        child: const Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  "5.20%",
                                                                  style: TextStyle(
                                                                      color: AppColors
                                                                          .black,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Text(
                                                  "Avg. return/trade",
                                                  style: TextStyle(
                                                      color: AppColors.grey,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: PercentageSemiCircle(
                                              percentage: 90.09),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 15, 0, 0),
                                          child: SizedBox(
                                            height: screenHeight * 0.04,
                                            width: screenWidth * 0.38,
                                            child: OutlinedButton(
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        AppColors.Orangebutton),
                                                side: MaterialStateProperty.all(
                                                  const BorderSide(
                                                      color:
                                                          AppColors.Orangebutton,
                                                      width: 1),
                                                ),
                                              ),
                                              onPressed: () {},
                                              child: const Text(
                                                "Upgrade Plan",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                            ),
                            Positioned(
                              top: -25,
                              child: Chip(
                                label: const Text(
                                  'Short Term',
                                  style: TextStyle(
                                    color: AppColors.deepBlue,
                                    fontSize: 10,
                                  ),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 1,
                                ),
                                backgroundColor: AppColors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    color: AppColors.deepBlue,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
             
                SizedBox(height: screenHeight * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: screenWidth * 0.3),
                    Center(child: Image.asset("assets/Images/fo.png")),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Image.asset(
                    "assets/Images/line.png",
                    color: AppColors.Orange,
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    children: List.generate(2, (index) {
                      return Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.025),
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              width: screenWidth * 0.44,
                              height: screenHeight * 0.25,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.black),
                                color: AppColors.lightgreyBlue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: index == 1
                                  ? SizedBox.shrink(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 14, 0, 0),
                                            child: Container(
                                              height: screenHeight * 0.09,
                                              width: screenWidth * 0.38,
                                              decoration: BoxDecoration(
                                                  color: AppColors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(15)),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets
                                                            .fromLTRB(
                                                            15, 10, 5, 5),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color: AppColors
                                                                  .lightYellow,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15)),
                                                          height:
                                                              screenHeight * 0.04,
                                                          width:
                                                              screenWidth * 0.28,
                                                          child: const Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    "5.20%",
                                                                    style: TextStyle(
                                                                        color: AppColors
                                                                            .black,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold),
                                                                  )
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const Text(
                                                    "Avg. return/trade",
                                                    style: TextStyle(
                                                        color: AppColors.grey,
                                                        fontSize: 10),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: PercentageSemiCircle(
                                                percentage: 90.09),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 15, 0, 0),
                                            child: SizedBox(
                                              height: screenHeight * 0.04,
                                              width: screenWidth * 0.38,
                                              child: OutlinedButton(
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    AppColors.purple,
                                                  ),
                                                  side: MaterialStateProperty.all(
                                                    const BorderSide(
                                                        color: AppColors.purple,
                                                        width: 1),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: const Text(
                                                  "Subscribe",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,
                                                      color: AppColors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 14, 0, 0),
                                          child: Container(
                                            height: screenHeight * 0.09,
                                            width: screenWidth * 0.38,
                                            decoration: BoxDecoration(
                                                color: AppColors.white,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(15, 10, 5, 5),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            color: AppColors
                                                                .lightYellow,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15)),
                                                        height:
                                                            screenHeight * 0.04,
                                                        width: screenWidth * 0.28,
                                                        child: const Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  "5.20%",
                                                                  style: TextStyle(
                                                                      color: AppColors
                                                                          .black,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Text(
                                                  "Avg. return/trade",
                                                  style: TextStyle(
                                                      color: AppColors.grey,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: PercentageSemiCircle(
                                              percentage: 90.09),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 15, 0, 0),
                                          child: SizedBox(
                                            height: screenHeight * 0.04,
                                            width: screenWidth * 0.38,
                                            child: OutlinedButton(
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        AppColors.Orangebutton),
                                                side: MaterialStateProperty.all(
                                                  const BorderSide(
                                                      color:
                                                          AppColors.Orangebutton,
                                                      width: 1),
                                                ),
                                              ),
                                              onPressed: () {},
                                              child: const Text(
                                                "Upgrade Plan",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                            ),
                            Positioned(
                              top: -25,
                              child: Chip(
                                label: const Text(
                                  'Short Term',
                                  style: TextStyle(
                                    color: AppColors.deepBlue,
                                    fontSize: 10,
                                  ),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 1,
                                ),
                                backgroundColor: AppColors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    color: AppColors.deepBlue,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
            
                SizedBox(height: screenHeight * 0.04),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    children: List.generate(2, (index) {
                      return Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.025),
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              width: screenWidth * 0.44,
                              height: screenHeight * 0.25,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.black),
                                color: AppColors.lightgreyBlue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: index == 1
                                  ? SizedBox.shrink(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 14, 0, 0),
                                            child: Container(
                                              height: screenHeight * 0.09,
                                              width: screenWidth * 0.38,
                                              decoration: BoxDecoration(
                                                  color: AppColors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(15)),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets
                                                            .fromLTRB(
                                                            15, 10, 5, 5),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color: AppColors
                                                                  .lightYellow,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15)),
                                                          height:
                                                              screenHeight * 0.04,
                                                          width:
                                                              screenWidth * 0.28,
                                                          child: const Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    "5.20%",
                                                                    style: TextStyle(
                                                                        color: AppColors
                                                                            .black,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold),
                                                                  )
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const Text(
                                                    "Avg. return/trade",
                                                    style: TextStyle(
                                                        color: AppColors.grey,
                                                        fontSize: 10),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: PercentageSemiCircle(
                                                percentage: 90.09),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 15, 0, 0),
                                            child: SizedBox(
                                              height: screenHeight * 0.04,
                                              width: screenWidth * 0.38,
                                              child: OutlinedButton(
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    AppColors.purple,
                                                  ),
                                                  side: MaterialStateProperty.all(
                                                    const BorderSide(
                                                        color: AppColors.purple,
                                                        width: 1),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: const Text(
                                                  "Subscribe",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,
                                                      color: AppColors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 14, 0, 0),
                                          child: Container(
                                            height: screenHeight * 0.09,
                                            width: screenWidth * 0.38,
                                            decoration: BoxDecoration(
                                                color: AppColors.white,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(15, 10, 5, 5),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            color: AppColors
                                                                .lightYellow,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15)),
                                                        height:
                                                            screenHeight * 0.04,
                                                        width: screenWidth * 0.28,
                                                        child: const Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  "5.20%",
                                                                  style: TextStyle(
                                                                      color: AppColors
                                                                          .black,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Text(
                                                  "Avg. return/trade",
                                                  style: TextStyle(
                                                      color: AppColors.grey,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: PercentageSemiCircle(
                                              percentage: 90.09),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 15, 0, 0),
                                          child: SizedBox(
                                            height: screenHeight * 0.04,
                                            width: screenWidth * 0.38,
                                            child: OutlinedButton(
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        AppColors.Orangebutton),
                                                side: MaterialStateProperty.all(
                                                  const BorderSide(
                                                      color:
                                                          AppColors.Orangebutton,
                                                      width: 1),
                                                ),
                                              ),
                                              onPressed: () {},
                                              child: const Text(
                                                "Upgrade Plan",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                            ),
                            Positioned(
                              top: -25,
                              child: Chip(
                                label: const Text(
                                  'Short Term',
                                  style: TextStyle(
                                    color: AppColors.deepBlue,
                                    fontSize: 10,
                                  ),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 1,
                                ),
                                backgroundColor: AppColors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    color: AppColors.deepBlue,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  
}
