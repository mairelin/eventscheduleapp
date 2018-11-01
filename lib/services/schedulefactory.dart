import 'package:eventscheduleapp/domain/schedule.dart';
import 'package:eventscheduleapp/domain/talk.dart';
import 'package:eventscheduleapp/domain/speaker.dart';

import 'package:eventscheduleapp/services/scheduleservice.dart';

class ScheduleFactory extends ScheduleService {


  @override
  Map getScheduleList() {
    Map days = Map();
    List<Schedule> dayOneSchedule = listForDayOne();
    List<Schedule> secondDaySchedule = listForSecondDay();
    days["2 Nov"] = dayOneSchedule;
    days["3 Nov"] = secondDaySchedule;
    return days;

  }


  List<Schedule> listForDayOne() {

    var eliax = Speaker(name: "Jose Elias", photo: "images/eliax.jpg",
        website: "https://www.eliax.com", instagram: "https://www.instagram.com/eliax/?hl=en",
         facebook: "https://www.facebook.com/eliax", twitter: "https://twitter.com/eliax?lang=en");
    var opensaturdayconf = Speaker(name: "Open Saturday Conf", photo: "images/eliax.jpg",
        website: "https://www.eliax.com", instagram: "https://www.instagram.com/eliax/?hl=en",
        facebook: "https://www.facebook.com/eliax", twitter: "https://twitter.com/eliax?lang=en");
    var mic = Speaker(name: "Ministerio de Industria, Comercio y Mipymes", photo: "images/eliax.jpg",
        website: "https://www.eliax.com", instagram: "https://www.instagram.com/eliax/?hl=en",
        facebook: "https://www.facebook.com/eliax", twitter: "https://twitter.com/eliax?lang=en");
    var ctc = Speaker(name: "Centros Tecnológicos Comunitarios (CTC)", photo: "images/eliax.jpg",
        website: "https://www.eliax.com", instagram: "https://www.instagram.com/eliax/?hl=en",
        facebook: "https://www.facebook.com/eliax", twitter: "https://twitter.com/eliax?lang=en");

    List<Schedule> dayOneSchedule = List();
    dayOneSchedule.add(Schedule(talk: Talk(name: "Registro"),
        speaker: opensaturdayconf,
        hour: "8:30am - 9:30am",
        area: "Area de Registro"));

    dayOneSchedule.add(Schedule(talk:
    Talk(name: "Opening del Evento: Jonathan Montero y Victor S. Recio"),
        speaker: opensaturdayconf,
        hour: "9:30am - 10:00am",
        area: "Auditorio 5to piso"));

    dayOneSchedule.add(Schedule(talk:
    Talk(name: "Key Note: El Futuro Titánico del Desarrollo del Software"),
        speaker: eliax,
        hour: "10:00am - 11:00am",
        area: "Auditorio 5to piso"));

    dayOneSchedule.add(Schedule(talk:
    Talk(name: "Programa de Apoyo al Desarrollo de la Industria del Software y Servicios TIC (DISS)"),
        speaker: mic,
        hour: "11:00am - 11:30am",
        area: "Auditorio 5to piso"));

    dayOneSchedule.add(Schedule(talk:
    Talk(name: "Centros Tecnológicos Comunitarios (CTC)"),
        speaker: ctc,
        hour: "11:35am - 12:10pm",
        area: "Auditorio 5to piso"));

    return dayOneSchedule;
  }


  List<Schedule> listForSecondDay() {

    var alfio = Speaker(name: "Alfio Muñoz", photo: "images/alfio.png",
        website: "https://www.eliax.com", instagram: "https://www.instagram.com/eliax/?hl=en",
        facebook: "https://www.facebook.com/eliax", twitter: "https://twitter.com/eliax?lang=en");
    var juan = Speaker(name: "Juan Guerrero (Jay)",  photo: "images/juan.png",
        website: "https://www.eliax.com", instagram: "https://www.instagram.com/eliax/?hl=en",
        facebook: "https://www.facebook.com/eliax", twitter: "https://twitter.com/eliax?lang=en");
    var rickelvis = Speaker(name: "Rickelvis Valerio",  photo: "images/rickelvis.png",
        website: "https://www.eliax.com", instagram: "https://www.instagram.com/eliax/?hl=en",
        facebook: "https://www.facebook.com/eliax", twitter: "https://twitter.com/eliax?lang=en");
    var eneldo = Speaker(name: "Eneldo Antonio Serrata Peralta",  photo: "images/alfio.png",
        website: "https://www.eliax.com", instagram: "https://www.instagram.com/eliax/?hl=en",
        facebook: "https://www.facebook.com/eliax", twitter: "https://twitter.com/eliax?lang=en");
    var luis = Speaker(name: "Luis Matos",  photo: "images/alfio.png",
        website: "https://www.eliax.com", instagram: "https://www.instagram.com/eliax/?hl=en",
        facebook: "https://www.facebook.com/eliax", twitter: "https://twitter.com/eliax?lang=en");
    var junior = Speaker(name: "Junior Dugee Sanchez",  photo: "images/junior.png",
        website: "https://www.eliax.com", instagram: "https://www.instagram.com/eliax/?hl=en",
        facebook: "https://www.facebook.com/eliax", twitter: "https://twitter.com/eliax?lang=en");
    var jose = Speaker(name: "José R. Lara",  photo: "images/eliax.png",
        website: "https://www.eliax.com", instagram: "https://www.instagram.com/eliax/?hl=en",
        facebook: "https://www.facebook.com/eliax", twitter: "https://twitter.com/eliax?lang=en");
    var harry = Speaker(name: "Harry Vizcaino",  photo: "images/alfio.png",
        website: "https://www.eliax.com", instagram: "https://www.instagram.com/eliax/?hl=en",
        facebook: "https://www.facebook.com/eliax", twitter: "https://twitter.com/eliax?lang=en");
    var valmis = Speaker(name: "Valmis Di Carlo",  photo: "images/alfio.png",
        website: "https://www.eliax.com", instagram: "https://www.instagram.com/eliax/?hl=en",
        facebook: "https://www.facebook.com/eliax", twitter: "https://twitter.com/eliax?lang=en");

    List<Schedule> daySecondSchedule = List();

    daySecondSchedule.add(
      Schedule(
          hour: "9:00am - 12:00am",
          speaker: alfio,
          talk: Talk(name: "Virtualización avanzada con Proxmox"),
          area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "1:00pm - 4:00pm",
            speaker: alfio,
            talk: Talk(name: "Virtualización avanzada con Proxmox"),
            area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "9:00am - 12:00pm",
            speaker: juan,
            talk: Talk(name: "Balanceador de Cargas entre proveedores de internet y servidores"),
            area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "9:00am - 12:00pm",
            speaker: rickelvis,
            talk: Talk(name: "Hackea tu cerebro con las neurociencias y aprende un idioma en tiempo record"),
            area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "9:00am - 12:00pm",
            speaker: eneldo,
            talk: Talk(
            name: "Odoo para freelance: Consiste en como administrar tus proyectos y finanzas usando Odoo"),
            area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "9:00am - 12:00pm",
            speaker: luis,
            talk: Talk(
                name: "Xamarin Kaizen - Mejorando en el Desarrollo Móvil"),
            area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "9:00am - 12:00pm",
            speaker: junior,
            talk: Talk(
                name: "Jiren contra todos: Pentesting active directory, web application pentesting y Darkside layer2 exploitation"),
            area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "9:00am - 12:00pm",
            speaker: jose,
            talk: Talk(
                name: "Recuperación de desastres para las Pymes usando infraestructura Cloud con OVH y Proxmox 101"),
            area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "9:00am - 12:00pm",
            speaker: harry,
            talk: Talk(
                name: "React Native · Un Framework Para Crear Aplicaciones Nativas Utilizando React"),
            area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "9:00am - 12:00pm",
            speaker: valmis,
            talk: Talk(
                name: "pfSense para infraestructuras empresariales"),
            area: "Confirmar en Registro")
    );

    return daySecondSchedule;

  }


}