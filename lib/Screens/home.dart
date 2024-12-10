import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_app/utils/Colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final PageController _pageController = PageController();
  int _currentPage = 0;

  int _selectedIndex = 0;

  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Image.asset("assets/Images/home.png"),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Image.asset("assets/Images/msg.png"),
      label: 'NBP',
    ),
    BottomNavigationBarItem(
      icon: Image.asset("assets/Images/cash.png"),
      label: 'Smallcase',
    ),
    BottomNavigationBarItem(
      icon: Image.asset("assets/Images/plans.png"),
      label: 'Plans',
    ),
    BottomNavigationBarItem(
      icon: Image.asset("assets/Images/menu.png"),
      label: 'Menu',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = Get.height;
    double screenWidth = Get.width;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: AppColors.deepBlue,
              height: screenHeight * 0.41,
              width: screenWidth,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "LIVE TRADES",
                              style: TextStyle(color: AppColors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: screenWidth * 0.02,
                                height: screenWidth * 0.02,
                                decoration: const BoxDecoration(
                                    color: AppColors.Orange,
                                    shape: BoxShape.circle),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(7, 20, 0, 0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          clipBehavior: Clip.none,
                          child: Row(
                            children: List.generate(5, (index) {
                              return Padding(
                                padding:
                                    EdgeInsets.only(right: screenWidth * 0.025),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Container(
                                      width: screenWidth * 0.44,
                                      height: screenHeight * 0.24,
                                      decoration: BoxDecoration(
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
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 28, 0, 0),
                                                    child: Container(
                                                      height:
                                                          screenHeight * 0.13,
                                                      width:
                                                          screenWidth * 0.365,
                                                      decoration: BoxDecoration(
                                                          color: AppColors
                                                              .deepBlue,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15)),
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .fromLTRB(10,
                                                                  15, 10, 10),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                height:
                                                                    screenHeight *
                                                                        0.09,
                                                                width:
                                                                    screenWidth *
                                                                        0.3,
                                                                decoration: BoxDecoration(
                                                                    color: AppColors
                                                                        .lightYellow,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10)),
                                                                child: Column(
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
                                                                          "Potential left",
                                                                          style:
                                                                              TextStyle(fontSize: 10),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          "₹47,5700",
                                                                          style: TextStyle(
                                                                              fontSize: 18,
                                                                              fontWeight: FontWeight.bold),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: SizedBox(
                                                      height:
                                                          screenHeight * 0.04,
                                                      width: screenWidth * 0.38,
                                                      child: OutlinedButton(
                                                        style: ButtonStyle(
                                                          backgroundColor:
                                                              MaterialStateProperty
                                                                  .all(AppColors
                                                                      .Orangebutton),
                                                          side:
                                                              MaterialStateProperty
                                                                  .all(
                                                            const BorderSide(
                                                                color: AppColors
                                                                    .Orangebutton,
                                                                width: 1),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: const Text(
                                                          "Upgrade Plan",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: AppColors
                                                                  .white),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          : 

                                          Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: AppColors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                width: 100,
                                                height: 80,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(
                                                          8, 24, 0, 0),
                                                      child: Row(
                                                        children: [
                                                          const Text(
                                                            "08 DEC 2024 | 02.54 PM",
                                                            style: TextStyle(
                                                                fontSize: 8),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Container(
                                                              width:
                                                                  screenWidth *
                                                                      0.07,
                                                              height:
                                                                  screenHeight *
                                                                      0.012,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: AppColors
                                                                    .NewBanner,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                              ),
                                                              child: const Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    "New",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          7,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: AppColors
                                                                          .NewBannerText,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                        height: 0.02),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(8, 8, 0, 0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        right:
                                                                            4.0),
                                                                child: Image.asset(
                                                                    "assets/Images/hdfc.png"),
                                                              ),
                                                              const Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        "HDFC BANK",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                9,
                                                                            fontWeight:
                                                                                FontWeight.bold),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        "Rail Vikas Nigam L",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                9,
                                                                            color:
                                                                                AppColors.grey),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                        height: 0.02),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(8, 8, 0, 0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              const Text(
                                                                "1.89%",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: AppColors
                                                                        .green),
                                                              ),
                                                              SizedBox(
                                                                  width:
                                                                      screenWidth *
                                                                          0.07),
                                                              const Text(
                                                                "1.89%",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: AppColors
                                                                        .green),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              const Text(
                                                                "Gain so far",
                                                                style: TextStyle(
                                                                    color:
                                                                        AppColors
                                                                            .grey,
                                                                    fontSize:
                                                                        9),
                                                              ),
                                                              SizedBox(
                                                                  width:
                                                                      screenWidth *
                                                                          0.05),
                                                              const Text(
                                                                "Potential left",
                                                                style: TextStyle(
                                                                    color:
                                                                        AppColors
                                                                            .grey,
                                                                    fontSize:
                                                                        9),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                        height: screenHeight *
                                                            0.010),
                                                    SizedBox(
                                                      height:
                                                          screenHeight * 0.04,
                                                      width: screenWidth * 0.38,
                                                      child: OutlinedButton(
                                                        style: ButtonStyle(
                                                          backgroundColor:
                                                              MaterialStateProperty
                                                                  .all(AppColors
                                                                      .lightgreyBlue),
                                                        ),
                                                        onPressed: () {},
                                                        child: const Text(
                                                          "Exit Trade",
                                                          style: TextStyle(
                                                              fontSize: 11,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: AppColors
                                                                  .black),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                    ),
                                    Positioned(
                                      top: -20,
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
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SmoothPageIndicator(
                              controller: _pageController,
                              count: 5,
                              effect: ExpandingDotsEffect(
                                dotWidth: 8.0,
                                dotHeight: 8.0,
                                spacing: 8.0,
                                activeDotColor: AppColors.white,
                                dotColor: AppColors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Container(
              color: AppColors.lightgreyBlue,
              height: screenHeight * 0.06,
              width: screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "CLOSED TRADES",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "843.98% Accuracy",
                          style: TextStyle(color: AppColors.green),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: AppColors.white,
                  height: screenHeight * 0.3,
                  width: screenWidth,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(5, (index) {
                          return Padding(
                            padding: EdgeInsets.only(right: screenWidth * 0.04),
                            child: Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.topCenter,
                              children: [
                                Container(
                                  width: screenWidth * 0.415,
                                  height: screenHeight * 0.23,
                                  decoration: BoxDecoration(
                                      color: AppColors.lightgreyBlue,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: AppColors.black,
                                        width: 1,
                                      )),
                                  child: index == 1
                                      ? SizedBox.shrink(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: AppColors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              width: 100,
                                              height: 80,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(8, 24, 0, 0),
                                                    child: Row(
                                                      children: [
                                                        const Text(
                                                          "08 DEC 2024 | 02.54 PM",
                                                          style: TextStyle(
                                                              fontSize: 8),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 0.02),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(8, 8, 0, 0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      right:
                                                                          4.0),
                                                              child: Image.asset(
                                                                  "assets/Images/hdfc.png"),
                                                            ),
                                                            const Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      "HDFC BANK",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              9,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      "Rail Vikas Nigam L",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              9,
                                                                          color:
                                                                              AppColors.grey),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 0.02),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(8, 8, 0, 0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Container(
                                                                decoration: BoxDecoration(
                                                                    color: AppColors
                                                                        .lightGreen,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            15)),
                                                                height:
                                                                    screenHeight *
                                                                        0.03,
                                                                width:
                                                                    screenWidth *
                                                                        0.28,
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      "Net gain: 0.07%",
                                                                      style: TextStyle(
                                                                          color: AppColors
                                                                              .green,
                                                                          fontSize:
                                                                              10),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                      height:
                                                          screenHeight * 0.010),
                                                  SizedBox(
                                                    height: screenHeight * 0.04,
                                                    width: screenWidth * 0.38,
                                                    child: OutlinedButton(
                                                      style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all(AppColors
                                                                    .lightgreyBlue),
                                                      ),
                                                      onPressed: () {},
                                                      child: const Text(
                                                        "Exit Trade",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: AppColors
                                                                .black),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: AppColors.white,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            width: 100,
                                            height: 80,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          8, 24, 0, 0),
                                                  child: Row(
                                                    children: [
                                                      const Text(
                                                        "08 DEC 2024 | 02.54 PM",
                                                        style: TextStyle(
                                                            fontSize: 8),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 0.02),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          8, 8, 0, 0),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right: 4.0),
                                                            child: Image.asset(
                                                                "assets/Images/hdfc.png"),
                                                          ),
                                                          const Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    "HDFC BANK",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            9,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    "Rail Vikas Nigam L",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            9,
                                                                        color: AppColors
                                                                            .grey),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 0.02),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          8, 8, 0, 0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .lightGreen,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              15)),
                                                              height:
                                                                  screenHeight *
                                                                      0.03,
                                                              width:
                                                                  screenWidth *
                                                                      0.28,
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    "Net gain: 0.07%",
                                                                    style: TextStyle(
                                                                        color: AppColors
                                                                            .green,
                                                                        fontSize:
                                                                            10),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                    height:
                                                        screenHeight * 0.010),
                                                SizedBox(
                                                  height: screenHeight * 0.04,
                                                  width: screenWidth * 0.38,
                                                  child: OutlinedButton(
                                                    style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all(AppColors
                                                                  .lightgreyBlue),
                                                    ),
                                                    onPressed: () {},
                                                    child: const Text(
                                                      "Place Buy Order",
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              AppColors.black),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                ),
                                Positioned(
                                  top: -20,
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
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 5,
                  effect: ExpandingDotsEffect(
                    dotWidth: 8.0,
                    dotHeight: 8.0,
                    spacing: 8.0,
                    activeDotColor: AppColors.black,
                    dotColor: AppColors.grey,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: AppColors.white,
                  height: screenHeight * 0.2,
                  width: screenWidth,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(5, (index) {
                          return Padding(
                            padding: EdgeInsets.only(right: screenWidth * 0.04),
                            child: Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.topCenter,
                              children: [
                                Container(
                                  width: screenWidth * 0.32,
                                  height: screenHeight * 0.12,
                                  decoration: BoxDecoration(
                                      color: AppColors.lightgreyBlue,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: AppColors.black,
                                        width: 1,
                                      )),
                                  child: index == 1
                                      ? SizedBox.shrink(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: AppColors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              width: screenWidth * 0.2,
                                              height: screenHeight * 0.9,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(8, 5, 0, 5),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Image.asset(
                                                            "assets/Images/2.png"),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(8, 0, 0, 0),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "FUTURE",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .fromLTRB(
                                                                      8,
                                                                      0,
                                                                      0,
                                                                      0),
                                                              child: Icon(
                                                                Icons
                                                                    .arrow_forward_ios_outlined,
                                                                size: 16,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "Trades",
                                                              style: TextStyle(
                                                                  fontSize: 10),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : index == 2
                                          ? SizedBox.shrink(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: AppColors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  width: screenWidth * 0.2,
                                                  height: screenHeight * 0.9,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .fromLTRB(
                                                                8, 5, 0, 5),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Image.asset(
                                                                "assets/Images/3.png"),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .fromLTRB(
                                                                8, 0, 0, 0),
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "OPTIC",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .fromLTRB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .arrow_forward_ios_outlined,
                                                                    size: 16,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "Trades",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: AppColors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                width: screenWidth * 0.2,
                                                height: screenHeight * 0.9,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(8, 5, 0, 5),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Image.asset(
                                                              "assets/Images/1.png"),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(8, 0, 0, 0),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "STOCKS",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .fromLTRB(
                                                                        8,
                                                                        0,
                                                                        0,
                                                                        0),
                                                                child: Icon(
                                                                  Icons
                                                                      .arrow_forward_ios_outlined,
                                                                  size: 16,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Trades",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        10),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppColors.deepBlue,
        unselectedItemColor: AppColors.grey,
        selectedLabelStyle: TextStyle(color: AppColors.deepBlue),
        unselectedLabelStyle: TextStyle(color: AppColors.grey),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
