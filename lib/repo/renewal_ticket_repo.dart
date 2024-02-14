import 'package:carselona/data/network/network_api_services.dart';
import 'package:carselona/helpers/appUrl/appUrl.dart';
import 'package:carselona/model/renewal_ticket_model.dart';

class RenewalTicketRepo{
  final api = NetworkApiServices();

  Future<TicketModel> getTicketsApi({required String uId,required String page}) async {
    Map<String, String>? header = {
      "Content-Type": "application/json"
    };
    dynamic response =
        await api.getHeaderApi(header, "${AppUrl.getTickets}?userid=$uId&size=10&page=$page");
    return TicketModel.fromJson(response);
  }
  
}