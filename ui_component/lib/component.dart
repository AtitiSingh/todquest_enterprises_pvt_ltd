import 'package:flutter/material.dart';
import 'package:ui_component/utils/colors.dart';
import 'package:ui_component/widget/big_text.dart';
import 'package:ui_component/widget/card_container.dart';
import 'package:ui_component/widget/image_holder.dart';
import 'package:ui_component/widget/image_holder_bg.dart';
import 'package:ui_component/widget/small_text.dart';

class Component extends StatefulWidget {
  const Component({
    Key? key,
  }) : super(key: key);

  @override
  State<Component> createState() => _ComponentState();
}

class _ComponentState extends State<Component> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 2 * (MediaQuery.of(context).size.height) / 3,
        child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, index) {
              return _buildSliderWidget(index);
            }),
      ),
    );
  }
}

Widget _buildSliderWidget(index) {
  return Container(
    margin: const EdgeInsets.all(15),
    // color: Colors.red,
    child: Stack(
      children: [
        CardContainer(
          colors: index.isEven
              ? [
                  Appcolor.gradient1,
                  Appcolor.gradient2,
                ]
              : [
                  Appcolor.gradient3,
                  Appcolor.gradient4,
                ],
        ),
        Container(
          padding: EdgeInsets.all(70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  BigText(text: 'Breakfast',),
                  SizedBox(height: 10,),
                  SmallText(text: 'Bread,',),
                  SmallText(text: 'Peanut Butter,',),
                  SmallText(text: 'Apple',),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  BigText(text: '525',),
                  SizedBox(width: 8,),
                  SmallText(text: 'kcal',),
                ],
              ),
            ],
          ),
        ),
        const Positioned(
          top: -25,
          left: 10,
          child: ImageHolder(
            image: AssetImage(
              'assets/images/egg.png',
            ),
          ),
        ),
        Positioned(
          top: -60,
          left: -20,
          child: ImageHolderBackground(
            color: Appcolor.offWhite.withOpacity(.2),
          ),
        ),
      ],
    ),
  );
}
