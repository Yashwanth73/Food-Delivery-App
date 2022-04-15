class ItemModel {
  String itemName;
  String rating;
  String itemIngridients;
  String price;
  String imagePath;
  ItemModel(this.itemName, this.price, this.itemIngridients, this.rating,
      this.imagePath);
}

class CategoryFood {
  String categoryName;
  String imagePath;
  CategoryFood(this.imagePath, this.categoryName);
}
