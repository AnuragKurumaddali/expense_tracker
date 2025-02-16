import '../_imports.dart';

class PageTitleText extends StatelessWidget {
  final String? text;
  final Color? color;

  const PageTitleText(
    this.text,
    this.color, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return text != null
        ? Text(
            text!,
            style: Particles.textStyles.displaySmall.copyWith(
              color: color ?? Colors.black,
              fontWeight: FontWeight.bold,
            ),
          )
        : const SizedBox.shrink();
  }
}
