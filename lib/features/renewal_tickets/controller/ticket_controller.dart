import 'package:carselona/model/renewal_ticket_model.dart';
import 'package:carselona/repo/renewal_ticket_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TicketController extends GetxController {
  final _api = RenewalTicketRepo();
  List<Ticket> list = [];
  ScrollController controller = ScrollController();
  int currentPage = 1; 
  RxInt listLength=0.obs;

  @override
  void onInit() {
    addItems();
    super.onInit();
  }

  void addItems() async {
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.position.pixels) {
        currentPage++;
        fetchPageData(currentPage);
      }
    });
  }

  void fetchPageData(int page) async {
    await _api
        .getTicketsApi(page: currentPage.toString(), uId: "489")
        .then((value) {
      List<Ticket> newList = [];
      newList.addAll(value.data);
      print(newList.length);
      if (newList.isNotEmpty) {
        
        list.addAll(newList);
        newList.clear();
       listLength.value=list.length;
        update();
      }
    });
  }
}
