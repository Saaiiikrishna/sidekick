import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sidekick/ui/on_boarding/on_boarding_viewmodel.dart';
import 'package:sidekick/ui/screens/utils.dart';
import 'package:stacked/stacked.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late PageController _pageController;
  int _pageIndex = 0;
  bool isLastPage = false;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnBoardingViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: skBackGround,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    itemCount: demoData.length,
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _pageIndex = index;
                        isLastPage = (index == (demoData.length - 1));
                      });
                    },
                    itemBuilder: (context, index) => OnboardContent(
                      image: demoData[index].image,
                      title: demoData[index].title,
                      description: demoData[index].description,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: NeuButton(
                        onPressed: () {
                          _pageController.previousPage(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeIn);
                        },
                        radius: 12,
                        child: const Text('Back'),
                      ),
                    ),
                    const Spacer(),
                    ...List.generate(
                      demoData.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 1.5),
                        child: BarIndicator(isActive: index == _pageIndex),
                      ),
                    ),
                    const Spacer(),
                    isLastPage
                        ? Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: NeuButton(
                              onPressed: model.navigateToLoginScreen,
                              radius: 12,
                              child: const Text('Log In'),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: NeuButton(
                              radius: 12,
                              onPressed: () {
                                _pageController.nextPage(
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeIn);
                              },
                              child: const Text('Next'),
                            ),
                          ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                TextButton(
                    onPressed: () {
                      _pageController.jumpToPage(demoData.length - 1);
                    },
                    child: const Text('Skip'))
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => OnBoardingViewModel(),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<Onboard> demoData = [
  Onboard(
    image: 'assets/animations/1.json',
    title: 'Meet, Greet & Celebrate.',
    description:
        'Sidekick is a platform where you can find friends, make new ones or just have it for yourself. You can talk, share feelings and celebrate happiness in all earthly possible ways.',
  ),
  Onboard(
    image: 'assets/animations/2.json',
    title: 'Meet, Greet & Celebrate.',
    description:
        'SideKick is a platform where you can find and make new friends. You can have fun and celebrate in all earthly possible ways.',
  ),
  Onboard(
    image: 'assets/animations/4.json',
    title: 'Meet, Greet & Celebrate.',
    description:
        'SideKick is a platform where you can find and make new friends. You can have fun and celebrate in all earthly possible ways.',
  ),
  Onboard(
    image: 'assets/animations/5.json',
    title: 'Meet, Greet & Celebrate.',
    description:
        'SideKick is a platform where you can find and make new friends. You can have fun and celebrate in all earthly possible ways.',
  ),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 70.0, horizontal: 25.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: skForeGround,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: skDarkShadow,
              offset: Offset(4, 4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: skLightShadow,
              offset: Offset(-4, -4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          children: [
            const Spacer(),
            Lottie.asset(
              image,
              height: 250,
              width: 350,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: skMainText,
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: skSecondaryText,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

// TODO - Changing Text Colors