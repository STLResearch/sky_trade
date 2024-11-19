import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sky_trade/core/utils/enums/ui.dart';
import 'package:sky_trade/features/referral/presentation/widgets/share_widgets/referral_platform_share_widget.dart';

class ShareQrCodeWidget extends StatelessWidget {
  const ShareQrCodeWidget({
    required this.qrData,
    super.key,
  });

  final String qrData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 140,
            height: 140,
            child: QrImageView(data: qrData),
          ),
          const SizedBox(width: 10),
          const ReferralPlatformShareWidget(arrangement: ArrangementType.cube),
        ],
      ),
    );
  }
}
