import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';

class PageScrollBar extends StatelessWidget {
  const PageScrollBar({
    required this.numOfItems,
    required this.scrollController,
    required this.selectedPageNumber,
    required this.onPageCardTap,
    super.key,
  });

  final int numOfItems;
  final ScrollController scrollController;
  final int selectedPageNumber;
  final Function1<int,void> onPageCardTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        shrinkWrap: true,
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        children: List.generate(numOfItems, _numberWidget),
      ),
    );
  }

  Widget _numberWidget(int number) {
    return SizedBox(
      width: 35,
      height: 35,
      child: GestureDetector(
       onTap: () => onPageCardTap.call(number),
       child: Card(
         color: selectedPageNumber == number ? hex5D7285 : hexFFFFFF,
         elevation: 0,
         shape: const CircleBorder(),
         child: Center(
           child: Text(
             '${number + 1}',
             style: TextStyle(
               fontSize: 13,
               fontWeight: FontWeight.w400,
               fontFamily: FontFamily.poppins,
               color: selectedPageNumber == number ? hexFFFFFF : hex5D7285,
             ),
           ),
         ),
       ),
      ),
    );
  }
}
