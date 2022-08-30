import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/widgets/on_boarding_content.dart';
import 'package:smart_stor/widgets/page_view_indicator.dart';
// class OnBoardingScreen extends StatefulWidget {
//   const OnBoardingScreen({Key? key}) : super(key: key);
//
//   @override
//   State<OnBoardingScreen> createState() => _OnBoardingScreenState();
// }
//
// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   late PageController _pageController;
//   int _currentPage = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//   }
//
//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Column(
//           children: [
//             Align(
//               alignment: AlignmentDirectional.topEnd,
//               child: Visibility(
//                 visible: _currentPage < 2,
//                 replacement: TextButton(
//                   onPressed: () {
//                     Navigator.pushReplacementNamed(context, '/login_screen');
//                   },
//                   child: const Text('START'),
//                 ),
//                 child: TextButton(
//                   onPressed: () {
//                     _pageController.animateToPage(
//                       2,
//                       duration: const Duration(seconds: 1),
//                       curve: Curves.easeInOutBack,
//                     );
//                   },
//                   style: TextButton.styleFrom(
//                     // alignment: AlignmentDirectional.topEnd
//                   ),
//                   child: const Text('SKIP'),
//                 ),
//               ),
//             ),
//
//             Expanded(
//               child: PageView(
//                 physics: const BouncingScrollPhysics(),
//                 // physics: ClampingScrollPhysics(),
//                 controller: _pageController,
//                 scrollDirection: Axis.horizontal,
//                 onPageChanged: (int currentPage) {
//                   setState(() => _currentPage = currentPage);
//                 },
//                 children: const [
//                   OnBoardingContent(
//                     image: 'image_1o',
//                     title: 'Welcome!',
//                   ),
//                   OnBoardingContent(
//                     image: 'image_2o',
//                     title: 'Add to cart',
//                   ),
//                   OnBoardingContent(
//                     image: 'image_3o',
//                     title: 'Enjoy Purchase!',
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 PageViewIndicator(
//                   isCurrentPage: _currentPage == 0,
//                   marginEnd: 15,
//                 ),
//                 PageViewIndicator(
//                   isCurrentPage: _currentPage == 1,
//                   marginEnd: 15,
//                 ),
//                 PageViewIndicator(
//                   isCurrentPage: _currentPage == 2,
//                 ),
//               ],
//             ),
//             const SizedBox(height: 30),
//             // const SizedBox(height: 25),
//             // Visibility(
//             //   visible: _currentPage == 2,
//             //   maintainState: true,
//             //   maintainSize: true,
//             //   maintainAnimation: true,
//             //   child:
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30),
//                 child: DecoratedBox(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow: const [
//                       BoxShadow(
//                           color: Colors.black38,
//                           offset: Offset(0, 3),
//                           blurRadius: 6)
//                     ],
//                     gradient: const LinearGradient(
//                       colors: [
//                         Color(0xFFA6D1E6),
//                         Color(0xFFFEFBF6),
//                       ],
//                     ),
//                   ),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.pushReplacementNamed(context, '/login_screen');
//                     },
//                     style: ElevatedButton.styleFrom(
//
//                     minimumSize: const Size(double.infinity, 50),
//                         primary: Color(0xff586BCA),
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10)),
//                     // style: ElevatedButton.styleFrom(
//                     //   primary: Colors.transparent,
//                     //   shadowColor: Colors.transparent,
//                     //   minimumSize: const Size(double.infinity, 50),
//                       // shape: RoundedRectangleBorder(
//                       //   borderRadius: BorderRadius.circular(10),
//                       // ),
//                     ),
//                     child: const Text('START'),
//                   ),
//                 ),
//               ),
//             // ),
//             const SizedBox(height: 25),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//





class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Visibility(
                  visible: _currentPage < 2,
                  replacement: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login_screen');
                    },
                    child: const Text('START',style: TextStyle(color: Color(0xffFF7750)),),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _pageController.animateToPage(
                        2,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOutBack,
                      );
                    },

                    child: const Text('SKIP',style: TextStyle(color: Color(0xffFF7750)),),
                  ),
                ),
              ),

              Expanded(
                flex: 3,
                child: PageView(
                  onPageChanged: (int currentPage) {

                    setState(() => _currentPage = currentPage);
                  },
                  physics: const BouncingScrollPhysics(),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,

                  children: const [
                    OnBoardingContent(
                      image: 'new1',
                      title: 'Welcome to Tokoto, Let’s shop!!',
                    ),
                    OnBoardingContent(
                      image: 'new2',
                      title: 'We help people conect with store \naround United State of America',
                    ),
                    OnBoardingContent(
                      image: 'new3',
                      title: 'We show the easy way to shop. \nJust stay at home with us',
                    ),
                  ],
                ),
              ),
              Expanded(flex: 2,
                child:
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PageViewIndicator(
                            isCurrentPage: _currentPage == 0,
                          ),
                          PageViewIndicator(
                            isCurrentPage: _currentPage == 1,
                          ),
                          PageViewIndicator(
                            isCurrentPage: _currentPage == 2,
                          ),
                        ],
                      ),
                      Spacer(flex: 3),
                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: Visibility(
                          visible: _currentPage < 2,
                          replacement: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape:
                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              primary: Color(0xffFF7750),
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/login_screen');
                            },
                            child: const Text('Start Your Journey',style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            )),
                          ),

                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape:
                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                              // primary: Colors.white,
                              primary: Color(0xffFF7750),
                            ),
                            onPressed: () {
                              _pageController.nextPage(
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeInOutBack,
                              );
                            },
                            child: Text(
                              'Continue',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),

                    ],
                  ),
                ),
              ),
              // const SizedBox(height: 30),
              // const SizedBox(height: 30),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     IconButton(
              //       onPressed: () {
              //         if (_currentPage > 0) {
              //           _pageController.previousPage(
              //             duration: const Duration(seconds: 1),
              //             curve: Curves.easeInOutBack,
              //           );
              //         }
              //       },
              //       icon: const Icon(Icons.arrow_back_ios),
              //     ),
              //     IconButton(
              //       onPressed: () {
              //         if (_currentPage < 2) {
              //           _pageController.nextPage(
              //             duration: const Duration(seconds: 1),
              //             curve: Curves.easeInOutBack,
              //           );
              //         }
              //       },
              //       icon: const Icon(Icons.arrow_forward_ios),
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 25),
              // Visibility(
              //   visible: _currentPage == 2,
              //   maintainState: true,
              //   maintainSize: true,
              //   maintainAnimation: true,
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 30),
              //     child: DecoratedBox(
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(10),
              //         boxShadow: const [
              //           BoxShadow(
              //               color: Colors.black38,
              //               offset: Offset(0, 3),
              //               blurRadius: 6)
              //         ],
              //         gradient: const LinearGradient(
              //           colors: [
              //             Color(0xFFA6D1E6),
              //             Color(0xFFFEFBF6),
              //           ],
              //         ),
              //       ),
              //       child: ElevatedButton(
              //         onPressed: () {
              //           Navigator.pushReplacementNamed(context, '/login_screen');
              //         },
              //         style: ElevatedButton.styleFrom(
              //           primary: Colors.transparent,
              //           shadowColor: Colors.transparent,
              //           minimumSize: const Size(double.infinity, 50),
              //           // shape: RoundedRectangleBorder(
              //           //   borderRadius: BorderRadius.circular(10),
              //           // ),
              //         ),
              //         child: const Text('START'),
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}

