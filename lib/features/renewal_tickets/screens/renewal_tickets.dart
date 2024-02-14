import 'package:carselona/features/renewal_tickets/controller/ticket_controller.dart';
import 'package:carselona/features/renewal_tickets/widgets/ticket_card.dart';
import 'package:carselona/helpers/App%20Colors/app_colors.dart';
import 'package:carselona/helpers/common_widgets.dart/common_text.dart';
import 'package:carselona/helpers/common_widgets.dart/common_textfield.dart';
import 'package:carselona/helpers/extentions/extentions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class RenewalTickets extends StatefulWidget {
  const RenewalTickets({super.key});

  @override
  State<RenewalTickets> createState() => _RenewalTicketsState();
}

class _RenewalTicketsState extends State<RenewalTickets> {
  TicketController ticketController = Get.put(TicketController());
  @override
  void initState() {
    ticketController.fetchPageData(ticketController.currentPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: AppColors.whiteTextColor,
        ),
        title: const CommonText(
          text: "Renewal Tickets",
          color: AppColors.whiteTextColor,
          fontSize: 15,
        ),
        backgroundColor: AppColors.primaryHeaderColor.withOpacity(0.8),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_alt,
                color: AppColors.whiteTextColor,
              ))
        ],
      ),
      body: Column(
        children: [
          20.vs,
          Obx(
            () => Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.centerLeft,
                child: CommonText(
                    text:
                        "Total tickets found- ${ticketController.listLength.value}")),
          ),
          20.vs,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: MyTextField(
              hinttext: "Serach By Name",
              isUnderlined: true,
            ),
          ),
          20.vs,
          Expanded(
            child: GetBuilder(
              init: ticketController,
              builder: (value) => ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: value.controller,
                itemCount: value.list.length,
                itemBuilder: (context, index) {
                  return TicketCard(ticket: ticketController.list[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
