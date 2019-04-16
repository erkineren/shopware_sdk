import 'dart:convert';

import 'package:shopware_sdk/src/entities/api_response_entity.dart';

Category categoryFromJson(String str) {
  final jsonData = json.decode(str);
  return Category.fromJson(jsonData);
}

String categoryToJson(Category data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class Category extends BaseEntity {
  String sortingIds;
  bool hideSortings;
  String facetIds;
  int id;
  int parentId;
  dynamic streamId;
  String name;
  int position;
  String metaTitle;
  String metaKeywords;
  String metaDescription;
  String cmsHeadline;
  String cmsText;
  bool active;
  dynamic template;
  String productBoxLayout;
  bool blog;
  dynamic path;
  String categoryExternal;
  String externalTarget;
  bool hideFilter;
  bool hideTop;
  String changed;
  String added;
  dynamic mediaId;
  Attribute attribute;
  List<Emotion> emotions;
  dynamic media;
  List<dynamic> customerGroups;
  String childrenCount;
  String articleCount;

  Category({
    this.sortingIds,
    this.hideSortings,
    this.facetIds,
    this.id,
    this.parentId,
    this.streamId,
    this.name,
    this.position,
    this.metaTitle,
    this.metaKeywords,
    this.metaDescription,
    this.cmsHeadline,
    this.cmsText,
    this.active,
    this.template,
    this.productBoxLayout,
    this.blog,
    this.path,
    this.categoryExternal,
    this.externalTarget,
    this.hideFilter,
    this.hideTop,
    this.changed,
    this.added,
    this.mediaId,
    this.attribute,
    this.emotions,
    this.media,
    this.customerGroups,
    this.childrenCount,
    this.articleCount,
  });

  factory Category.fromJson(Map<String, dynamic> json) => json == null
      ? null
      : new Category(
          sortingIds: json["sortingIds"],
          hideSortings: json["hideSortings"],
          facetIds: json["facetIds"],
          id: json["id"],
          parentId: json["parentId"],
          streamId: json["streamId"],
          name: json["name"],
          position: json["position"],
          metaTitle: json["metaTitle"],
          metaKeywords: json["metaKeywords"],
          metaDescription: json["metaDescription"],
          cmsHeadline: json["cmsHeadline"],
          cmsText: json["cmsText"],
          active: json["active"],
          template: json["template"],
          productBoxLayout: json["productBoxLayout"],
          blog: json["blog"],
          path: json["path"],
          categoryExternal: json["external"],
          externalTarget: json["externalTarget"],
          hideFilter: json["hideFilter"],
          hideTop: json["hideTop"],
          changed: json["changed"],
          added: json["added"],
          mediaId: json["mediaId"],
          attribute: Attribute.fromJson(json["attribute"]),
          emotions: json["emotions"] == null
              ? null
              : new List<Emotion>.from(
                  json["emotions"].map((x) => Emotion.fromJson(x))),
          media: json["media"],
          customerGroups: json["customerGroups"] == null
              ? null
              : new List<dynamic>.from(json["customerGroups"].map((x) => x)),
          childrenCount: json["childrenCount"],
          articleCount: json["articleCount"],
        );

  Map<String, dynamic> toJson() => {
        "sortingIds": sortingIds,
        "hideSortings": hideSortings,
        "facetIds": facetIds,
        "id": id,
        "parentId": parentId,
        "streamId": streamId,
        "name": name,
        "position": position,
        "metaTitle": metaTitle,
        "metaKeywords": metaKeywords,
        "metaDescription": metaDescription,
        "cmsHeadline": cmsHeadline,
        "cmsText": cmsText,
        "active": active,
        "template": template,
        "productBoxLayout": productBoxLayout,
        "blog": blog,
        "path": path,
        "external": categoryExternal,
        "externalTarget": externalTarget,
        "hideFilter": hideFilter,
        "hideTop": hideTop,
        "changed": changed,
        "added": added,
        "mediaId": mediaId,
        "attribute": attribute.toJson(),
        "emotions": new List<dynamic>.from(emotions.map((x) => x.toJson())),
        "media": media,
        "customerGroups": new List<dynamic>.from(customerGroups.map((x) => x)),
        "childrenCount": childrenCount,
        "articleCount": articleCount,
      };

  @override
  String toString() {
    return 'Category{sortingIds: $sortingIds, hideSortings: $hideSortings, facetIds: $facetIds, id: $id, parentId: $parentId, streamId: $streamId, name: $name, position: $position, metaTitle: $metaTitle, metaKeywords: $metaKeywords, metaDescription: $metaDescription, cmsHeadline: $cmsHeadline, cmsText: $cmsText, active: $active, template: $template, productBoxLayout: $productBoxLayout, blog: $blog, path: $path, categoryExternal: $categoryExternal, externalTarget: $externalTarget, hideFilter: $hideFilter, hideTop: $hideTop, changed: $changed, added: $added, mediaId: $mediaId, attribute: $attribute, emotions: $emotions, media: $media, customerGroups: $customerGroups, childrenCount: $childrenCount, articleCount: $articleCount}';
  }
}

class Attribute {
  int id;
  int categoryId;
  dynamic attribute1;
  dynamic attribute2;
  dynamic attribute3;
  dynamic attribute4;
  dynamic attribute5;
  dynamic attribute6;
  String dreiscSeoUrl;
  String dreiscSeoTitle;
  bool dreiscSeoTitleReplace;
  String dreiscSeoBreadcrumb;
  String dreiscCanonicalLink;
  String dreiscRobotsTag;
  dynamic bibuSprachlink;
  dynamic connectImportMapping;
  dynamic connectExportMapping;
  dynamic connectImported;
  dynamic connectImportedCategory;
  String dreiscFacebookDescription;
  String dreiscTwitterDescription;
  String dreiscFacebookImage;
  String dreiscTwitterImage;
  dynamic dreiscCategoryLevel;
  String erkinSeoWordsDescription;

  Attribute({
    this.id,
    this.categoryId,
    this.attribute1,
    this.attribute2,
    this.attribute3,
    this.attribute4,
    this.attribute5,
    this.attribute6,
    this.dreiscSeoUrl,
    this.dreiscSeoTitle,
    this.dreiscSeoTitleReplace,
    this.dreiscSeoBreadcrumb,
    this.dreiscCanonicalLink,
    this.dreiscRobotsTag,
    this.bibuSprachlink,
    this.connectImportMapping,
    this.connectExportMapping,
    this.connectImported,
    this.connectImportedCategory,
    this.dreiscFacebookDescription,
    this.dreiscTwitterDescription,
    this.dreiscFacebookImage,
    this.dreiscTwitterImage,
    this.dreiscCategoryLevel,
    this.erkinSeoWordsDescription,
  });

  factory Attribute.fromJson(Map<String, dynamic> json) => json == null
      ? null
      : new Attribute(
          id: json["id"],
          categoryId: json["categoryId"],
          attribute1: json["attribute1"],
          attribute2: json["attribute2"],
          attribute3: json["attribute3"],
          attribute4: json["attribute4"],
          attribute5: json["attribute5"],
          attribute6: json["attribute6"],
          dreiscSeoUrl: json["dreiscSeoUrl"],
          dreiscSeoTitle: json["dreiscSeoTitle"],
          dreiscSeoTitleReplace: json["dreiscSeoTitleReplace"],
          dreiscSeoBreadcrumb: json["dreiscSeoBreadcrumb"],
          dreiscCanonicalLink: json["dreiscCanonicalLink"],
          dreiscRobotsTag: json["dreiscRobotsTag"],
          bibuSprachlink: json["bibuSprachlink"],
          connectImportMapping: json["connectImportMapping"],
          connectExportMapping: json["connectExportMapping"],
          connectImported: json["connectImported"],
          connectImportedCategory: json["connectImportedCategory"],
          dreiscFacebookDescription: json["dreiscFacebookDescription"],
          dreiscTwitterDescription: json["dreiscTwitterDescription"],
          dreiscFacebookImage: json["dreiscFacebookImage"],
          dreiscTwitterImage: json["dreiscTwitterImage"],
          dreiscCategoryLevel: json["dreiscCategoryLevel"],
          erkinSeoWordsDescription: json["erkinSeoWordsDescription"],
        );

  Map<String, dynamic> toJson() => {
        "id": id,
        "categoryId": categoryId,
        "attribute1": attribute1,
        "attribute2": attribute2,
        "attribute3": attribute3,
        "attribute4": attribute4,
        "attribute5": attribute5,
        "attribute6": attribute6,
        "dreiscSeoUrl": dreiscSeoUrl,
        "dreiscSeoTitle": dreiscSeoTitle,
        "dreiscSeoTitleReplace": dreiscSeoTitleReplace,
        "dreiscSeoBreadcrumb": dreiscSeoBreadcrumb,
        "dreiscCanonicalLink": dreiscCanonicalLink,
        "dreiscRobotsTag": dreiscRobotsTag,
        "bibuSprachlink": bibuSprachlink,
        "connectImportMapping": connectImportMapping,
        "connectExportMapping": connectExportMapping,
        "connectImported": connectImported,
        "connectImportedCategory": connectImportedCategory,
        "dreiscFacebookDescription": dreiscFacebookDescription,
        "dreiscTwitterDescription": dreiscTwitterDescription,
        "dreiscFacebookImage": dreiscFacebookImage,
        "dreiscTwitterImage": dreiscTwitterImage,
        "dreiscCategoryLevel": dreiscCategoryLevel,
        "erkinSeoWordsDescription": erkinSeoWordsDescription,
      };
}

class Emotion {
  bool showListing;
  int templateId;
  int id;
  dynamic parentId;
  int active;
  String name;
  int userId;
  int position;
  String device;
  int fullscreen;
  dynamic validFrom;
  int isLandingPage;
  String seoTitle;
  String seoKeywords;
  String seoDescription;
  dynamic validTo;
  String createDate;
  String modified;
  int rows;
  int cols;
  int cellSpacing;
  int cellHeight;
  int articleHeight;
  String mode;
  dynamic previewId;
  dynamic previewSecret;
  dynamic customerStreamIds;
  dynamic replacement;

  Emotion({
    this.showListing,
    this.templateId,
    this.id,
    this.parentId,
    this.active,
    this.name,
    this.userId,
    this.position,
    this.device,
    this.fullscreen,
    this.validFrom,
    this.isLandingPage,
    this.seoTitle,
    this.seoKeywords,
    this.seoDescription,
    this.validTo,
    this.createDate,
    this.modified,
    this.rows,
    this.cols,
    this.cellSpacing,
    this.cellHeight,
    this.articleHeight,
    this.mode,
    this.previewId,
    this.previewSecret,
    this.customerStreamIds,
    this.replacement,
  });

  factory Emotion.fromJson(Map<String, dynamic> json) => json == null
      ? null
      : new Emotion(
          showListing: json["showListing"],
          templateId: json["templateId"],
          id: json["id"],
          parentId: json["parentId"],
          active: json["active"],
          name: json["name"],
          userId: json["userId"],
          position: json["position"],
          device: json["device"],
          fullscreen: json["fullscreen"],
          validFrom: json["validFrom"],
          isLandingPage: json["isLandingPage"],
          seoTitle: json["seoTitle"],
          seoKeywords: json["seoKeywords"],
          seoDescription: json["seoDescription"],
          validTo: json["validTo"],
          createDate: json["createDate"],
          modified: json["modified"],
          rows: json["rows"],
          cols: json["cols"],
          cellSpacing: json["cellSpacing"],
          cellHeight: json["cellHeight"],
          articleHeight: json["articleHeight"],
          mode: json["mode"],
          previewId: json["previewId"],
          previewSecret: json["previewSecret"],
          customerStreamIds: json["customerStreamIds"],
          replacement: json["replacement"],
        );

  Map<String, dynamic> toJson() => {
        "showListing": showListing,
        "templateId": templateId,
        "id": id,
        "parentId": parentId,
        "active": active,
        "name": name,
        "userId": userId,
        "position": position,
        "device": device,
        "fullscreen": fullscreen,
        "validFrom": validFrom,
        "isLandingPage": isLandingPage,
        "seoTitle": seoTitle,
        "seoKeywords": seoKeywords,
        "seoDescription": seoDescription,
        "validTo": validTo,
        "createDate": createDate,
        "modified": modified,
        "rows": rows,
        "cols": cols,
        "cellSpacing": cellSpacing,
        "cellHeight": cellHeight,
        "articleHeight": articleHeight,
        "mode": mode,
        "previewId": previewId,
        "previewSecret": previewSecret,
        "customerStreamIds": customerStreamIds,
        "replacement": replacement,
      };
}
