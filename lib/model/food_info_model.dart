import 'package:bmi_calc/model/food_info_model.dart';

import 'food_info_model.dart';

class FoodDetails {
  WweiaFoodCategory? wweiaFoodCategory;
  String? description;
  List<FoodAttributes>? foodAttributes;
  String? foodCode;
  List<InputFoods>? inputFoods;
  String? startDate;
  String? endDate;
  List<Null>? foodComponents;
  String? foodClass;
  String? fdcId;
  String? publicationDate;
  List<FoodNutrients>? foodNutrients;
  List<FoodPortions>? foodPortions;
  String? dataType;

  FoodDetails(
      {this.wweiaFoodCategory,
        this.description,
        this.foodAttributes,
        this.foodCode,
        this.inputFoods,
        this.startDate,
        this.endDate,
        this.foodComponents,
        this.foodClass,
        this.fdcId,
        this.publicationDate,
        this.foodNutrients,
        this.foodPortions,
        this.dataType});

  FoodDetails.fromJson(Map<String, dynamic> json) {
    wweiaFoodCategory = json['wweiaFoodCategory'] != null
        ? new WweiaFoodCategory.fromJson(json['wweiaFoodCategory'])
        : null;
    description = json['description'].toString();
    if (json['foodAttributes'] != null) {
      foodAttributes = <FoodAttributes>[];
      json['foodAttributes'].forEach((v) {
        foodAttributes!.add(new FoodAttributes.fromJson(v));
      });
    }
    foodCode = json['foodCode'];
    if (json['inputFoods'] != null) {
      inputFoods = <InputFoods>[];
      json['inputFoods'].forEach((v) {
        inputFoods!.add(new InputFoods.fromJson(v));
      });
    }
    startDate = json['startDate'].toString();
    endDate = json['endDate'].toString();
    if (json['foodComponents'] != null) {
      foodComponents = [];
      json['foodComponents'].forEach((v) {
        foodComponents!.add(v);
      });
    }
    foodClass = json['foodClass'].toString();
    fdcId = json['fdcId'].toString();
    publicationDate = json['publicationDate'];
    if (json['foodNutrients'] != null) {
      foodNutrients = <FoodNutrients>[];
      json['foodNutrients'].forEach((v) {
        foodNutrients!.add(new FoodNutrients.fromJson(v));
      });
    }
    if (json['foodPortions'] != null) {
      foodPortions = <FoodPortions>[];
      json['foodPortions'].forEach((v) {
        foodPortions!.add(new FoodPortions.fromJson(v));
      });
    }
    dataType = json['dataType'];
  }

}

class WweiaFoodCategory {
  int? wweiaFoodCategoryCode;
  String? wweiaFoodCategoryDescription;

  WweiaFoodCategory(
      {this.wweiaFoodCategoryCode, this.wweiaFoodCategoryDescription});

  WweiaFoodCategory.fromJson(Map<String, dynamic> json) {
    wweiaFoodCategoryCode = json['wweiaFoodCategoryCode'];
    wweiaFoodCategoryDescription = json['wweiaFoodCategoryDescription'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['wweiaFoodCategoryCode'] = this.wweiaFoodCategoryCode;
    data['wweiaFoodCategoryDescription'] = this.wweiaFoodCategoryDescription;
    return data;
  }
}

class FoodAttributes {
  int? id;
  String? value;
  String? name;
  FoodAttributeType? foodAttributeType;
  String? sequenceNumber;

  FoodAttributes(
      {this.id,
        this.value,
        this.name,
        this.foodAttributeType,
        this.sequenceNumber});

  FoodAttributes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    value = json['value'];
    name = json['name'];
    foodAttributeType = json['foodAttributeType'] != null
        ? new FoodAttributeType.fromJson(json['foodAttributeType'])
        : null;
    sequenceNumber = json['sequenceNumber'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['value'] = this.value;
    data['name'] = this.name;
    if (this.foodAttributeType != null) {
      data['foodAttributeType'] = this.foodAttributeType!.toJson();
    }
    data['sequenceNumber'] = this.sequenceNumber;
    return data;
  }
}

class FoodAttributeType {
  int? id;
  String? name;
  String? description;

  FoodAttributeType({this.id, this.name, this.description});

  FoodAttributeType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'].toString();
    description = json['description'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    return data;
  }
}

class InputFoods {
  int? id;
  String? foodDescription;
  String? ingredientDescription;
  String? ingredientWeight;
  String? portionCode;
  String? portionDescription;
  String? sequenceNumber;
  String? ingredientCode;
  String? unit;
  String? amount;

  InputFoods(
      {this.id,
        this.foodDescription,
        this.ingredientDescription,
        this.ingredientWeight,
        this.portionCode,
        this.portionDescription,
        this.sequenceNumber,
        this.ingredientCode,
        this.unit,
        this.amount});

  InputFoods.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    foodDescription = json['foodDescription'];
    ingredientDescription = json['ingredientDescription'];
    ingredientWeight = json['ingredientWeight'].toString();
    portionCode = json['portionCode'];
    portionDescription = json['portionDescription'];
    sequenceNumber = json['sequenceNumber'].toString();
    ingredientCode = json['ingredientCode'].toString();
    unit = json['unit'];
    amount = json['amount'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['foodDescription'] = this.foodDescription;
    data['ingredientDescription'] = this.ingredientDescription;
    data['ingredientWeight'] = this.ingredientWeight;
    data['portionCode'] = this.portionCode;
    data['portionDescription'] = this.portionDescription;
    data['sequenceNumber'] = this.sequenceNumber;
    data['ingredientCode'] = this.ingredientCode;
    data['unit'] = this.unit;
    data['amount'] = this.amount;
    return data;
  }
}

class FoodNutrients {
  Nutrient? nutrient;
  String? type;
  int? id;
  String? amount;

  FoodNutrients({this.nutrient, this.type, this.id, this.amount});

  FoodNutrients.fromJson(Map<String, dynamic> json) {
    nutrient = json['nutrient'] != null
        ? new Nutrient.fromJson(json['nutrient'])
        : null;
    type = json['type'].toString();
    id = json['id'];
    amount = json['amount'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.nutrient != null) {
      data['nutrient'] = this.nutrient!.toJson();
    }
    data['type'] = this.type;
    data['id'] = this.id;
    data['amount'] = this.amount;
    return data;
  }
}

class Nutrient {
  int? id;
  String? number;
  String? name;
  String? rank;
  String? unitName;

  Nutrient({this.id, this.number, this.name, this.rank, this.unitName});

  Nutrient.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    number = json['number'].toString();
    name = json['name'].toString();
    rank = json['rank'].toString();
    unitName = json['unitName'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['number'] = this.number;
    data['name'] = this.name;
    data['rank'] = this.rank;
    data['unitName'] = this.unitName;
    return data;
  }
}

class FoodPortions {
  int? id;
  String? portionDescription;
  String? gramWeight;
  String? sequenceNumber;
  String? modifier;
  MeasureUnit? measureUnit;

  FoodPortions(
      {this.id,
        this.portionDescription,
        this.gramWeight,
        this.sequenceNumber,
        this.modifier,
        this.measureUnit});

  FoodPortions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    portionDescription = json['portionDescription'].toString();
    gramWeight = json['gramWeight'].toString();
    sequenceNumber = json['sequenceNumber'].toString();
    modifier = json['modifier'].toString();
    measureUnit = json['measureUnit'] != null
        ? new MeasureUnit.fromJson(json['measureUnit'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['portionDescription'] = this.portionDescription;
    data['gramWeight'] = this.gramWeight;
    data['sequenceNumber'] = this.sequenceNumber;
    data['modifier'] = this.modifier;
    if (this.measureUnit != null) {
      data['measureUnit'] = this.measureUnit!.toJson();
    }
    return data;
  }
}

class MeasureUnit {
  int? id;
  String? name;
  String? abbreviation;

  MeasureUnit({this.id, this.name, this.abbreviation});

  MeasureUnit.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'].toString();
    abbreviation = json['abbreviation'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['abbreviation'] = this.abbreviation;
    return data;
  }
}