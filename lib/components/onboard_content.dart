import 'package:flutter/material.dart';
import 'package:onboard_animation/components/faculty_sigin.dart';
import 'package:onboard_animation/components/landed_content.dart';
import 'package:onboard_animation/components/sing_up_form.dart';
import 'package:onboard_animation/components/student_sign.dart';

class OnboardContent extends StatefulWidget {
  const OnboardContent({super.key});

  @override
  State<OnboardContent> createState() => _OnboardContentState();
}

class _OnboardContentState extends State<OnboardContent> {
  late PageController _pageController;
  int _currentPageIndex = 0;
  // double _progress;
  @override
  void initState() {
    _pageController = PageController()
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  double callWidth() {
    switch (_currentPageIndex) {
      case 0:
        return 80; // Width for page 1
      case 1:
        return 100; // Width for page 2
      case 2:
        return 180; // Width for page 3
      case 3:
        return 280; // Width for page 4
      default:
        return 200; // Default width
    }
  }

  Widget callText() {
    switch (_currentPageIndex) {
      case 0:
        return const Text('Get Started'); // Width for page 1
      case 1:
        return const Text(
          "Create account",
          maxLines: 1,
          overflow: TextOverflow.fade,
          softWrap: false,
        ); // Width for page 2
      case 2:
        return const Text(
          "Are you a faculty?",
          maxLines: 1,
          overflow: TextOverflow.fade,
          softWrap: false,
        ); // Width for page 3
      case 3:
        return const Text(
          "Are you a student?",
          maxLines: 1,
          overflow: TextOverflow.fade,
          softWrap: false,
        ); // Width for page 4
      default:
        return const Text('overflow'); // Default width
    }
  }

  @override
  Widget build(BuildContext context) {
    final double progress =
        _pageController.hasClients ? (_pageController.page ?? 0) : 0;

    return SizedBox(
      height: 400 + progress * 100,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              const SizedBox(height: 16),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int pageIndex) {
                    setState(() {
                      _currentPageIndex = pageIndex;
                    });
                  },
                  children: [
                    LandingContent(),
                    SignUpForm(),
                    Student_signin(),
                    Faculty_signin(),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            height: 56,
            bottom: 120 - progress * 25,
            right: 16,
            child: GestureDetector(
              onTap: () {
                if (_pageController.page! < 3) {
                  _pageController.animateToPage(_currentPageIndex + 1,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.ease);
                } else {
                  _pageController.animateToPage(_currentPageIndex - 1,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.ease);
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    stops: [0.4, 0.8],
                    colors: [
                      Color.fromARGB(255, 239, 104, 80),
                      Color.fromARGB(255, 139, 33, 146)
                    ],
                  ),
                ),
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100 + progress * 30,
                        height: 20,
                        child: Stack(
                          fit: StackFit.passthrough,
                          children: [
                            FadeTransition(
                              opacity: AlwaysStoppedAnimation(
                                  progress < 0.33 ? 1 : 0),
                              child: callText(),
                            ),
                            FadeTransition(
                                opacity: AlwaysStoppedAnimation(
                                    progress > 0.33 && progress < 0.67 ? 1 : 0),
                                child: callText()),
                            FadeTransition(
                              opacity: AlwaysStoppedAnimation(
                                  progress > 0.67 && progress < 0.99 ? 1 : 0),
                              child: callText(),
                            ),
                            FadeTransition(
                              opacity: AlwaysStoppedAnimation(
                                  progress >= 0.99 ? 1 : 0),
                              child: callText(),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.chevron_right,
                        size: 24,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
