import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as math;

class RadialPainter extends CustomPainter {
  const RadialPainter({required this.progress});
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint()
      ..strokeWidth = 10
      ..color = Color(0xFF200087)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    Offset center = Offset(size.width / 2, size.height / 2);
    //Now we draw a circle
    // canvas.drawCircle(center, size.width / 2, paint);
    double relativeProgress = 360 * progress;
    //Now we draw an ARC instead
    canvas.drawArc(Rect.fromCircle(center: center, radius: size.width / 2),
        math.radians(-90), math.radians(-relativeProgress), false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class IngredientProgress extends StatelessWidget {
  const IngredientProgress(
      {super.key,
      required this.ingredient,
      required this.leftAmount,
      required this.progressColor,
      required this.progress,
      required this.width});
  final String ingredient;
  final int leftAmount;
  final double progress;
  final Color progressColor;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ingredient.toUpperCase(),
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(children: [
          Stack(
            children: [
              Container(
                height: 10,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  color: Colors.black12,
                ),
              ),
              Container(
                height: 10,
                width: width * progress,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  color: progressColor,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Text('${leftAmount}g left'),
        ]),
      ],
    );
  }
}
