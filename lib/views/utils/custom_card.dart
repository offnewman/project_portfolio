import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/utils/decoration.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Color? color;

  CustomCard({required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    //? Trial one side flat edge?
    // return Stack(
    //   children: [
    //     Container(decoration: defaultDecoration(context), padding: EdgeInsets.all(12.0), child: child),
    //     Align(
    //       alignment: Alignment.centerLeft,
    //       child: Container(
    //         width: ,
    //       ))
    //   ],
    // );

    return Container(decoration: customDecoration(context).copyWith(color: color ?? Theme.of(context).cardColor), padding: EdgeInsets.all(12.0), child: child);
  }
}
