import 'package:eventscheduleapp/domain/schedule.dart';
import 'package:eventscheduleapp/domain/talk.dart';
import 'package:eventscheduleapp/domain/speaker.dart';

import 'package:eventscheduleapp/services/scheduleservice.dart';

class ScheduleFactory extends ScheduleService {


  var charlin = Speaker(name: "Charlin Agramonte Y Rendy Del Rosario",
      photo: "images/charlin.jpg",
      website: "https://xamgirl.com/blog/",
      instagram: "https://www.instagram.com/chard0394/",
      facebook: "https://www.facebook.com/chard003",
      twitter: "https://twitter.com/Chard003");

  var ernesto = Speaker(name: "Charlin Agramonte Y Rendy Del Rosario",
      photo: "images/ernesto.jpg",
      website: "https://opensaturday.org/speakers/ernesto-ovcharenko/#",
      instagram: "https://opensaturday.org/speakers/ernesto-ovcharenko/#",
      facebook: "https://opensaturday.org/speakers/ernesto-ovcharenko/#",
      twitter: "https://opensaturday.org/speakers/ernesto-ovcharenko/#");

  var angel = Speaker(name: "Angel M. Adames",
      photo: "images/angel.jpg",
      website: "https://opensaturday.org/speakers/angel-m-adames/",
      instagram: "https://opensaturday.org/speakers/angel-m-adames/",
      facebook: "https://opensaturday.org/speakers/angel-m-adames/",
      twitter: "https://opensaturday.org/speakers/angel-m-adames/");


  var harryPeralta = Speaker(name: "Harry Peralta",
      photo: "images/harry.jpg",
      website: "https://opensaturday.org/speakers/harry-peralta/",
      instagram: "https://opensaturday.org/speakers/harry-peralta/",
      facebook: "https://opensaturday.org/speakers/harry-peralta/",
      twitter: "https://opensaturday.org/speakers/harry-peralta/");

  var eliax = Speaker(name: "Jose Elias", photo: "images/eliax.jpg",
      website: "https://www.eliax.com",
      instagram: "https://www.instagram.com/eliax/?hl=en",
      facebook: "https://www.facebook.com/eliax",
      twitter: "https://twitter.com/eliax?lang=en");

  var alfio = Speaker(name: "Alfio Muñoz",
      photo: "images/alfio.png",
      website: "https://opensaturday.org/speakers/alfio-munoz/#",
      instagram: "https://opensaturday.org/speakers/alfio-munoz/#",
      facebook: "https://opensaturday.org/speakers/alfio-munoz/#",
      twitter: "https://opensaturday.org/speakers/alfio-munoz/#");

  var junior = Speaker(name: "Junior Dugee Sanchez",
      photo: "images/junior.png",
      website: "https://opensaturday.org/speakers/junior-dugee-sanchez/#",
      instagram: "https://opensaturday.org/speakers/junior-dugee-sanchez/#",
      facebook: "https://opensaturday.org/speakers/junior-dugee-sanchez/#",
      twitter: "https://opensaturday.org/speakers/junior-dugee-sanchez/#");

  var rickelvis = Speaker(name: "Rickelvis Valerio",
      photo: "images/rickelvis.png",
      website: "https://opensaturday.org/speakers/rickelvis-valerio/#",
      instagram: "https://opensaturday.org/speakers/rickelvis-valerio/#",
      facebook: "https://opensaturday.org/speakers/rickelvis-valerio/#",
      twitter: "https://opensaturday.org/speakers/rickelvis-valerio/#");

  var juan = Speaker(name: "Juan Guerrero (Jay)",
      photo: "images/juan.png",
      website: "https://opensaturday.org/speakers/juan-guerrero-jay/",
      instagram: "https://opensaturday.org/speakers/juan-guerrero-jay/",
      facebook: "https://opensaturday.org/speakers/juan-guerrero-jay/",
      twitter: "https://opensaturday.org/speakers/juan-guerrero-jay/");


  var jose = Speaker(name: "José R. Lara",
      photo: "images/jose.png",
      website: "https://opensaturday.org/speakers/jose-r-lara/#",
      instagram: "https://opensaturday.org/speakers/jose-r-lara/#",
      facebook: "https://opensaturday.org/speakers/jose-r-lara/#",
      twitter: "https://opensaturday.org/speakers/jose-r-lara/#");

  var valmis = Speaker(name: "Valmis Di Carlo",
      photo: "images/valmis.jpg",
      website: "https://opensaturday.org/speakers/2493/",
      instagram: "https://opensaturday.org/speakers/2493/",
      facebook: "https://opensaturday.org/speakers/2493/",
      twitter: "https://opensaturday.org/speakers/2493/");

  var harry = Speaker(name: "Harry Vizcaino",
      photo: "images/harryv.jpeg",
      website: "https://opensaturday.org/speakers/harry-vizcaino/#",
      instagram: "https://opensaturday.org/speakers/harry-vizcaino/#",
      facebook: "https://opensaturday.org/speakers/harry-vizcaino/#",
      twitter: "https://opensaturday.org/speakers/harry-vizcaino/#");

  var eneldo = Speaker(name: "Eneldo Antonio Serrata Peralta",
      photo: "images/eneldo.jpeg",
      website: "https://opensaturday.org/speakers/eneldo-antonio-serrata-peralta/",
      instagram: "https://opensaturday.org/speakers/eneldo-antonio-serrata-peralta/",
      facebook: "https://opensaturday.org/speakers/eneldo-antonio-serrata-peralta/",
      twitter: "https://opensaturday.org/speakers/eneldo-antonio-serrata-peralta/");

  var luis = Speaker(name: "Luis Matos",
      photo: "images/luis.jpeg",
      website: "https://opensaturday.org/speakers/luis-matos/",
      instagram: "https://opensaturday.org/speakers/luis-matos/",
      facebook: "https://opensaturday.org/speakers/luis-matos/",
      twitter: "https://opensaturday.org/speakers/luis-matos/");


  var opensaturdayconf = Speaker(name: "Open Saturday Conf",
      photo: "images/logomini.png",
      website: "https://opensaturday.org",
      instagram: "https://opensaturday.org",
      facebook: "https://opensaturday.org",
      twitter: "https://opensaturday.org");

  var mic = Speaker(name: "Ministerio de Industria, Comercio y Mipymes",
      photo: "images/micm.png",
      website: "https://micm.gob.do/",
      instagram: "https://micm.gob.do/",
      facebook: "https://micm.gob.do/",
      twitter: "https://micm.gob.do/");

  var ctc = Speaker(name: "Centros Tecnológicos Comunitarios (CTC)",
      photo: "images/ctc.png",
      website: "https://ctc.edu.do/",
      instagram: "https://ctc.edu.do/",
      facebook: "https://ctc.edu.do/",
      twitter: "https://ctc.edu.do/");

  var reservas = Speaker(name: "CREE Banreservas",
      photo: "images/reservas.jpg",
      website: "http://www.creebanreservas.com.do/",
      instagram: "http://www.creebanreservas.com.do/",
      facebook: "http://www.creebanreservas.com.do/",
      twitter: "http://www.creebanreservas.com.do/");


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

    List<Schedule> dayOneSchedule = List();
    dayOneSchedule.add(Schedule(talk: Talk(name: "Registro de asistencia"),
        speaker: opensaturdayconf,
        startTime: DateTime(2018, 11, 2, 8, 30),
        endTime: DateTime(2018, 11, 2, 9, 30),
        hour: "8:30am - 9:30am",
        area: "Area de Registro"));

    dayOneSchedule.add(Schedule(talk:
    Talk(name: "Opening del Evento: Jonathan Montero y Victor S. Recio"),
        speaker: opensaturdayconf,
        hour: "9:30am - 10:00am",
        startTime: DateTime(2018, 11, 2, 9, 30),
        endTime: DateTime(2018, 11, 2, 10, 00),
        area: "Auditorio 5to piso"));

    dayOneSchedule.add(Schedule(talk:
    Talk(name: "Key Note: El Futuro Titánico del Desarrollo del Software"),
        speaker: eliax,
        hour: "10:00am - 11:00am",
        startTime: DateTime(2018, 11, 2, 10, 00),
        endTime: DateTime(2018, 11, 2, 11, 00),
        area: "Auditorio 5to piso"));

    dayOneSchedule.add(Schedule(talk:
    Talk(name: "Programa de Apoyo al Desarrollo de la Industria del Software y Servicios TIC (DISS)"),
        speaker: mic,
        hour: "11:00am - 11:30am",
        startTime: DateTime(2018, 11, 2, 11, 00),
        endTime: DateTime(2018, 11, 2, 11, 30),
        area: "Auditorio 5to piso"));

    dayOneSchedule.add(Schedule(talk:
    Talk(name: "Ideación = Innovación INNOVAPP"),
        speaker: ctc,
        hour: "11:35am - 12:10pm",
        startTime: DateTime(2018, 11, 2, 11, 35),
        endTime: DateTime(2018, 11, 2, 12, 10),
        area: "Auditorio 5to piso"));

    dayOneSchedule.add(Schedule(talk:
    Talk(name: "Seguridad Ofensiva con metasploit"),
        speaker: harryPeralta,
        hour: "1:00pm - 1:30pm",
        startTime: DateTime(2018, 11, 2, 13, 00),
        endTime: DateTime(2018, 11, 2, 13, 30),
        area: "Auditorio 5to piso"));

    dayOneSchedule.add(Schedule(talk:
    Talk(name: "Emprendimientos Tecnologicos"),
        speaker: reservas,
        hour: "1:40pm - 3:00pm",
        startTime: DateTime(2018, 11, 2, 13, 40),
        endTime: DateTime(2018, 11, 2, 15, 30),
        area: "Auditorio 5to piso"));

    dayOneSchedule.add(Schedule(talk:
    Talk(name: "Charlas de 10 minutos - Lightning talk"),
        speaker: opensaturdayconf,
        hour: "5:00pm - 5:40pm",
        startTime: DateTime(2018, 11, 2, 17, 00),
        endTime: DateTime(2018, 11, 2, 17, 40),
        area: "Auditorio 5to piso"));

    dayOneSchedule.add(Schedule(talk:
    Talk(name: "DevOps: Revolución y Cultura"),
        speaker: angel,
        hour: "3:05pm - 3:40pm",
        startTime: DateTime(2018, 11, 2, 15, 05),
        endTime: DateTime(2018, 11, 2, 15, 40),
        area: "Auditorio 5to piso"));

    dayOneSchedule.add(Schedule(talk:
    Talk(name: "Aventuras en el Silicon Valley: klk alla y vale la pena?"),
        speaker: ernesto,
        hour: "4:00pm - 5:00pm",
        startTime: DateTime(2018, 11, 2, 16, 00),
        endTime: DateTime(2018, 11, 2, 17, 00),
        area: "Auditorio 5to piso"));

    return dayOneSchedule;
  }


  List<Schedule> listForSecondDay() {

    List<Schedule> daySecondSchedule = List();

    daySecondSchedule.add(
      Schedule(
          hour: "9:00am - 12:00am",
          startTime: DateTime(2018, 11, 3, 9, 00),
          endTime: DateTime(2018, 11, 3, 12, 00),
          speaker: alfio,
          talk: Talk(name: "Virtualización avanzada con Proxmox"),
          area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "1:00pm - 4:00pm",
            startTime: DateTime(2018, 11, 3, 13, 00),
            endTime: DateTime(2018, 11, 3, 16, 00),
            speaker: alfio,
            talk: Talk(name: "Virtualización avanzada con Proxmox"),
            area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "9:00am - 12:00pm",
            startTime: DateTime(2018, 11, 3, 9,  00),
            endTime: DateTime(2018, 11, 3, 12, 00),
            speaker: juan,
            talk: Talk(name:
            "Balanceador de Cargas entre proveedores de internet y servidores"),
            area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "9:00am - 12:00pm",
            startTime: DateTime(2018, 11, 3, 9,  00),
            endTime: DateTime(2018, 11, 3, 12, 00),
            speaker: rickelvis,
            talk: Talk(name: "Hackea tu cerebro con las neurociencias y aprende un idioma en tiempo record"),
            area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "9:00am - 12:00pm",
            startTime: DateTime(2018, 11, 3, 9,  00),
            endTime: DateTime(2018, 11, 3, 12, 00),
            speaker: eneldo,
            talk: Talk(
            name: "Odoo para freelance: Consiste en como administrar tus proyectos y finanzas usando Odoo"),
            area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "1:00pm - 4:00pm",
            startTime: DateTime(2018, 11, 3, 13),
            endTime: DateTime(2018, 11, 3, 16),
            speaker: luis,
            talk: Talk(
                name: "Xamarin Kaizen - Mejorando en el Desarrollo Móvil"),
            area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "1:00pm - 4:00pm",
            startTime: DateTime(2018, 11, 3, 13),
            endTime: DateTime(2018, 11, 3, 16),
            speaker: junior,
            talk: Talk(
                name: "Jiren contra todos: Pentesting active directory, web application pentesting y Darkside layer2 exploitation"),
            area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "1:00pm - 4:00pm",
            startTime: DateTime(2018, 11, 3, 13),
            endTime: DateTime(2018, 11, 3, 16),
            speaker: harry,
            talk: Talk( name: "React Native · Un Framework Para Crear Aplicaciones Nativas Utilizando React"),
            area: "Confirmar en Registro"));

    daySecondSchedule.add(
        Schedule(
            hour: "9:00am - 12:00pm",
            startTime: DateTime(2018, 11, 1, 19),
            endTime: DateTime(2018, 11, 1, 21),
            speaker: jose,
            talk: Talk(
                name: "Recuperación de desastres para las Pymes usando infraestructura Cloud con OVH y Proxmox 101"),
            area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "1:00pm - 4:00pm",
            startTime: DateTime(2018, 11, 3, 13),
            endTime: DateTime(2018, 11, 3, 16),
            speaker: harry,
            talk: Talk(
                name: "React Native · Un Framework Para Crear Aplicaciones Nativas Utilizando React"),
            area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "1:00pm - 4:00pm",
            startTime: DateTime(2018, 11, 3, 13),
            endTime: DateTime(2018, 11, 3, 16),
            speaker: valmis,
            talk: Talk(
                name: "pfSense para infraestructuras empresariales"),
            area: "Confirmar en Registro")
    );

    daySecondSchedule.add(
        Schedule(
            hour: "9:00am - 12:00pm",
            startTime: DateTime(2018, 11, 3, 9),
            endTime: DateTime(2018, 11, 3, 12),
            speaker: charlin,
            talk: Talk(
                name: "Xamarin Forms From zero to hero"),
            area: "Confirmar en Registro")
    );


    return daySecondSchedule;

  }


}