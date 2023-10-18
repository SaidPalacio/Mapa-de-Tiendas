import 'package:latlong2/latlong.dart';

class MapMarkert {
  MapMarkert({
    required this.image,
    required this.title,
    required this.address,
    required this.location,
    required this.categoria,
    required this.calificacion,
    required this.promocion,
    required this.horas,
  });
  final String image;
  final String title;
  final String address;
  final LatLng location; 
  final String categoria;
  final String calificacion;
  final String promocion;
  final String horas;

}

final _locations = [
  LatLng(10.923229127088046, -74.81118811936415),//10.923229127088046, -74.81118811936415aqui se camcia la ubicación de las tiendas 
  LatLng(10.920974746130957, -74.8085059104411),//10.920974746130957, -74.8085059104411
  LatLng(-12.0480045, -77.0205112),
  LatLng(-12.0654067 , -77.0257675),
  LatLng(-12.0238438 , -77.0822122),
  LatLng(-12.0211287 , -77.0502137),
  LatLng(-12.0622444 , -77.0708716),
  LatLng(-12.0262173, -77.0296813),
];

//const _path = '';

final mapMarkers =[
  MapMarkert(
    image:'zara.png',
    title: 'Zara',
    address: 'calle 100 # 54-34',
    location: _locations[0],
    categoria: 'Moda',
    calificacion: '4.5',
    promocion: "Descuento del 30% en Calzado de Diseñador.",
    horas: 'Lunes a Viernes: 9:00 AM - 8:00 PM Sábados y Domingos: 10:00 AM - 6:00 PM',
  ),
  MapMarkert(
    image:'ElectroMundo.png',
    title: 'ElectroMundo',
    address: 'calle 102 # 76-12',
    location: _locations[1],
    categoria: 'Electrónica',
    calificacion: '4.2',
    promocion: "Descuento del 20% en Lavadoras de Carga Frontal.",
    horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
  ),
  MapMarkert(
    image:'FrutaExpress.png',
    title: 'FrutasExpress',
    address: 'calle 119 # 123-321',
    location: _locations[2],
    categoria: 'Alimentos',
    calificacion: '4.8',
    promocion: "Oferta de la Semana: 2x1 en Frutas y Verduras Frescas.",
    horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
  ),
  MapMarkert(
    image:'H&M.png',
    title: 'H&M',
    address: 'calle 120 # 43-54',
    location: _locations[3],
    categoria: 'Moda',
    calificacion: '4.8',
    promocion:  "Venta Especial de Verano: 40% de Descuento en Ropa de Verano",
    horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
  ),
  MapMarkert(
    image:'GadgetsTech.png',
    title: 'GadgetsTech',
    address: 'calle 104 # 13-31',
    location: _locations[4],
    categoria: 'Electrónica',
    calificacion: '4.7',
    promocion: 'Oferta del 15% en Refrigeradores Inteligentes',
    horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
  ),
  MapMarkert(
    image:'ElectroBoutique.png',
    title: 'ElectroBoutique',
    address: 'calle 106 #20-54',
    location: _locations[5],
    categoria: 'Electrónica',
    calificacion: '4.4',
    promocion: "Hasta 25% de Descuento en Hornos de Convección",
    horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
  ),
  MapMarkert(
    image:'SaborGourmet.png',
    title: 'SaborGourmet',
    address: 'calle 118 # 32-53',
    location: _locations[6],
    categoria: 'Alimentos',
    calificacion: '4.1',
    promocion: "Descuento del 15% en Productos Orgánicos.",
    horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
  ),
  MapMarkert(
    image:'SuperAlimentos.png',
    title: 'SuperAlimentos',
    address: 'calle 119 # 123-321',
    location: _locations[7],
    categoria: 'Alimentos',
    calificacion: '4.7',
    promocion: "Compra 2 y Lleva 1 Gratis en Productos de Desayuno.",
    horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
  ),
  //faltan las _location
  /*
  MapMarkert(
    image: 'Mercado Fresco.png',
    title: 'Mercado Fresco', 
    address: 'calle 125 # 231-12', 
    location: location, 
    categoria: 'Alimentos', 
    calificacion: '4.7', 
    promocion: "Promoción de Carnes a la Parrilla: 20% de Descuento", 
    horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
    ),
  MapMarkert(
    image: 'TechWorld.png',
    title: 'TechWorld', 
    address: 'calle 107 # 32-54', 
    location: location, 
    categoria: 'Electrónica', 
    calificacion: '4.7', 
    promocion: "Oferta Especial del 30% en Paquetes de Electrodomésticos", 
    horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
    ),
  MapMarkert(
    image: 'Gucci.png', 
    title: 'Gucci', 
    address: 'calle 115 # 23-46', 
    location: location, 
    categoria: 'Moda', 
    calificacion: '4.0', 
    promocion: "25% de Descuento en Compras Superiores a 100k", 
    horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM'
    ),
    MapMarkert(
      image: 'Adidas.png', 
      title: 'Adidas', 
      address: 'calle 121 # 82-72', 
      location: location, 
      categoria: 'Deportes', 
      calificacion: '4.7', 
      promocion: "30% de Descuento en Máquinas y Accesorios", 
      horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM'
      ),
    MapMarkert(
      image: 'Nike.png', 
      title: 'Nike', 
      address: 'calle 124 # 12-24', 
      location: location, 
      categoria: 'Deportes', 
      calificacion: '4.6', 
      promocion: "Temporada de verano con descuentos de hasta el 50% en una amplia selección de equipamiento deportivo.", 
      horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
      ),
    MapMarkert(
      image: 'Puma.png', 
      title: 'Puma', 
      address: 'calle 116 # 32-09', 
      location: location, 
      categoria: 'Deportes', 
      calificacion: '4.5', 
      promocion: "Descuento del 20% en Ropa Deportiva de Marca", 
      horas:'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM'
      ),
    MapMarkert(
      image: 'DecoVida.png', 
      title: 'DecoVida', 
      address: 'calle 132 # 22-12', 
      location: location, 
      categoria: 'Hogar', 
      calificacion: '4.5', 
      promocion: "Venta de Muebles Hasta 40% de Descuento", 
      horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM'
      ),
    MapMarkert(
      image: 'Jamar.png', 
      title: 'Jamar', 
      address: 'calle 134 # 102-24', 
      location: location, 
      categoria: 'Hogar', 
      calificacion: '4.8', 
      promocion: "25% de Descuento en camas para niños", 
      horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM'
      ),
    MapMarkert(
      image: 'HogarIdeal.png', 
      title: 'Hogar Ideal', 
      address: 'calle 112 # 23-40', 
      location: location, 
      categoria: 'Hogar', 
      calificacion: '4.3', 
      promocion: "Promoción de Decoración de Interiores: Compra 2, Lleva 1 Gratis.", 
      horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM'
      ),*/
];