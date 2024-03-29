import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCart extends StatefulWidget {
  const CustomCreditCart({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  State<CustomCreditCart> createState() => _CustomCreditCartState();
}

class _CustomCreditCartState extends State<CustomCreditCart> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          isHolderNameVisible: true,
          showBackView: /* isCvvFocused */
              showBackView, //true when you want to show cvv(back) view
          onCreditCardWidgetChange:
              (value) {}, // Callback for anytime credit card brand is changed
        ),
        CreditCardForm(
          formKey: widget.formKey, // Required
          cardNumber: cardNumber, // Required
          expiryDate: expiryDate, // Required
          cardHolderName: cardHolderName, // Required
          cvvCode: cvvCode, // Required
          //cardNumberKey: cardNumberKey,
          //cvvCodeKey: cvvCodeKey,
          //expiryDateKey: expiryDateKey,
          //cardHolderKey: cardHolderKey,
          onCreditCardModelChange: (CreditCardModel) {
            cardHolderName = CreditCardModel.cardHolderName;
            cardNumber = CreditCardModel.cardNumber;
            expiryDate = CreditCardModel.expiryDate;
            cvvCode = CreditCardModel.cvvCode;
            showBackView = CreditCardModel.isCvvFocused;

            setState(() {});
          }, // Required
          /*    obscureCvv: false,
          obscureNumber: false,
          isHolderNameVisible: false,
          isCardNumberVisible: false,
          isExpiryDateVisible: false,
          enableCvv: true, */

          cvvValidationMessage: 'Please input a valid CVV',
          dateValidationMessage: 'Please input a valid date',
          numberValidationMessage: 'Please input a valid number',

          /*  cardNumberValidator: (String? cardNumber) {},
          expiryDateValidator: (String? expiryDate) {},
          cvvValidator: (String? cvv) {},
          cardHolderValidator: (String? cardHolderName) {},
          onFormComplete: () {
            // callback to execute at the end of filling card data
          }, */
          autovalidateMode: AutovalidateMode.always,
          disableCardNumberAutoFillHints: false,
          inputConfiguration: const InputConfiguration(
            cardNumberDecoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Number',
              hintText: 'XXXX XXXX XXXX XXXX',
            ),
            expiryDateDecoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Expired Date',
              hintText: 'XX/XX',
            ),
            cvvCodeDecoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'CVV',
              hintText: 'XXX',
            ),
            cardHolderDecoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Card Holder',
            ),
            cardNumberTextStyle: TextStyle(
              fontSize: 10,
              color: Colors.black,
            ),
            cardHolderTextStyle: TextStyle(
              fontSize: 10,
              color: Colors.black,
            ),
            expiryDateTextStyle: TextStyle(
              fontSize: 10,
              color: Colors.black,
            ),
            cvvCodeTextStyle: TextStyle(
              fontSize: 10,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
