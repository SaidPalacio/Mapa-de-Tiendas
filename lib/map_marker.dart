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
  LatLng(10.992416586252995, -74.7937054808194),//10.992416586252995, -74.7937054808194  aqui se camcia la ubicación de las tiendas 
  LatLng(10.991447641785973, -74.78507949680201),//10.991447641785973, -74.78507949680201
  LatLng(10.987866732447458, -74.79709579345408),//10.987866732447458, -74.79709579345408
  LatLng(10.986518614142668, -74.792460936174),//10.986518614142668, -74.792460936174
  LatLng(10.985633908158498 ,-74.7854657349087),//10.985633908158498, -74.7854657349087
  LatLng(10.982937644994418, -74.78967143873692),//10.982937644994418, -74.78967143873692
  LatLng(10.985507521372844, -74.79585124844368),//10.985507521372844, -74.79585124844368
  LatLng(10.990815719766745, -74.79722453948963),//10.990815719766745, -74.79722453948963
  LatLng(10.998442791483768, -74.7938606951762),//10.996611971951836, -74.78871558543254
  LatLng(10.994653043585755, -74.7839734397895),//10.994653043585755, -74.7839734397895
  LatLng(10.999497681428494, -74.78779290551105),//10.999497681428494, -74.78779290551105
  LatLng(10.99543595494384, -74.7876862502005),//10.99543595494384, -74.7876862502005
  LatLng(10.993382231201357, -74.79608692902063),//10.993382231201357, -74.79608692902063
  LatLng(10.982892219234097, -74.79746022006658),//10.982892219234097, -74.79746022006658
  LatLng(10.984788032153212, -74.77819123016626),//10.984788032153212, -74.77819123016626
  LatLng(10.996541800407822, -74.80007805604426),//10.996541800407822, -74.80007805604426
  LatLng(10.985672740795142, -74.79544319876419),//10.985672740795142, -74.79544319876419
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
  
  MapMarkert(
    image: 'mercado_fresco-png.png',
    title: 'Mercado Fresco', 
    address: 'calle 125 # 231-12', 
    location: _locations[8],
    categoria: 'Alimentos', 
    calificacion: '4.7', 
    promocion: "Promoción de Carnes a la Parrilla: 20% de Descuento", 
    horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
    ),
  MapMarkert(
    image: 'TechWorld.png',
    title: 'TechWorld', 
    address: 'calle 107 # 32-54', 
    location: _locations[9], 
    categoria: 'Electrónica', 
    calificacion: '4.7', 
    promocion: "Oferta Especial del 30% en Paquetes de Electrodomésticos", 
    horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
    ),
  MapMarkert(
    image: 'Gucci.png', 
    title: 'Gucci', 
    address: 'calle 115 # 23-46', 
    location: _locations[10], 
    categoria: 'Moda', 
    calificacion: '4.0', 
    promocion: "25% de Descuento en Compras Superiores a 100k", 
    horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM'
    ),
    MapMarkert(
      image: 'Adidas.png', 
      title: 'Adidas', 
      address: 'calle 121 # 82-72', 
      location: _locations[11], 
      categoria: 'Deportes', 
      calificacion: '4.7', 
      promocion: "30% de Descuento en Máquinas y Accesorios", 
      horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM'
      ),
    MapMarkert(
      image: 'Nike.png', 
      title: 'Nike', 
      address: 'calle 124 # 12-24', 
      location: _locations[12], 
      categoria: 'Deportes', 
      calificacion: '4.6', 
      promocion: "Temporada de verano con descuentos de hasta el 50% en una amplia selección de equipamiento deportivo.", 
      horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
      ),
    MapMarkert(
      image: 'Puma.png', 
      title: 'Puma', 
      address: 'calle 116 # 32-09', 
      location: _locations[13], 
      categoria: 'Deportes', 
      calificacion: '4.5', 
      promocion: "Descuento del 20% en Ropa Deportiva de Marca", 
      horas:'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM'
      ),
    MapMarkert(
      image: 'DecoVida.png', 
      title: 'DecoVida', 
      address: 'calle 132 # 22-12', 
      location: _locations[14], 
      categoria: 'Hogar', 
      calificacion: '4.5', 
      promocion: "Venta de Muebles Hasta 40% de Descuento", 
      horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM'
      ),
    MapMarkert(
      image: 'Jamar.png', 
      title: 'Jamar', 
      address: 'calle 134 # 102-24', 
      location: _locations[15], 
      categoria: 'Hogar', 
      calificacion: '4.8', 
      promocion: "25% de Descuento en camas para niños", 
      horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM'
      ),
    MapMarkert(
      image: 'HogarIdeal.png', 
      title: 'Hogar Ideal', 
      address: 'calle 112 # 23-40', 
      location: _locations[16], 
      categoria: 'Hogar', 
      calificacion: '4.3', 
      promocion: "Promoción de Decoración de Interiores: Compra 2, Lleva 1 Gratis.", 
      horas: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM'
      ),
];