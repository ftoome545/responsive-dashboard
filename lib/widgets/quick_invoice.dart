import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

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
          ),
          Row(
            children: [
              Expanded(
                child: TitleTextField(
                  title: 'Customer name',
                  hint: 'Type customer name',
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: TitleTextField(
                  title: 'Customer Email',
                  hint: 'Type customer email',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
