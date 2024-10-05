import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_form.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          QuickInviceForm(),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                  child: CustomButton(
                backgroundColor: Colors.transparent,
                textColor: Color(0xff4EB7F2),
              )),
              SizedBox(
                width: 24,
              ),
              Expanded(child: CustomButton()),
            ],
          ),
        ],
      ),
    );
  }
}
