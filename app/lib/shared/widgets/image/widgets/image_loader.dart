import 'package:flutter/material.dart';

import '../../loading/loading.dart';

class ImageLoader extends StatelessWidget {
  const ImageLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AppLoading(),
    );
  }
}
