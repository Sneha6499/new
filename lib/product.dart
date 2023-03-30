class Product {
  final String name;
  final String post;

  final String description;
  final int fprice;
  final int sprice;
  final String image;
  final int day;
  final String date;
  final String address;

  Product(this.name,this.post, this.description, this.fprice, this.sprice,this.image,this.date,this.day,this.address);

  static List<Product> getProducts() {
    List<Product> items = <Product>[];
    items.add(Product(
        "Keshno Technologies Keshno Technologies","Senior Software Engineer",
        "it is made up with woolen , the price of this swater is cheeper"
            " than other swater is is very good company it is product based company",
        3000,5000,
        "a","03-03-2023",1,"it part , indore"));
    items.add(Product(
        "Keshno Technologies","Senior Software Engineer",
        "it is made up with woolen , the price of this swater is cheeper"
            " than other swater is is very good company it is product based company",
        3000,5000,
        "download","03-03-2023",1,"it part , indore"));
    items.add(Product(
        "it Technologies","Senior Software Engineer",
        "this is good company for developer we are providing good salery and good enviroment",
        3000,5000,
        "a","03-03-2023",1,"it part , indore"));
    items.add(Product(
        "TCS","Senior Software Engineer",
        "it is made up with woolen , the price of this swater is cheeper"
            " than other swater",
        3000,5000,
        "d","03-03-2023",2,"it part , indore"));
    items.add(Product(
        "Keshno Technologies","Senior Software Engineer",
        "it is made up with woolen , the price of this swater is cheeper"
            " than other swater",
        3000,5000,
        "a","03-03-2023",3,"it part , indore"));
    items.add(Product(
        "Keshno Technologies","Senior Software Engineer",
        "it is made up with woolen , the price of this swater is cheeper"
            " than other swater is is very good company it is product based company",
        3000,5000,
        "download","03-03-2023",1,"it part , indore"));
    items.add(Product(
        "Infosys ","Senior Software Engineer",
        "it is made up with woolen , the price of this swater is cheeper"
            " than other swater is is very good company it is product based company",
        3000,5000,
        "download","03-03-2023",1,"it part , indore"));
    items.add(Product(
        "Keshno Technologies","Senior Software Engineer",
        "it is made up with woolen , the price of this swater is cheeper"
            " than other swater is is very good company it is product based company",
        3000,5000,
        "download","03-03-2023",1,"it part , indore"));

    return items;
  }
}
