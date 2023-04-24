import 'package:cart_app/product/modal/productModal.dart';
import 'package:flutter/cupertino.dart';

class ProductProvider extends ChangeNotifier
{
  List<ProductModal>iteamList=[
    ProductModal(name: "Pizza",image: "assets/images/01.pizza.jpg",rate: 249,star: "⭐⭐⭐⭐⭐",info: "The average slice of pizza contains 12 grams of protein, Pizza can help you absorb the antioxidant Lycopene, Fresh veggies are one of the healthiest toppings!,Thin-crust pizza offers a better-balanced meal,Pizza is a better breakfast option than some cereals."),
    ProductModal(name: "Burger",image: "assets/images/08.burgar.jpg",rate: 169,star: "⭐⭐⭐⭐⭐",info:"Burger Meat Is Packed With Nutrients Protein is an important nutrient, but burgers offer way more than that. Whenever you eat a burger, you'll also give your body B-vitamins, iron, zinc, niacin, and other vitamins and minerals. When your body has top-notch fuel, you can boost your energy levels" ),
    ProductModal(name: "Pasta",image: "assets/images/02.pasta.jpg",rate: 199,star: "⭐⭐⭐",info:" It's a good source of energy and can give you fiber, too, if it's made from whole grain. That can help with stomach problems and may help lower cholesterol." ),
    ProductModal(name: "Frenchy",image: "assets/images/03.francky.jpg",rate: 159,star: "⭐⭐⭐⭐",info:"Frankie is a wrap made with various stuffings and served as a street food snack served in various parts of India. A vegetarian frankie usually includes assorted toppings of veggie stir fry, legumes, paneer, cheese, potato tikki, veg cutlet, lentils kabab. You can also add any other leftover vegetable as a filling." ),
    ProductModal(name: "Maggie",image: "assets/images/09.maggie.jpg",rate: 149,star: "⭐⭐⭐",info:"Vitamin A deficiency can cause night-blindness and hindered growth,Iron deficiency can cause anemia." ),
    ProductModal(name: "Paneer",image: "assets/images/04.butter.jpg",rate: 170,star: "⭐⭐⭐",info: "Reduces the risk of cancer,Building better bones and teeth, An essential component in weight loss programs,Aids in the normal functioning of the digestive system,Ideal food for diabetic patients,Building a strong immune system,Paneer prevents and protects you from diseases"),
    ProductModal(name: "Pulav",image: "assets/images/06.pulav.jpg",rate: 120,star: "⭐⭐⭐⭐",info: "Good source of fiber. Vegetable pualo are the rich source of fiber and can keeps stomach full for longer hours,Enhances mood. Many people prefer eating rice at night as it provides satisfying feeling and relieves the entire stress buildup of the day"),
    ProductModal(name: "Samosa",image: "assets/images/07.samosa.jpg",rate:130 ,star: "⭐⭐⭐⭐⭐",info:"Reduces disease risk,Improves digestive health,The meat/chicken filling is a good source of protein,Provides the body with energy,Healthy light snack,7 Perfect Health Benefits Of Parfait,10 Fantastic Health Benefits Of Eating Crayfish." ),
    ProductModal(name: "Dosa",image:"assets/images/05.dosa.jpg" ,rate: 180,star: "⭐⭐⭐⭐⭐",info: "Dosa is also a great source of healthy carbohydrates. As a result, your body is supplied with the necessary energy that you need to stay energetic throughout the day. So, if you are planning to shed some weight, dosa is the right breakfast option for you."),
  ];
  List<ProductModal>cartList=[];
  void minus(int index)
  {
    ProductModal p1 = ProductModal(
      qa: cartList[index].qa! - 1,
      rate: cartList[index].rate,
      star: cartList[index].star,
      name: cartList[index].name,
      image: cartList[index].image,
    );
    if(cartList[index].qa!<=1)
      {
        cartList.removeAt(index);
      }
    else
    {
      cartList[index]=p1;

    }
    notifyListeners();
  }
  void plus(int index)
  {
    ProductModal p1 = ProductModal(
      qa: cartList[index].qa! + 1,
      rate: cartList[index].rate,
      star: cartList[index].star,
      name: cartList[index].name,
      image: cartList[index].image,
    );
    cartList[index]=p1;
    notifyListeners();
  }
  void add(int index)
  {
    ProductModal product = ProductModal(
        image: "${iteamList[index].image}",
        name: "${iteamList[index].name}",
        star: "${iteamList[index].star}",
        qa: iteamList[index].qa=1,
        rate: iteamList[index].rate);
    cartList.add(product);
    notifyListeners();
  }
}