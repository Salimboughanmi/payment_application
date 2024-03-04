import 'package:flutter/material.dart';
import 'package:payment_project/core/utils/style.dart';
import 'package:payment_project/core/widgets/card_info_widget.dart';
import 'package:payment_project/core/widgets/payment_info_item.dart';
import 'package:payment_project/core/widgets/total_price_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class thankYouCard extends StatelessWidget {
  const thankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 22, right: 22),
        child: Column(
          children: [
            Text(
              "thank you !",
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            Text(
              " your transaction was successful",
              textAlign: TextAlign.center,
              style: Styles.style20,
            ),
            SizedBox(
              height: 45,
            ),
            PaymentItemInfo(
              title: "date",
              value: "15/01/2000",
            ),
            SizedBox(
              height: 20,
            ),
            PaymentItemInfo(
              title: "Time",
              value: "15 : 10 AM",
            ),
            SizedBox(
              height: 20,
            ),
            PaymentItemInfo(
              title: "To",
              value: "Sam Louis ",
            ),
            Divider(
              height: 40,
              thickness: 2,
            ),
            TotalPrice(title: "Total", value: r'$50.21'),
            SizedBox(
              height: 10,
            ),
            CardInfoWidget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.barcode,
                  size: 64,
                ),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1.50, color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      textAlign: TextAlign.center,
                      style: Styles.style24
                          .copyWith(color: const Color(0xff34A853)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
                height:
                    ((MediaQuery.sizeOf(context).height * .2 + 20) / 2) - 29)
          ],
        ),
      ),
    );
  }
}
