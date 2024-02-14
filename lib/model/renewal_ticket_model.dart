class TicketModel {
  final int status;
  final String msg;
  final int totalItems;
  final int totalPages;
  final int currentPage;
  final List<Ticket> data;

  TicketModel({
    required this.status,
    required this.msg,
    required this.totalItems,
    required this.totalPages,
    required this.currentPage,
    required this.data,
  });

  factory TicketModel.fromJson(Map<String, dynamic> json) {
    return TicketModel(
      status: json['status'] ?? 0,
      msg: json['msg'] ?? '',
      totalItems: json['totalItems'] ?? 0,
      totalPages: json['totalPages'] ?? 0,
      currentPage: json['currentPage'] ?? 0,
      data: List<Ticket>.from((json['data'] ?? []).map((x) => Ticket.fromJson(x))),
    );
  }
}

class Ticket {
  final int id;
  final String ticketno;
  final String title;
  final int customerid;
  final int jobid;
  final int cleanerid;
  final String ticketdate;
  final int status;
  final int reopenCount;
  final int createdByUserType;
  final int createdByUserId;
  final int isVisible;
  final int sourceId;
  final int categoryId;
  final String lastDateResolution;
  final String lastDateFeedback;
  final int subscriptionId;
  final String tableName;
  final int refId;
  final int campaignId;
  final int ownerUserId;
  final int ownerUserType;
  final int userType;
  final int userId;
  final String tags;
  final int referenceId;
  final int referenceType;
  final int wc1CampaignStatus;
  final int wc1CustomerSentiment;
  final int wc2CampaignStatus;
  final String firstServiceDate;
  final int wc1VisibleStatus;
  final int parentTicketId;
  final int createdAtMillis;
  final String updatedAt;
  final Customer customer;
  final TicketAssigns ticketAssigns;
  final Ticketsubcat ticketsubcat;
  final String createdAt;
  final String customername;
  final Customerinfo customerinfo;
  final String statusSelect;
  final String color;
  final List<TicketAssigns> ticketAssignsList;
  final String category;
  final String source;

  Ticket({
    required this.id,
    required this.ticketno,
    required this.title,
    required this.customerid,
    required this.jobid,
    required this.cleanerid,
    required this.ticketdate,
    required this.status,
    required this.reopenCount,
    required this.createdByUserType,
    required this.createdByUserId,
    required this.isVisible,
    required this.sourceId,
    required this.categoryId,
    required this.lastDateResolution,
    required this.lastDateFeedback,
    required this.subscriptionId,
    required this.tableName,
    required this.refId,
    required this.campaignId,
    required this.ownerUserId,
    required this.ownerUserType,
    required this.userType,
    required this.userId,
    required this.tags,
    required this.referenceId,
    required this.referenceType,
    required this.wc1CampaignStatus,
    required this.wc1CustomerSentiment,
    required this.wc2CampaignStatus,
    required this.firstServiceDate,
    required this.wc1VisibleStatus,
    required this.parentTicketId,
    required this.createdAtMillis,
    required this.updatedAt,
    required this.customer,
    required this.ticketAssigns,
    required this.ticketsubcat,
    required this.createdAt,
    required this.customername,
    required this.customerinfo,
    required this.statusSelect,
    required this.color,
    required this.ticketAssignsList,
    required this.category,
    required this.source,
  });

  factory Ticket.fromJson(Map<String, dynamic> json) {
    return Ticket(
      id: json['id'] ?? 0,
      ticketno: json['ticketno'] ?? '',
      title: json['title'] ?? '',
      customerid: json['customerid'] ?? 0,
      jobid: json['jobid'] ?? 0,
      cleanerid: json['cleanerid'] ?? 0,
      ticketdate: json['ticketdate'] ?? '',
      status: json['status'] ?? 0,
      reopenCount: json['reopen_count'] ?? 0,
      createdByUserType: json['created_by_user_type'] ?? 0,
      createdByUserId: json['created_by_user_id'] ?? 0,
      isVisible: json['is_visible'] ?? 0,
      sourceId: json['source_id'] ?? 0,
      categoryId: json['category_id'] ?? 0,
      lastDateResolution: json['last_date_resolution'] ?? '',
      lastDateFeedback: json['last_date_feedback'] ?? '',
      subscriptionId: json['subscription_id'] ?? 0,
      tableName: json['table_name'] ?? '',
      refId: json['ref_id'] ?? 0,
      campaignId: json['campaign_id'] ?? 0,
      ownerUserId: json['owner_user_id'] ?? 0,
      ownerUserType: json['owner_user_type'] ?? 0,
      userType: json['user_type'] ?? 0,
      userId: json['user_id'] ?? 0,
      tags: json['tags'] ?? '',
      referenceId: json['reference_id'] ?? 0,
      referenceType: json['reference_type'] ?? 0,
      wc1CampaignStatus: json['wc1_campaign_status'] ?? 0,
      wc1CustomerSentiment: json['wc1_customer_sentiment'] ?? 0,
      wc2CampaignStatus: json['wc2_campaign_status'] ?? 0,
      firstServiceDate: json['first_service_date'] ?? '',
      wc1VisibleStatus: json['wc1_visible_status'] ?? 0,
      parentTicketId: json['parent_ticket_id'] ?? 0,
      createdAtMillis: json['createdAt'] ?? 0,
      updatedAt: json['updatedAt'] ?? '',
      customer: Customer.fromJson(json['customer'] ?? {}),
      ticketAssigns: TicketAssigns.fromJson(json['ticketAssigns'] ?? {}),
      ticketsubcat: Ticketsubcat.fromJson(json['ticketsubcat'] ?? {}),
      createdAt: json['created_at'] ?? '',
      customername: json['customername'] ?? '',
      customerinfo: Customerinfo.fromJson(json['customerinfo'] ?? {}),
      statusSelect: json['statusSelect'] ?? '',
      color: json['color'] ?? '',
      ticketAssignsList: List<TicketAssigns>.from((json['ticket_assigns'] ?? []).map((x) => TicketAssigns.fromJson(x))),
      category: json['category'] ?? '',
      source: json['source'] ?? '',
    );
  }
}

class Customer {
  final int id;
  final int cleanerId;
  final int gstNumber;
  final int distributorid;
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String gender;
  final String flatno;
  final String locality;
  final String addressLine1;
  final String addressLine2;
  final String latitude;
  final String longitude;
  final int city;
  final String state;
  final String pincode;
  final int isPremium;
  final int termscondi;
  final int status;
  final int subStatusId;
  final String profileImage;
  final int stage;
  final int societyid;
  final String cleanercode;
  final int cleanerlead;
  final int isAutodebitEnable;
  final int userType;
  final dynamic autoDebitAccessKey;
  final dynamic customerAuthenticationId;
  final dynamic authorizationStatus;
  final int coins;
  final int walletCoins;
  final String razorpayCustomerId;
  final String referBy;
  final int appRating;
  final int inServiceableArea;
  final int isDeleted;
  final String otherSocietyName;
  final int sourceId;
  final dynamic subsource;
  final int enableNotification;
  final int campaignId;
  final int activeStatus;
  final int custTypeStatus;
  final String publicTag;
  final String privateTag;
  final dynamic privateTagEmogie;
  final String tags;
  final int approveCoinUsage;
  final int kylascontactid;
  final int statusId;
  final String lastUpdatedAppVersion;
  final int customerOnboardedDatetime;
  final int isWhatsApp;
  final String modelForExternal;
  final int batchId;
  final String lastCallStatus;
  final String lastCallType;
  final int lastCallDateTime;
  final int callCount;
  final String exotelCallSid;
  final int createdAtMillis;
  final int updatedAtMillis;

  Customer({
    required this.id,
    required this.cleanerId,
    required this.gstNumber,
    required this.distributorid,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.gender,
    required this.flatno,
    required this.locality,
    required this.addressLine1,
    required this.addressLine2,
    required this.latitude,
    required this.longitude,
    required this.city,
    required this.state,
    required this.pincode,
    required this.isPremium,
    required this.termscondi,
    required this.status,
    required this.subStatusId,
    required this.profileImage,
    required this.stage,
    required this.societyid,
    required this.cleanercode,
    required this.cleanerlead,
    required this.isAutodebitEnable,
    required this.userType,
    required this.autoDebitAccessKey,
    required this.customerAuthenticationId,
    required this.authorizationStatus,
    required this.coins,
    required this.walletCoins,
    required this.razorpayCustomerId,
    required this.referBy,
    required this.appRating,
    required this.inServiceableArea,
    required this.isDeleted,
    required this.otherSocietyName,
    required this.sourceId,
    required this.subsource,
    required this.enableNotification,
    required this.campaignId,
    required this.activeStatus,
    required this.custTypeStatus,
    required this.publicTag,
    required this.privateTag,
    required this.privateTagEmogie,
    required this.tags,
    required this.approveCoinUsage,
    required this.kylascontactid,
    required this.statusId,
    required this.lastUpdatedAppVersion,
    required this.customerOnboardedDatetime,
    required this.isWhatsApp,
    required this.modelForExternal,
    required this.batchId,
    required this.lastCallStatus,
    required this.lastCallType,
    required this.lastCallDateTime,
    required this.callCount,
    required this.exotelCallSid,
    required this.createdAtMillis,
    required this.updatedAtMillis,
  });

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      id: json['id'] ?? 0,
      cleanerId: json['cleaner_id'] ?? 0,
      gstNumber: json['gst_number'] ?? 0,
      distributorid: json['distributorid'] ?? 0,
      firstName: json['first_name'] ?? '',
      lastName: json['last_name'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      gender: json['gender'] ?? '',
      flatno: json['flatno'] ?? '',
      locality: json['locality'] ?? '',
      addressLine1: json['address_line_1'] ?? '',
      addressLine2: json['address_line_2'] ?? '',
      latitude: json['latitude'] ?? '',
      longitude: json['longitude'] ?? '',
      city: json['city'] ?? 0,
      state: json['state'] ?? '',
      pincode: json['pincode'] ?? '',
      isPremium: json['is_premium'] ?? 0,
      termscondi: json['termscondi'] ?? 0,
      status: json['status'] ?? 0,
      subStatusId: json['sub_status_id'] ?? 0,
      profileImage: json['profile_image'] ?? '',
      stage: json['stage'] ?? 0,
      societyid: json['societyid'] ?? 0,
      cleanercode: json['cleanercode'] ?? '',
      cleanerlead: json['cleanerlead'] ?? 0,
      isAutodebitEnable: json['is_autodebit_enable'] ?? 0,
      userType: json['userType'] ?? 0,
      autoDebitAccessKey: json['auto_debit_access_key'],
      customerAuthenticationId: json['customer_authentication_id'],
      authorizationStatus: json['authorization_status'],
      coins: json['coins'] ?? 0,
      walletCoins: json['wallet_coins'] ?? 0,
      razorpayCustomerId: json['razorpay_customer_id'] ?? '',
      referBy: json['referBy'] ?? '',
      appRating: json['app_rating'] ?? 0,
      inServiceableArea: json['in_serviceable_area'] ?? 0,
      isDeleted: json['is_deleted'] ?? 0,
      otherSocietyName: json['other_society_name'] ?? '',
      sourceId: json['source_id'] ?? 0,
      subsource: json['subsource'],
      enableNotification: json['enable_notification'] ?? 0,
      campaignId: json['campaign_id'] ?? 0,
      activeStatus: json['active_status'] ?? 0,
      custTypeStatus: json['cust_type_status'] ?? 0,
      publicTag: json['public_tag'] ?? '',
      privateTag: json['private_tag'] ?? '',
      privateTagEmogie: json['private_tag_emogie'],
      tags: json['tags'] ?? '',
      approveCoinUsage: json['approve_coin_usage'] ?? 0,
      kylascontactid: json['kylascontactid'] ?? 0,
      statusId: json['status_id'] ?? 0,
      lastUpdatedAppVersion: json['last_updated_app_version'] ?? '',
      customerOnboardedDatetime: json['customer_onboarded_datetime'] ?? 0,
      isWhatsApp: json['isWhatsApp'] ?? 0,
      modelForExternal: json['model_for_external'] ?? '',
      batchId: json['batch_id'] ?? 0,
      lastCallStatus: json['last_call_status'] ?? '',
      lastCallType: json['last_call_type'] ?? '',
      lastCallDateTime: json['last_call_date_time'] ?? 0,
      callCount: json['call_count'] ?? 0,
      exotelCallSid: json['exotel_call_sid'] ?? '',
      createdAtMillis: json['createdAt'] ?? 0,
      updatedAtMillis: json['updatedAt'] ?? 0,
    );
  }
}

class TicketAssigns {
  final int id;
  final int ticketid;
  final int userid;
  final String userTable;
  final int status;
  final int createdAtMillis;
  final int updatedAtMillis;
  final String name;

  TicketAssigns({
    required this.id,
    required this.ticketid,
    required this.userid,
    required this.userTable,
    required this.status,
    required this.createdAtMillis,
    required this.updatedAtMillis,
    required this.name,
  });

  factory TicketAssigns.fromJson(Map<String, dynamic> json) {
    return TicketAssigns(
      id: json['id'] ?? 0,
      ticketid: json['ticketid'] ?? 0,
      userid: json['userid'] ?? 0,
      userTable: json['user_table'] ?? '',
      status: json['status'] ?? 0,
      createdAtMillis: json['createdAt'] ?? 0,
      updatedAtMillis: json['updatedAt'] ?? 0,
      name: json['name'] ?? '',
    );
  }
}

class Ticketsubcat {
  final int? id;
  final int? ticketId;
  final int? ticketSubcategoryId;
  final int? createdAtMillis;
  final int? updatedAtMillis;
  final Masterticketsubcategory? masterticketsubcategory;

  Ticketsubcat({
    required this.id,
    required this.ticketId,
    required this.ticketSubcategoryId,
    required this.createdAtMillis,
    required this.updatedAtMillis,
    required this.masterticketsubcategory,
  });

  factory Ticketsubcat.fromJson(Map<String, dynamic> json) {
    return Ticketsubcat(
      id: json['id'],
      ticketId: json['ticket_id'],
      ticketSubcategoryId: json['ticket_subcategory_id'],
      createdAtMillis: json['createdAt'],
      updatedAtMillis: json['updatedAt'],
      masterticketsubcategory: json['masterticketsubcategory'] != null
          ? Masterticketsubcategory.fromJson(json['masterticketsubcategory'])
          : null,
    );
  }
}

class Masterticketsubcategory {
  final int? id;
  final String? subcategoryName;
  final int? subcategoryId;
  final int? categoryId;
  final String? appText;
  final int? inAppShown;
  final int? flowType;
  final int? viewOrder;
  final int? createdAtMillis;
  final int? updatedAtMillis;

  Masterticketsubcategory({
    required this.id,
    required this.subcategoryName,
    required this.subcategoryId,
    required this.categoryId,
    required this.appText,
    required this.inAppShown,
    required this.flowType,
    required this.viewOrder,
    required this.createdAtMillis,
    required this.updatedAtMillis,
  });

  factory Masterticketsubcategory.fromJson(Map<String, dynamic> json) {
    return Masterticketsubcategory(
      id: json['id'],
      subcategoryName: json['subcategory_name'],
      subcategoryId: json['subcategory_id'],
      categoryId: json['category_id'],
      appText: json['app_text'],
      inAppShown: json['inAppShown'],
      flowType: json['flowType'],
      viewOrder: json['view_order'],
      createdAtMillis: json['createdAt'],
      updatedAtMillis: json['updatedAt'],
    );
  }
}

class Customerinfo {
  final int? id;
  final int? cleanerId;
  final int? gstNumber;
  final int? distributorid;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phone;
  final String? gender;
  final String? flatno;
  final String? locality;
  final String? addressLine1;
  final String? addressLine2;
  final String? latitude;
  final String? longitude;
  final int? city;
  final String? state;
  final String? pincode;
  final int? isPremium;
  final int? termscondi;
  final int? status;
  final int? subStatusId;
  final String? profileImage;
  final int? stage;
  final int? societyid;
  final String? cleanercode;
  final int? cleanerlead;
  final int? isAutodebitEnable;
  final int? userType;
  final dynamic autoDebitAccessKey;
  final dynamic customerAuthenticationId;
  final dynamic authorizationStatus;
  final int? coins;
  final int? walletCoins;
  final String? razorpayCustomerId;
  final String? referBy;
  final int? appRating;
  final int? inServiceableArea;
  final int? isDeleted;
  final String? otherSocietyName;
  final int? sourceId;
  final dynamic subsource;
  final int? enableNotification;
  final int? campaignId;
  final int? activeStatus;
  final int? custTypeStatus;
  final String? publicTag;
  final String? privateTag;
  final dynamic privateTagEmogie;
  final String? tags;
  final int? approveCoinUsage;
  final int? kylascontactid;
  final int? statusId;
  final String? lastUpdatedAppVersion;
  final int? customerOnboardedDatetime;
  final int? isWhatsApp;
  final String? modelForExternal;
  final int? batchId;
  final String? lastCallStatus;
  final String? lastCallType;
  final int? lastCallDateTime;
  final int? callCount;
  final String? exotelCallSid;
  final int? createdAtMillis;
  final int? updatedAtMillis;

  Customerinfo({
    required this.id,
    required this.cleanerId,
    required this.gstNumber,
    required this.distributorid,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.gender,
    required this.flatno,
    required this.locality,
    required this.addressLine1,
    required this.addressLine2,
    required this.latitude,
    required this.longitude,
    required this.city,
    required this.state,
    required this.pincode,
    required this.isPremium,
    required this.termscondi,
    required this.status,
    required this.subStatusId,
    required this.profileImage,
    required this.stage,
    required this.societyid,
    required this.cleanercode,
    required this.cleanerlead,
    required this.isAutodebitEnable,
    required this.userType,
    required this.autoDebitAccessKey,
    required this.customerAuthenticationId,
    required this.authorizationStatus,
    required this.coins,
    required this.walletCoins,
    required this.razorpayCustomerId,
    required this.referBy,
    required this.appRating,
    required this.inServiceableArea,
    required this.isDeleted,
    required this.otherSocietyName,
    required this.sourceId,
    required this.subsource,
    required this.enableNotification,
    required this.campaignId,
    required this.activeStatus,
    required this.custTypeStatus,
    required this.publicTag,
    required this.privateTag,
    required this.privateTagEmogie,
    required this.tags,
    required this.approveCoinUsage,
    required this.kylascontactid,
    required this.statusId,
    required this.lastUpdatedAppVersion,
    required this.customerOnboardedDatetime,
    required this.isWhatsApp,
    required this.modelForExternal,
    required this.batchId,
    required this.lastCallStatus,
    required this.lastCallType,
    required this.lastCallDateTime,
    required this.callCount,
    required this.exotelCallSid,
    required this.createdAtMillis,
    required this.updatedAtMillis,
  });

  factory Customerinfo.fromJson(Map<String, dynamic> json) {
    return Customerinfo(
      id: json['id'],
      cleanerId: json['cleaner_id'],
      gstNumber: json['gst_number'],
      distributorid: json['distributorid'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      phone: json['phone'],
      gender: json['gender'],
      flatno: json['flatno'],
      locality: json['locality'],
      addressLine1: json['address_line_1'],
      addressLine2: json['address_line_2'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      city: json['city'],
      state: json['state'],
      pincode: json['pincode'],
      isPremium: json['is_premium'],
      termscondi: json['termscondi'],
      status: json['status'],
      subStatusId: json['sub_status_id'],
      profileImage: json['profile_image'],
      stage: json['stage'],
      societyid: json['societyid'],
      cleanercode: json['cleanercode'],
      cleanerlead: json['cleanerlead'],
      isAutodebitEnable: json['is_autodebit_enable'],
      userType: json['userType'],
      autoDebitAccessKey: json['auto_debit_access_key'],
      customerAuthenticationId: json['customer_authentication_id'],
      authorizationStatus: json['authorization_status'],
      coins: json['coins'],
      walletCoins: json['wallet_coins'],
      razorpayCustomerId: json['razorpay_customer_id'],
      referBy: json['referBy'],
      appRating: json['app_rating'],
      inServiceableArea: json['in_serviceable_area'],
      isDeleted: json['is_deleted'],
      otherSocietyName: json['other_society_name'],
      sourceId: json['source_id'],
      subsource: json['subsource'],
      enableNotification: json['enable_notification'],
      campaignId: json['campaign_id'],
      activeStatus: json['active_status'],
      custTypeStatus: json['cust_type_status'],
      publicTag: json['public_tag'],
      privateTag: json['private_tag'],
      privateTagEmogie: json['private_tag_emogie'],
      tags: json['tags'],
      approveCoinUsage: json['approve_coin_usage'],
      kylascontactid: json['kylascontactid'],
      statusId: json['status_id'],
      lastUpdatedAppVersion: json['last_updated_app_version'],
      customerOnboardedDatetime: json['customer_onboarded_datetime'],
      isWhatsApp: json['isWhatsApp'],
      modelForExternal: json['model_for_external'],
      batchId: json['batch_id'],
      lastCallStatus: json['last_call_status'],
      lastCallType: json['last_call_type'],
      lastCallDateTime: json['last_call_date_time'],
      callCount: json['call_count'],
      exotelCallSid: json['exotel_call_sid'],
      createdAtMillis: json['createdAt'],
      updatedAtMillis: json['updatedAt'],
    );
  }
}
