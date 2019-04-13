import 'dart:convert';

Article articleFromJson(String str) {
  final jsonData = json.decode(str);
  return Article.fromJson(jsonData);
}

String articleToJson(Article data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class Article {
  int id;
  int mainDetailId;
  int supplierId;
  int taxId;
  int priceGroupId;
  int filterGroupId;
  int configuratorSetId;
  String name;
  String description;
  String descriptionLong;
  String added;
  bool active;
  int pseudoSales;
  bool highlight;
  String keywords;
  String metaTitle;
  String changed;
  bool priceGroupActive;
  bool lastStock;
  int crossBundleLook;
  bool notification;
  String template;
  int mode;
  dynamic availableFrom;
  dynamic availableTo;
  MainDetail mainDetail;

  Article({
    this.id,
    this.mainDetailId,
    this.supplierId,
    this.taxId,
    this.priceGroupId,
    this.filterGroupId,
    this.configuratorSetId,
    this.name,
    this.description,
    this.descriptionLong,
    this.added,
    this.active,
    this.pseudoSales,
    this.highlight,
    this.keywords,
    this.metaTitle,
    this.changed,
    this.priceGroupActive,
    this.lastStock,
    this.crossBundleLook,
    this.notification,
    this.template,
    this.mode,
    this.availableFrom,
    this.availableTo,
    this.mainDetail,
  });

  factory Article.fromJson(Map<String, dynamic> json) => new Article(
        id: json["id"],
        mainDetailId: json["mainDetailId"],
        supplierId: json["supplierId"],
        taxId: json["taxId"],
        priceGroupId: json["priceGroupId"],
        filterGroupId: json["filterGroupId"],
        configuratorSetId: json["configuratorSetId"],
        name: json["name"],
        description: json["description"],
        descriptionLong: json["descriptionLong"],
        added: json["added"],
        active: json["active"],
        pseudoSales: json["pseudoSales"],
        highlight: json["highlight"],
        keywords: json["keywords"],
        metaTitle: json["metaTitle"],
        changed: json["changed"],
        priceGroupActive: json["priceGroupActive"],
        lastStock: json["lastStock"],
        crossBundleLook: json["crossBundleLook"],
        notification: json["notification"],
        template: json["template"],
        mode: json["mode"],
        availableFrom: json["availableFrom"],
        availableTo: json["availableTo"],
        mainDetail: MainDetail.fromJson(json["mainDetail"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "mainDetailId": mainDetailId,
        "supplierId": supplierId,
        "taxId": taxId,
        "priceGroupId": priceGroupId,
        "filterGroupId": filterGroupId,
        "configuratorSetId": configuratorSetId,
        "name": name,
        "description": description,
        "descriptionLong": descriptionLong,
        "added": added,
        "active": active,
        "pseudoSales": pseudoSales,
        "highlight": highlight,
        "keywords": keywords,
        "metaTitle": metaTitle,
        "changed": changed,
        "priceGroupActive": priceGroupActive,
        "lastStock": lastStock,
        "crossBundleLook": crossBundleLook,
        "notification": notification,
        "template": template,
        "mode": mode,
        "availableFrom": availableFrom,
        "availableTo": availableTo,
        "mainDetail": mainDetail.toJson(),
      };

  @override
  String toString() {
    return 'Article{id: $id, mainDetailId: $mainDetailId, supplierId: $supplierId, taxId: $taxId, priceGroupId: $priceGroupId, filterGroupId: $filterGroupId, configuratorSetId: $configuratorSetId, name: $name, description: $description, descriptionLong: $descriptionLong, added: $added, active: $active, pseudoSales: $pseudoSales, highlight: $highlight, keywords: $keywords, metaTitle: $metaTitle, changed: $changed, priceGroupActive: $priceGroupActive, lastStock: $lastStock, crossBundleLook: $crossBundleLook, notification: $notification, template: $template, mode: $mode, availableFrom: $availableFrom, availableTo: $availableTo, mainDetail: $mainDetail}';
  }
}

class MainDetail {
  int id;
  int articleId;
  int unitId;
  String number;
  String supplierNumber;
  int kind;
  String additionalText;
  bool active;
  int inStock;
  int stockMin;
  bool lastStock;
  dynamic weight;
  String width;
  String len;
  String height;
  String ean;
  String purchasePrice;
  int position;
  int minPurchase;
  int purchaseSteps;
  int maxPurchase;
  dynamic purchaseUnit;
  dynamic referenceUnit;
  String packUnit;
  bool shippingFree;
  dynamic releaseDate;
  String shippingTime;
  Attribute attribute;

  MainDetail({
    this.id,
    this.articleId,
    this.unitId,
    this.number,
    this.supplierNumber,
    this.kind,
    this.additionalText,
    this.active,
    this.inStock,
    this.stockMin,
    this.lastStock,
    this.weight,
    this.width,
    this.len,
    this.height,
    this.ean,
    this.purchasePrice,
    this.position,
    this.minPurchase,
    this.purchaseSteps,
    this.maxPurchase,
    this.purchaseUnit,
    this.referenceUnit,
    this.packUnit,
    this.shippingFree,
    this.releaseDate,
    this.shippingTime,
    this.attribute,
  });

  factory MainDetail.fromJson(Map<String, dynamic> json) => json == null
      ? null
      : new MainDetail(
          id: json["id"],
          articleId: json["articleId"],
          unitId: json["unitId"],
          number: json["number"],
          supplierNumber: json["supplierNumber"],
          kind: json["kind"],
          additionalText: json["additionalText"],
          active: json["active"],
          inStock: json["inStock"],
          stockMin: json["stockMin"],
          lastStock: json["lastStock"],
          weight: json["weight"],
          width: json["width"],
          len: json["len"],
          height: json["height"],
          ean: json["ean"],
          purchasePrice: json["purchasePrice"],
          position: json["position"],
          minPurchase: json["minPurchase"],
          purchaseSteps: json["purchaseSteps"],
          maxPurchase: json["maxPurchase"],
          purchaseUnit: json["purchaseUnit"],
          referenceUnit: json["referenceUnit"],
          packUnit: json["packUnit"],
          shippingFree: json["shippingFree"],
          releaseDate: json["releaseDate"],
          shippingTime: json["shippingTime"],
          attribute: Attribute.fromJson(json["attribute"]),
        );

  Map<String, dynamic> toJson() => {
        "id": id,
        "articleId": articleId,
        "unitId": unitId,
        "number": number,
        "supplierNumber": supplierNumber,
        "kind": kind,
        "additionalText": additionalText,
        "active": active,
        "inStock": inStock,
        "stockMin": stockMin,
        "lastStock": lastStock,
        "weight": weight,
        "width": width,
        "len": len,
        "height": height,
        "ean": ean,
        "purchasePrice": purchasePrice,
        "position": position,
        "minPurchase": minPurchase,
        "purchaseSteps": purchaseSteps,
        "maxPurchase": maxPurchase,
        "purchaseUnit": purchaseUnit,
        "referenceUnit": referenceUnit,
        "packUnit": packUnit,
        "shippingFree": shippingFree,
        "releaseDate": releaseDate,
        "shippingTime": shippingTime,
        "attribute": attribute.toJson(),
      };

  @override
  String toString() {
    return 'MainDetail{id: $id, articleId: $articleId, unitId: $unitId, number: $number, supplierNumber: $supplierNumber, kind: $kind, additionalText: $additionalText, active: $active, inStock: $inStock, stockMin: $stockMin, lastStock: $lastStock, weight: $weight, width: $width, len: $len, height: $height, ean: $ean, purchasePrice: $purchasePrice, position: $position, minPurchase: $minPurchase, purchaseSteps: $purchaseSteps, maxPurchase: $maxPurchase, purchaseUnit: $purchaseUnit, referenceUnit: $referenceUnit, packUnit: $packUnit, shippingFree: $shippingFree, releaseDate: $releaseDate, shippingTime: $shippingTime, attribute: $attribute}';
  }
}

class Attribute {
  int id;
  int articleId;
  int articleDetailId;
  dynamic attr1;
  dynamic attr2;
  String attr3;
  String attr4;
  String attr5;
  int attr6;
  dynamic attr7;
  dynamic attr8;
  dynamic attr9;
  dynamic attr10;
  dynamic attr11;
  dynamic attr12;
  dynamic attr13;
  dynamic attr14;
  dynamic attr15;
  int attr16;
  dynamic attr17;
  dynamic attr18;
  String dreiscSeoUrl;
  String dreiscSeoTitle;
  bool dreiscSeoTitleReplace;
  String dreiscSeoBreadcrumb;
  String dreiscCanonicalLink;
  String dreiscRobotsTag;
  dynamic swagIsTrustedShopsArticle;
  int swagTrustedRange;
  dynamic swagTrustedDuration;
  int pickwareIncomingStock;
  bool pickwareStockManagementDisabled;
  dynamic connectProductDescription;
  dynamic connectArticleShipping;
  int connectMappedCategory;
  dynamic connectRemoteUnit;
  String scha1Tabfield1;
  dynamic scha1Tabfield2;
  dynamic scha1Tabfield3;
  String scha1Tabfield4;
  dynamic scha1Tabfield5;
  dynamic scha1Tabfield6;
  dynamic scha1Tabfield7;
  dynamic scha1Tabfield8;
  dynamic scha1Tabfield9;
  dynamic scha1Tabfield10;
  dynamic connectReference;
  bool pickwareNotRelevantForPicking;
  dynamic attr20;
  dynamic attr19;
  int pickwarePhysicalStockForSale;
  int viisonCountryOfOrigin;
  dynamic viisonCustomsTariffNumber;
  String dreiscFacebookDescription;
  String dreiscTwitterDescription;
  dynamic connectPropertyGroup;
  int amazonpreis;
  dynamic viisonMoss;
  dynamic viisonOtherServiceParagraphOneOrTwo;
  dynamic viisonDatevCostCenter;
  bool pickwareStockInitialized;
  String pickwareStockInitializationTime;
  dynamic favori;
  dynamic dreiscFacebookImage;
  dynamic dreiscTwitterImage;
  dynamic pickwareWmsInternalPickingInstructions;

  Attribute({
    this.id,
    this.articleId,
    this.articleDetailId,
    this.attr1,
    this.attr2,
    this.attr3,
    this.attr4,
    this.attr5,
    this.attr6,
    this.attr7,
    this.attr8,
    this.attr9,
    this.attr10,
    this.attr11,
    this.attr12,
    this.attr13,
    this.attr14,
    this.attr15,
    this.attr16,
    this.attr17,
    this.attr18,
    this.dreiscSeoUrl,
    this.dreiscSeoTitle,
    this.dreiscSeoTitleReplace,
    this.dreiscSeoBreadcrumb,
    this.dreiscCanonicalLink,
    this.dreiscRobotsTag,
    this.swagIsTrustedShopsArticle,
    this.swagTrustedRange,
    this.swagTrustedDuration,
    this.pickwareIncomingStock,
    this.pickwareStockManagementDisabled,
    this.connectProductDescription,
    this.connectArticleShipping,
    this.connectMappedCategory,
    this.connectRemoteUnit,
    this.scha1Tabfield1,
    this.scha1Tabfield2,
    this.scha1Tabfield3,
    this.scha1Tabfield4,
    this.scha1Tabfield5,
    this.scha1Tabfield6,
    this.scha1Tabfield7,
    this.scha1Tabfield8,
    this.scha1Tabfield9,
    this.scha1Tabfield10,
    this.connectReference,
    this.pickwareNotRelevantForPicking,
    this.attr20,
    this.attr19,
    this.pickwarePhysicalStockForSale,
    this.viisonCountryOfOrigin,
    this.viisonCustomsTariffNumber,
    this.dreiscFacebookDescription,
    this.dreiscTwitterDescription,
    this.connectPropertyGroup,
    this.amazonpreis,
    this.viisonMoss,
    this.viisonOtherServiceParagraphOneOrTwo,
    this.viisonDatevCostCenter,
    this.pickwareStockInitialized,
    this.pickwareStockInitializationTime,
    this.favori,
    this.dreiscFacebookImage,
    this.dreiscTwitterImage,
    this.pickwareWmsInternalPickingInstructions,
  });

  factory Attribute.fromJson(Map<String, dynamic> json) => new Attribute(
        id: json["id"],
        articleId: json["articleId"],
        articleDetailId: json["articleDetailId"],
        attr1: json["attr1"],
        attr2: json["attr2"],
        attr3: json["attr3"],
        attr4: json["attr4"],
        attr5: json["attr5"],
        attr6: json["attr6"],
        attr7: json["attr7"],
        attr8: json["attr8"],
        attr9: json["attr9"],
        attr10: json["attr10"],
        attr11: json["attr11"],
        attr12: json["attr12"],
        attr13: json["attr13"],
        attr14: json["attr14"],
        attr15: json["attr15"],
        attr16: json["attr16"],
        attr17: json["attr17"],
        attr18: json["attr18"],
        dreiscSeoUrl: json["dreiscSeoUrl"],
        dreiscSeoTitle: json["dreiscSeoTitle"],
        dreiscSeoTitleReplace: json["dreiscSeoTitleReplace"],
        dreiscSeoBreadcrumb: json["dreiscSeoBreadcrumb"],
        dreiscCanonicalLink: json["dreiscCanonicalLink"],
        dreiscRobotsTag: json["dreiscRobotsTag"],
        swagIsTrustedShopsArticle: json["swagIsTrustedShopsArticle"],
        swagTrustedRange: json["swagTrustedRange"],
        swagTrustedDuration: json["swagTrustedDuration"],
        pickwareIncomingStock: json["pickwareIncomingStock"],
        pickwareStockManagementDisabled: json["pickwareStockManagementDisabled"],
        connectProductDescription: json["connectProductDescription"],
        connectArticleShipping: json["connectArticleShipping"],
        connectMappedCategory: json["connectMappedCategory"],
        connectRemoteUnit: json["connectRemoteUnit"],
        scha1Tabfield1: json["scha1Tabfield1"],
        scha1Tabfield2: json["scha1Tabfield2"],
        scha1Tabfield3: json["scha1Tabfield3"],
        scha1Tabfield4: json["scha1Tabfield4"],
        scha1Tabfield5: json["scha1Tabfield5"],
        scha1Tabfield6: json["scha1Tabfield6"],
        scha1Tabfield7: json["scha1Tabfield7"],
        scha1Tabfield8: json["scha1Tabfield8"],
        scha1Tabfield9: json["scha1Tabfield9"],
        scha1Tabfield10: json["scha1Tabfield10"],
        connectReference: json["connectReference"],
        pickwareNotRelevantForPicking: json["pickwareNotRelevantForPicking"],
        attr20: json["attr20"],
        attr19: json["attr19"],
        pickwarePhysicalStockForSale: json["pickwarePhysicalStockForSale"],
        viisonCountryOfOrigin: json["viisonCountryOfOrigin"],
        viisonCustomsTariffNumber: json["viisonCustomsTariffNumber"],
        dreiscFacebookDescription: json["dreiscFacebookDescription"],
        dreiscTwitterDescription: json["dreiscTwitterDescription"],
        connectPropertyGroup: json["connectPropertyGroup"],
        amazonpreis: json["amazonpreis"],
        viisonMoss: json["viisonMoss"],
        viisonOtherServiceParagraphOneOrTwo: json["viisonOtherServiceParagraphOneOrTwo"],
        viisonDatevCostCenter: json["viisonDatevCostCenter"],
        pickwareStockInitialized: json["pickwareStockInitialized"],
        pickwareStockInitializationTime: json["pickwareStockInitializationTime"],
        favori: json["favori"],
        dreiscFacebookImage: json["dreiscFacebookImage"],
        dreiscTwitterImage: json["dreiscTwitterImage"],
        pickwareWmsInternalPickingInstructions: json["pickwareWmsInternalPickingInstructions"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "articleId": articleId,
        "articleDetailId": articleDetailId,
        "attr1": attr1,
        "attr2": attr2,
        "attr3": attr3,
        "attr4": attr4,
        "attr5": attr5,
        "attr6": attr6,
        "attr7": attr7,
        "attr8": attr8,
        "attr9": attr9,
        "attr10": attr10,
        "attr11": attr11,
        "attr12": attr12,
        "attr13": attr13,
        "attr14": attr14,
        "attr15": attr15,
        "attr16": attr16,
        "attr17": attr17,
        "attr18": attr18,
        "dreiscSeoUrl": dreiscSeoUrl,
        "dreiscSeoTitle": dreiscSeoTitle,
        "dreiscSeoTitleReplace": dreiscSeoTitleReplace,
        "dreiscSeoBreadcrumb": dreiscSeoBreadcrumb,
        "dreiscCanonicalLink": dreiscCanonicalLink,
        "dreiscRobotsTag": dreiscRobotsTag,
        "swagIsTrustedShopsArticle": swagIsTrustedShopsArticle,
        "swagTrustedRange": swagTrustedRange,
        "swagTrustedDuration": swagTrustedDuration,
        "pickwareIncomingStock": pickwareIncomingStock,
        "pickwareStockManagementDisabled": pickwareStockManagementDisabled,
        "connectProductDescription": connectProductDescription,
        "connectArticleShipping": connectArticleShipping,
        "connectMappedCategory": connectMappedCategory,
        "connectRemoteUnit": connectRemoteUnit,
        "scha1Tabfield1": scha1Tabfield1,
        "scha1Tabfield2": scha1Tabfield2,
        "scha1Tabfield3": scha1Tabfield3,
        "scha1Tabfield4": scha1Tabfield4,
        "scha1Tabfield5": scha1Tabfield5,
        "scha1Tabfield6": scha1Tabfield6,
        "scha1Tabfield7": scha1Tabfield7,
        "scha1Tabfield8": scha1Tabfield8,
        "scha1Tabfield9": scha1Tabfield9,
        "scha1Tabfield10": scha1Tabfield10,
        "connectReference": connectReference,
        "pickwareNotRelevantForPicking": pickwareNotRelevantForPicking,
        "attr20": attr20,
        "attr19": attr19,
        "pickwarePhysicalStockForSale": pickwarePhysicalStockForSale,
        "viisonCountryOfOrigin": viisonCountryOfOrigin,
        "viisonCustomsTariffNumber": viisonCustomsTariffNumber,
        "dreiscFacebookDescription": dreiscFacebookDescription,
        "dreiscTwitterDescription": dreiscTwitterDescription,
        "connectPropertyGroup": connectPropertyGroup,
        "amazonpreis": amazonpreis,
        "viisonMoss": viisonMoss,
        "viisonOtherServiceParagraphOneOrTwo": viisonOtherServiceParagraphOneOrTwo,
        "viisonDatevCostCenter": viisonDatevCostCenter,
        "pickwareStockInitialized": pickwareStockInitialized,
        "pickwareStockInitializationTime": pickwareStockInitializationTime,
        "favori": favori,
        "dreiscFacebookImage": dreiscFacebookImage,
        "dreiscTwitterImage": dreiscTwitterImage,
        "pickwareWmsInternalPickingInstructions": pickwareWmsInternalPickingInstructions,
      };

  @override
  String toString() {
    return 'Attribute{id: $id, articleId: $articleId, articleDetailId: $articleDetailId, attr1: $attr1, attr2: $attr2, attr3: $attr3, attr4: $attr4, attr5: $attr5, attr6: $attr6, attr7: $attr7, attr8: $attr8, attr9: $attr9, attr10: $attr10, attr11: $attr11, attr12: $attr12, attr13: $attr13, attr14: $attr14, attr15: $attr15, attr16: $attr16, attr17: $attr17, attr18: $attr18, dreiscSeoUrl: $dreiscSeoUrl, dreiscSeoTitle: $dreiscSeoTitle, dreiscSeoTitleReplace: $dreiscSeoTitleReplace, dreiscSeoBreadcrumb: $dreiscSeoBreadcrumb, dreiscCanonicalLink: $dreiscCanonicalLink, dreiscRobotsTag: $dreiscRobotsTag, swagIsTrustedShopsArticle: $swagIsTrustedShopsArticle, swagTrustedRange: $swagTrustedRange, swagTrustedDuration: $swagTrustedDuration, pickwareIncomingStock: $pickwareIncomingStock, pickwareStockManagementDisabled: $pickwareStockManagementDisabled, connectProductDescription: $connectProductDescription, connectArticleShipping: $connectArticleShipping, connectMappedCategory: $connectMappedCategory, connectRemoteUnit: $connectRemoteUnit, scha1Tabfield1: $scha1Tabfield1, scha1Tabfield2: $scha1Tabfield2, scha1Tabfield3: $scha1Tabfield3, scha1Tabfield4: $scha1Tabfield4, scha1Tabfield5: $scha1Tabfield5, scha1Tabfield6: $scha1Tabfield6, scha1Tabfield7: $scha1Tabfield7, scha1Tabfield8: $scha1Tabfield8, scha1Tabfield9: $scha1Tabfield9, scha1Tabfield10: $scha1Tabfield10, connectReference: $connectReference, pickwareNotRelevantForPicking: $pickwareNotRelevantForPicking, attr20: $attr20, attr19: $attr19, pickwarePhysicalStockForSale: $pickwarePhysicalStockForSale, viisonCountryOfOrigin: $viisonCountryOfOrigin, viisonCustomsTariffNumber: $viisonCustomsTariffNumber, dreiscFacebookDescription: $dreiscFacebookDescription, dreiscTwitterDescription: $dreiscTwitterDescription, connectPropertyGroup: $connectPropertyGroup, amazonpreis: $amazonpreis, viisonMoss: $viisonMoss, viisonOtherServiceParagraphOneOrTwo: $viisonOtherServiceParagraphOneOrTwo, viisonDatevCostCenter: $viisonDatevCostCenter, pickwareStockInitialized: $pickwareStockInitialized, pickwareStockInitializationTime: $pickwareStockInitializationTime, favori: $favori, dreiscFacebookImage: $dreiscFacebookImage, dreiscTwitterImage: $dreiscTwitterImage, pickwareWmsInternalPickingInstructions: $pickwareWmsInternalPickingInstructions}';
  }
}
