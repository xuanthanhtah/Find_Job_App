import 'dart:async';
import 'package:app_find_job/core/constants/color_constants.dart';
import 'package:app_find_job/core/helpers/asset_helper.dart';
import 'package:app_find_job/core/helpers/image_helper.dart';
import 'package:app_find_job/main_app.dart';
import 'package:app_find_job/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:app_find_job/core/constants/textstyle_constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  static const routeName = '/IntroPage';
  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _pageController = PageController();

  final StreamController<int> _pageStreamController =
      StreamController.broadcast();

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      _pageStreamController.add((_pageController.page!.toInt()));
    });
  }

  Widget _buildItemIntroPage(
    String image,
    String title,
    String description,
    AlignmentGeometry alignment,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: alignment,
          child: ImageHelper.loadFromAsset(
            image,
            height: 400,
            // width: 380,
            fit: BoxFit.fitHeight,
          ),
        ),
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyles.defaultStyle.fontHeader.bold),
              const SizedBox(height: 30),
              Text(description, style: TextStyles.defaultStyle),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              _buildItemIntroPage(
                AssetHelper.intro1,
                'Hoàn Thiện hồ sơ xin việc',
                'Chuẩn bị hồ sơ xin việc ấn tượng và chuyên nghiệp.',
                Alignment.centerLeft,
              ),
              _buildItemIntroPage(
                AssetHelper.intro2,
                'Chủ động tìm việc',
                'Tìm và ứng tuyển công việc nhanh chóng và nhẹ nhàng.',
                Alignment.center,
              ),
              _buildItemIntroPage(
                AssetHelper.intro3,
                'Nhận cơ hội hấp dẫn',
                'Nhà tuyển dụng chủ động tìm kiếm bạn qua CV đã có trên app, nhận ngay lời mời hấp dẫn.',
                Alignment.centerRight,
              ),
            ],
          ),
          Positioned(
            left: 25,
            right: 25,
            bottom: 75,
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      dotWidth: 16,
                      dotHeight: 16,
                      activeDotColor: ColorPalette.primaryColor,
                    ),
                  ),
                ),
                StreamBuilder<int>(
                    initialData: 0,
                    stream: _pageStreamController.stream,
                    builder: (context, snapshot) {
                      return Expanded(
                        flex: 4,
                        child: ButtonWidget(
                          title: snapshot.data != 2 ? 'Tiếp Tục' : 'Bắt đầu',
                          onTap: () {
                            if (_pageController.page != 2) {
                              _pageController.nextPage(
                                  duration: const Duration(milliseconds: 2000),
                                  curve: Curves.easeIn);
                            } else {
                              Navigator.of(context)
                                  .pushNamed(MainApp.routeName);
                            }
                          },
                        ),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
