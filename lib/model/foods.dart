import 'package:bmi_calc/model/foods.dart';

class Foods {
  var totalHits;
  var currentPage;
  var totalPages;
  List<dynamic>? pageList;
  FoodSearchCriteria? foodSearchCriteria;
  List<Food>? foods;
  Aggregations? aggregations;

  Foods(
      {this.totalHits,
        this.currentPage,
        this.totalPages,
        this.pageList,
        this.foodSearchCriteria,
        this.foods,
        this.aggregations}
      );

  Foods.fromJson(Map<String, dynamic> json) {
    totalHits = json['totalHits'];
    currentPage = json['currentPage'];
    totalPages = json['totalPages'];
    pageList = json['pageList'];
    foodSearchCriteria = json['foodSearchCriteria'] != null ? new FoodSearchCriteria.fromJson(json['foodSearchCriteria']) : null;
    if (json['foods'] != null) {
      foods = <Food>[];
      json['foods'].forEach((v) { foods!.add(new Food.fromJson(v)); });
    }
    aggregations = json['aggregations'] != null ? new Aggregations.fromJson(json['aggregations']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalHits'] = this.totalHits;
    data['currentPage'] = this.currentPage;
    data['totalPages'] = this.totalPages;
    data['pageList'] = this.pageList;
    if (this.foodSearchCriteria != null) {
      data['foodSearchCriteria'] = this.foodSearchCriteria!.toJson();
    }
    if (this.foods != null) {
      data['foods'] = this.foods!.map((v) => v.toJson()).toList();
    }
    if (this.aggregations != null) {
      data['aggregations'] = this.aggregations!.toJson();
    }
    return data;
  }
}

class FoodSearchCriteria {
  var query;
  var generalSearchInput;
  var pageNumber;
  var numberOfResultsPerPage;
  var pageSize;
  bool? requireAllWords;

  FoodSearchCriteria({this.query, this.generalSearchInput, this.pageNumber, this.numberOfResultsPerPage, this.pageSize, this.requireAllWords});

  FoodSearchCriteria.fromJson(Map<String, dynamic> json) {
    query = json['query'];
    generalSearchInput = json['generalSearchInput'];
    pageNumber = json['pageNumber'];
    numberOfResultsPerPage = json['numberOfResultsPerPage'];
    pageSize = json['pageSize'];
    requireAllWords = json['requireAllWords'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['query'] = this.query;
    data['generalSearchInput'] = this.generalSearchInput;
    data['pageNumber'] = this.pageNumber;
    data['numberOfResultsPerPage'] = this.numberOfResultsPerPage;
    data['pageSize'] = this.pageSize;
    data['requireAllWords'] = this.requireAllWords;
    return data;
  }
}

class Food {
  var fdcId;
  var description;
  var lowercaseDescription;
  var dataType;
  var gtinUpc;
  var publishedDate;
  var brandOwner;
  var brandName;
  var ingredients;
  var marketCountry;
  var foodCategory;
  var modifiedDate;
  var dataSource;
  var packageWeight;
  var servingSizeUnit;
  var servingSize;
  var allHighlightFields;
  var score;
  List<FoodNutrients>? foodNutrients;
  List<Null>? finalFoodInputFoods;
  List<Null>? foodMeasures;
  List<Null>? foodAttributes;
  List<Null>? foodAttributeTypes;
  List<Null>? foodVersionIds;

  Food({this.fdcId, this.description, this.lowercaseDescription, this.dataType, this.gtinUpc, this.publishedDate, this.brandOwner, this.brandName, this.ingredients, this.marketCountry, this.foodCategory, this.modifiedDate, this.dataSource, this.packageWeight, this.servingSizeUnit, this.servingSize, this.allHighlightFields, this.score, this.foodNutrients, this.finalFoodInputFoods, this.foodMeasures, this.foodAttributes, this.foodAttributeTypes, this.foodVersionIds});

  Food.fromJson(Map<String, dynamic> json) {
    fdcId = json['fdcId'];
    description = json['description'];
    lowercaseDescription = json['lowercaseDescription'];
    dataType = json['dataType'];
    gtinUpc = json['gtinUpc'];
    publishedDate = json['publishedDate'];
    brandOwner = json['brandOwner'];
    brandName = json['brandName'];
    ingredients = json['ingredients'];
    marketCountry = json['marketCountry'];
    foodCategory = json['foodCategory'];
    modifiedDate = json['modifiedDate'];
    dataSource = json['dataSource'];
    packageWeight = json['packageWeight'];
    servingSizeUnit = json['servingSizeUnit'];
    servingSize = json['servingSize'];
    allHighlightFields = json['allHighlightFields'];
    score = json['score'];
    if (json['foodNutrients'] != null) {
      foodNutrients = <FoodNutrients>[];
      json['foodNutrients'].forEach((v) { foodNutrients!.add(new FoodNutrients.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fdcId'] = this.fdcId;
    data['description'] = this.description;
    data['lowercaseDescription'] = this.lowercaseDescription;
    data['dataType'] = this.dataType;
    data['gtinUpc'] = this.gtinUpc;
    data['publishedDate'] = this.publishedDate;
    data['brandOwner'] = this.brandOwner;
    data['brandName'] = this.brandName;
    data['ingredients'] = this.ingredients;
    data['marketCountry'] = this.marketCountry;
    data['foodCategory'] = this.foodCategory;
    data['modifiedDate'] = this.modifiedDate;
    data['dataSource'] = this.dataSource;
    data['packageWeight'] = this.packageWeight;
    data['servingSizeUnit'] = this.servingSizeUnit;
    data['servingSize'] = this.servingSize;
    data['allHighlightFields'] = this.allHighlightFields;
    data['score'] = this.score;
    if (this.foodNutrients != null) {
      data['foodNutrients'] = this.foodNutrients!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FoodNutrients {
  var nutrientId;
  var nutrientName;
  var nutrientNumber;
  var unitName;
  var derivationCode;
  var derivationDescription;
  var derivationId;
  var value;
  var foodNutrientSourceId;
  var foodNutrientSourceCode;
  var foodNutrientSourceDescription;
  var rank;
  var indentLevel;
  var foodNutrientId;
  var percentDailyValue;

  FoodNutrients({this.nutrientId, this.nutrientName, this.nutrientNumber, this.unitName, this.derivationCode, this.derivationDescription, this.derivationId, this.value, this.foodNutrientSourceId, this.foodNutrientSourceCode, this.foodNutrientSourceDescription, this.rank, this.indentLevel, this.foodNutrientId, this.percentDailyValue});

  FoodNutrients.fromJson(Map<String, dynamic> json) {
    nutrientId = json['nutrientId'];
    nutrientName = json['nutrientName'];
    nutrientNumber = json['nutrientNumber'];
    unitName = json['unitName'];
    derivationCode = json['derivationCode'];
    derivationDescription = json['derivationDescription'];
    derivationId = json['derivationId'];
    value = json['value'];
    foodNutrientSourceId = json['foodNutrientSourceId'];
    foodNutrientSourceCode = json['foodNutrientSourceCode'];
    foodNutrientSourceDescription = json['foodNutrientSourceDescription'];
    rank = json['rank'];
    indentLevel = json['indentLevel'];
    foodNutrientId = json['foodNutrientId'];
    percentDailyValue = json['percentDailyValue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nutrientId'] = this.nutrientId;
    data['nutrientName'] = this.nutrientName;
    data['nutrientNumber'] = this.nutrientNumber;
    data['unitName'] = this.unitName;
    data['derivationCode'] = this.derivationCode;
    data['derivationDescription'] = this.derivationDescription;
    data['derivationId'] = this.derivationId;
    data['value'] = this.value;
    data['foodNutrientSourceId'] = this.foodNutrientSourceId;
    data['foodNutrientSourceCode'] = this.foodNutrientSourceCode;
    data['foodNutrientSourceDescription'] = this.foodNutrientSourceDescription;
    data['rank'] = this.rank;
    data['indentLevel'] = this.indentLevel;
    data['foodNutrientId'] = this.foodNutrientId;
    data['percentDailyValue'] = this.percentDailyValue;
    return data;
  }
}

class Aggregations {
  DataType? dataType;


  Aggregations({this.dataType});

  Aggregations.fromJson(Map<String, dynamic> json) {
    dataType = json['dataType'] != null ? new DataType.fromJson(json['dataType']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dataType != null) {
      data['dataType'] = this.dataType!.toJson();
    }
    return data;
  }
}

class DataType {
  var branded;
  var sRLegacy;
  var surveyFNDDS;

  DataType({this.branded, this.sRLegacy, this.surveyFNDDS});

  DataType.fromJson(Map<String, dynamic> json) {
    branded = json['Branded'];
    sRLegacy = json['SR Legacy'];
    surveyFNDDS = json['Survey (FNDDS)'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Branded'] = this.branded;
    data['SR Legacy'] = this.sRLegacy;
    data['Survey (FNDDS)'] = this.surveyFNDDS;
    return data;
  }
}

class Nutrients {


Nutrients.fromJson(Map<String, dynamic> json) {
}

Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  return data;
}
}
