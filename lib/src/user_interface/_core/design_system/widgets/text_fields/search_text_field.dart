
import '../_imports.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController searchController;
  final VoidCallback? onClearPressed;
  final String hintText;
  final FocusNode searchFocusNode;
  const SearchTextField(
      {super.key, required this.searchController, required this.onClearPressed, required this.hintText, required this.searchFocusNode});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: SizedBox(
        height: 55,
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          child: TextField(
            focusNode: searchFocusNode,
            controller: searchController,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: Particles.textStyles.titleMedium,
              prefixIcon: const Icon(Icons.search),
              suffixIcon: searchController.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: onClearPressed,
                    )
                  : const SizedBox.shrink(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
        ),
      ),
    );
  }
}
