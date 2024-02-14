import 'package:carselona/features/renewal_tickets/widgets/box_widget.dart';
import 'package:carselona/helpers/App%20Colors/app_colors.dart';
import 'package:carselona/helpers/common_widgets.dart/common_text.dart';
import 'package:carselona/helpers/extentions/extentions.dart';
import 'package:carselona/model/renewal_ticket_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({super.key, required this.ticket});

  final Ticket ticket;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Material(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        elevation: 5,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                color: AppColors.primaryHeaderColor.withOpacity(0.8),
                height: 0.039.sh,
                width: 1.sw,
                child: CommonText(
                  text: ticket.title,
                  color: AppColors.whiteTextColor,
                  fontSize: 10,
                ),
              ),
              10.vs,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CommonText(text: ticket.customername),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CommonText(text: ticket.ticketno))
                ],
              ),
              10.vs,
              const Divider(),
              5.vs,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CommonText(
                      text: 'Open at: ${ticket.createdAt.parseAndFormatCustomDateTime()}',
                      fontSize: 12,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: SelectiveContainer(
                        text: ticket.statusSelect,
                        color: Color(
                          int.parse(ticket.color),
                        )),
                  )
                ],
              ),
              10.vs,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 0.3.sw,

                    //if i get it in list

                    // child: Wrap(
                    //   children:ticket.tags.map(tags){
                    //     return SelectiveContainer(
                    //       text: tags.name,
                    //       isSelected: true,
                    //       selctedColor: AppColors.primaryHeaderColor,
                    //     );
                    //   },
                    // ),
                    child: Column(
                      children: [
                        (SelectiveContainer(
                          text: ticket.category,
                          isSelected: true,
                          selctedColor: AppColors.primaryHeaderColor,
                        )),
                        5.vs,
                      ],
                    ),
                  ),
                ),
              ),
              10.vs,
            ],
          ),
        ),
      ),
    );
  }
}
