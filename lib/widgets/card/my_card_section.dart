import 'package:flutter/material.dart';
import 'package:resposeveui/utils/app_styles.dart';
import 'package:resposeveui/widgets/card/dots_indicator.dart';
import 'package:resposeveui/widgets/card/my_cards_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController
        .addListener(_updatePageIndex); // Use _updatePageIndex function here

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  // Function to update page index
  void _updatePageIndex() {
    setState(() {
      currentPageIndex = pageController.page!.round();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            'My card',
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardsPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        DotsIndicator(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
