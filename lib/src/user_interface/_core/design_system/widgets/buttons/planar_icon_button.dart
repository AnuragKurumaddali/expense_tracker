part of 'planar_button.dart';

class PlanarIconButton extends StatelessWidget {
  final bool disabled;
  final VoidCallback onPressed;
  final SvgPicture icon;

  const PlanarIconButton({
    super.key,
    this.disabled = false,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return _PlanarButtonBackground(
      disabled: disabled,
      child: IconButton(
        style: IconButton.styleFrom(
          backgroundColor: Colors.transparent,
        ),
        onPressed: disabled ? null : onPressed,
        icon: icon,
      ),
    );
  }
}
