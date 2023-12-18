import 'package:flutter/material.dart';

import '../components/nft_card.dart';

class TopTab extends StatelessWidget {
  const TopTab({super.key});

  @override
  Widget build(BuildContext context) {
    return NftCard(
      imagePath: 'lib/images/mon.jpg',
    );
  }
}
