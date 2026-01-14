// This is a filter script that is meant to help with FurrAndreas.
// Author: HELLHOUND aka Maxwell Nextem, Foxxie Doxxie Doggie Boggie bla bla a lot of ther usernames i'm konown by
// Date: 10/26/2025 - 1/14/2026 (Last Updated). Format: MM/DD/YYYY

// Notes: this is not the final form of FurrAndreasHelpers, FurrAndreas is still in the alpha stage.

/*
-----------------------------------------------------------------------------------------------------------------
*/

#include <open.mp> // keep this here cuz its the only one that's being used

/* disabled includes cuz they arent used and they could increase compile time
#include <core> 
#include <float>
#include <string>
#include <file>
#include <time>
*/


#define FILTERSCRIPT // Defines this as a filter script or it won't work ofc

public OnFilterScriptInit()
{
    print("FurrAndreas helpers loaded.");
    print("Created: 10/26/2025        ");
    print("Updated: 1/14/2026        "); // PLEASE UPDATE THIS DATE WHENEVER YOU MAKE CHANGES, FUCK YOU.
    print("HELLHOUND's FurrAndreasHelpers  :3");

/*
-----------------------------------------------------------------------------------------------------------------
*/

// This Part of the code insures that the custom content thingies are actually being downloaded because artconfig.txt for some reason kept failing
// Why's it not a part of the gamemode? well filterscripts run before the gamemode does which means we will be use that players have the required content installed before going to the gamemode, you get the point.
   
    //Download Custom Content
    AddCharModel(305, 20001, "lvpdpc2.dff", "lvpdpc2.txd"); //Default
    AddCharModel(305, 20002, "lapdpd2.dff", "lapdpd2.txd"); //Default

    //Counter-Terrorists
    AddCharModel(305, 20003, "gign.dff", "gign.txd"); //CTs
    AddCharModel(305, 20004, "gsg9.dff", "gsg9.txd"); //CTs
    AddCharModel(305, 20005, "sas.dff", "sas.txd"); //CTs
    AddCharModel(305, 20006, "urban.dff", "urban.txd"); //CTs

    //Terrorists
    AddCharModel(305, 20007, "phenix.dff", "phenix.txd"); //Ts
    AddCharModel(305, 20008, "arctic.dff", "arctic.txd"); //Ts
    AddCharModel(305, 20009, "leet.dff", "leet.txd"); //Ts
    AddCharModel(305, 20010, "guerilla.dff", "guerilla.txd"); //Ts

    //GTA ViceCity
    AddCharModel(305, 20011, "tommy.dff", "tommy.txd"); //GTAVC
    AddCharModel(305, 20012, "vcpd.dff", "vcpd.txd"); //VCPD
    AddCharModel(305, 20013, "vcpd1.dff", "vcpd1.txd"); //VCFBI
    AddCharModel(305, 20014, "vcswat.dff", "vcswat.txd"); //VCDEA


    //LAW - SWAT
    AddCharModel(305, 20015, "swat16.dff", "swat16.txd"); //Normal swat but kinda bule
    AddCharModel(305, 20016, "fbig.dff", "fbig.txd"); //New fbi dude
    AddCharModel(305, 20017, "gswat.dff", "gswat.txd"); //Green vest swat

    //GSF beta
    AddCharModel(305, 20018, "fam1.dff", "fam1.txd"); //GSF beta
    AddCharModel(305, 20019, "fam1.dff", "fam1.txd"); //GSF beta
    AddCharModel(305, 20020, "fam2.dff", "fam2.txd"); //GSF beta
    AddCharModel(305, 20021, "fam3.dff", "fam3.txd"); //GSF beta

    //Furry gang
    AddCharModel(305, 20022, "doogie.dff", "doogie.txd"); // furry folks
    AddCharModel(305, 20023, "meow.dff", "meow.txd"); // furry folks
    AddCharModel(305, 20024, "raty.dff", "raty.txd"); // furry folks
    AddCharModel(305, 20025, "ferri.dff", "ferri.txd"); // furry folks
    AddCharModel(305, 20026, "Poli.dff", "Poli.txd"); // furry folks
    AddCharModel(305, 20027, "fren.dff", "fren.txd"); // furry folks
    AddCharModel(305, 20028, "husk.dff", "husk.txd"); // furry folks
    AddCharModel(305, 20029, "gatto.dff", "gatto.txd"); // furry folks
    AddCharModel(305, 20030, "ketty.dff", "ketty.txd"); // furry folks
    AddCharModel(305, 20031, "Malho.dff", "Malho.txd"); // furry folks
    AddCharModel(305, 20032, "Ken.dff", "Ken.txd"); // furry folks
    AddCharModel(305, 20033, "Doxi.dff", "Doxi.txd"); // furry folks
    AddCharModel(85, 20034, "furry.dff", "furry.txd"); // furry folks
    AddCharModel(85, 20035, "FurryM1.dff", "FurryM1.txd"); // furry folks

    //Frosty's stuff
    AddCharModel(305, 20036, "AlexMercerLQ.dff", "AlexMercerLQ.txd"); // Frosty's stuff
    AddCharModel(305, 20037, "Skeleton Version 1 - Old School.dff", "Skeleton Version 1 - Old School.txd"); // Frosty's stuff

    // Hello :3 If you're one of the FurrAndreas testers and want to add your own skin, put it down below.
    // Make sure to follow the same structure I'm using, and also send me the skin files once you're done
    // either via private DMs or in #furrandreas-discussion




    //Objects
    AddSimpleModel(-1, 19379, -2000, "wallzzz.dff", "wallzzz.txd"); //Idk lol

// and here it ends

/*
-----------------------------------------------------------------------------------------------------------------
*/

// This one adds static vehicles like ambulances and police cars at hospitals and police departments

    //FurrAndreas First ever static vehicle
    AddStaticVehicle(445, -2644.07, 1332.54, 7.06, 273.36, 1, 1);
    SetVehicleNumberPlate(1, "FURRYSRV");

    // San Fierro Hospital - Santa Flora
    AddStaticVehicle(416, -2544.27, 586.97, 14.60, 90.34, 1, 3); // SF Hospital Ambulance 1
    SetVehicleNumberPlate(1, "FA01SNTA"); // Its license plate
    AddStaticVehicle(416, -2544.70, 592.90, 14.60, 90.34, 3, 3); // SF Hospital Ambulance 2
    SetVehicleNumberPlate(2, "FA02SNTA"); // Its license plate

    // Los Santos Hospital - Idlewood
    AddStaticVehicle(416, 2030.62, -1438.94, 17.28, 179.74, 1, 3); // LS Idlewood Ambulance 1
    SetVehicleNumberPlate(3, "FA01IDLW"); // Its license plate
    AddStaticVehicle(416, 2035.62, -1438.94, 17.28, 179.74, 3, 3); // LS Idlewood Ambulance 2
    SetVehicleNumberPlate(4, "FA02IDLW"); // Its license plate

    // Los Santos Hospital - Market
    AddStaticVehicle(416, 1180.87, -1308.59, 13.83, 269.99, 1, 3); // LS Market Ambulance
    SetVehicleNumberPlate(5, "FA01MRKT"); // Its license plate

    // Las Venturas Hospital
    AddStaticVehicle(416, 1582.43, 1745.35, 10.97, 91.50, 1, 3); // LV Hospital Ambulance 1
    SetVehicleNumberPlate(6, "FA01LV"); // Its license plate
    AddStaticVehicle(416, 1592.38, 1818.97, 10.96, 1.53, 3, 3); // LV Hospital Ambulance 2
    SetVehicleNumberPlate(7, "FA02LV"); // Its license plate


    // Fort Carson Hospital
    AddStaticVehicle(416, -331.89, 1062.82, 19.89, 271.30, 3, 3); // FC Hospital Ambulance
    SetVehicleNumberPlate(8, "FA01FC"); // Its license plate

    // Bayside Hospital
    AddStaticVehicle(416, -2594.9502, 2262.9233, 8.3705, 273.4296, 1, 3); // Bayside Hospital Ambulance
    SetVehicleNumberPlate(11, "FA01BAY"); // Its license plate
    AddStaticVehicle(416, -2595.8208, 2267.6313, 8.4201, 291.5195, 3, 1); // Bayside Hospital Ambulance 2
    SetVehicleNumberPlate(12, "FA02BAY"); // Its license plate
    // El Quebrados Hospital
    AddStaticVehicle(416, -1509.9623, 2525.5603, 55.8372, 359.8622, 1, 3); // El Quebrados Hospital Ambulance
    SetVehicleNumberPlate(13, "FA01ELQ"); // Its license plate
    AddStaticVehicle(416, -1503.7688, 2525.2842, 55.8370, 2.1282, 1, 3); //
    SetVehicleNumberPlate(14, "FA02ELQ"); // Its license plate

    //Police Cars:

    // Fort Carson Police Department
    AddStaticVehicle(599, -228.43, 992.25, 19.71, 298.33, 46, 1); // FCPD Ranger
    SetVehicleNumberPlate(9, "FCPD01"); // Its license plate
    AddStaticVehicle(599, -228.43, 998.25, 19.68, 298.33, 46, 1); // FCPD Ranger
    SetVehicleNumberPlate(10, "FCPD02"); // Its license plate

    // El Quebrados Police Department
    AddStaticVehicle(598, -1399.5278, 2628.8118, 55.5279, 90.6071, 41, 1); // EQPD Police Car
    SetVehicleNumberPlate(15, "EQPD01"); // Its license plate
    AddStaticVehicle(598, -1400.4785, 2631.6777, 55.4993, 90.9763, 41, 1); // EQPD Police Car
    SetVehicleNumberPlate(16, "EQPD02"); // Its license plate
    AddStaticVehicle(598, -1399.9994, 2634.5232, 55.4667, 90.9029, 41, 1); // EQPD Police Car
    SetVehicleNumberPlate(17, "EQPD03"); // Its license plate
    AddStaticVehicle(599, -1410.8033, 2659.0588, 55.8790, 179.6558, 41, 1); // EQPD Ranger
    SetVehicleNumberPlate(18, "EQPD04"); // Its license plate
    AddStaticVehicle(599, -1406.3724, 2658.8867, 55.8768, 179.8928, 41, 1); // EQPD Ranger
    SetVehicleNumberPlate(19, "EQPD05"); // Its license plate

    // Los Santos Airpot
    AddStaticVehicle(519, 1603.7855, -2623.5422, 14.5612, 32.0400, 1, 1); // Airport "Mechanic"
    AddStaticVehicle(519, 1625.9315, -2622.9717, 14.5612, 32.0400, 1, 1); // Airport "Mechanic"
    AddStaticVehicle(519, 1649.1564, -2621.7954, 14.5612, 32.0400, 1, 1); // shamal parked
    AddStaticVehicle(519, 1967.7985, -2237.9780, 16.4679, 3.0000, 1, 1); // airport cargobob
    AddStaticVehicle(519, 2039.8500, -2449.0532, 16.1243, -90.0000, 1, 1); // airport maverick

    // Here and there vechicles
    AddStaticVehicle(493, 2805.4114, 299.0978, -0.1892, 234.8013, 36, 13); // Jetmax at the corner to las venturas
    AddStaticVehicle(604, 2450.9421, -77.5184, 26.2263, 91.9721, 0, 0); // Ghost TAXI in Polomino Creak
    SetVehicleNumberPlate(20, "I.H8.u"); // Its license plate

/*
-----------------------------------------------------------------------------------------------------------------
*/

// This part adds christmas trees, decorations and general mapping stuff like houses around the map.
    /*
        //Christistmas Tree
        CreateObject(19076, -1987.31, 720.75, 43.50, 0.0, 0.0, 0.0);
        CreateObject(19076, -1976.34, 721.35, 43.50, 0.0, 0.0, 0.0);
        CreateObject(19076, -1993.96, 707.66, 43.50, 0.0, 0.0, 0.0);
        CreateObject(19076, -1993.91, 716.65, 43.50, 0.0, 0.0, 0.0);
        CreateObject(19076, -1951.72, 719.05, 43.50, 0.0, 0.0, 0.0);
        CreateObject(19076, -1926.69, 721.96, 43.50, 0.0, 0.0, 0.0);
        CreateObject(19076, -1915.98, 721.39, 43.50, 0.0, 0.0, 0.0);
        CreateObject(19076, -1908.66, 716.56, 43.50, 0.0, 0.0, 0.0);
        CreateObject(19076, -1909.45, 708.68, 43.50, 0.0, 0.0, 0.0);
    */

    CreateObject(19076, -1987.31006, 720.75000, 42.99654,   0.00000, 0.00000, 0.00000); // add these things 
    CreateObject(19076, -1976.33997, 721.34998, 42.64978,   0.00000, 0.00000, 0.00000); // oh yeah i just remeber these are crhistmas trees lol - noted on 12/28/2025
    CreateObject(19076, -1994.02405, 707.12061, 43.22939,   0.00000, 0.00000, 269.77176);
    CreateObject(19076, -1993.91003, 716.65002, 43.34063,   -0.66000, 0.90000, 237.35988);
    CreateObject(19076, -1951.71997, 719.04999, 43.86324,   0.00000, 0.00000, 0.00000);
    CreateObject(19076, -1926.68994, 721.96002, 43.02139,   0.00000, 0.00000, 0.00000);
    CreateObject(19076, -1915.97998, 721.39001, 43.24105,   0.00000, 0.00000, 0.00000);
    CreateObject(19076, -1908.90308, 717.23486, 43.44828,   0.00000, 0.00000, 309.57785);
    CreateObject(19076, -1909.09363, 708.34430, 42.69645,   0.00000, 0.00000, 13.50000);
    CreateObject(19076, -1909.28979, 700.78815, 43.01052,   0.00000, 0.00000, 246.56296);
    CreateObject(19076, -1994.33606, 699.88312, 42.98461,   0.00000, 0.00000, 271.21072);
    CreateObject(19076, -1994.40430, 693.12335, 42.99045,   0.00000, 0.00000, 259.03296);
    CreateObject(19058, -1991.58057, 719.92609, 45.08200,   0.00000, 0.00000, 22.56000);
    CreateObject(19058, -1993.88208, 717.59534, 44.74863,   -3.54000, -5.46000, 72.48000);
    CreateObject(19058, -1990.73694, 717.97748, 46.17600,   0.00000, 0.00000, -26.28000);
    CreateObject(19056, -1992.76270, 718.88879, 45.06738,   0.00000, 0.00000, 56.46001);
    CreateObject(19057, -1993.03369, 720.63837, 44.77590,   4.74001, 0.66000, 17.76000);
    CreateObject(19058, -1991.56140, 719.41034, 46.25731,   11.33999, -5.34000, 21.40331);
    CreateObject(19054, -1992.51599, 717.77899, 44.65838,   0.00000, 0.00000, 0.00000);
    CreateObject(19054, -1992.51599, 717.77899, 45.81816,   -0.78000, 12.29999, 0.00000);
    CreateObject(19060, -1911.83142, 718.61981, 61.33469,   0.00000, 0.00000, 0.00000);
    CreateObject(19060, -1915.54773, 719.46014, 61.33469,   0.00000, 0.00000, 0.00000);
    CreateObject(19060, -1927.69543, 719.37396, 61.33469,   0.00000, 0.00000, 0.00000);
    CreateObject(19060, -1940.96472, 719.29938, 61.33469,   0.00000, 0.00000, 0.00000);
    CreateObject(19060, -1945.51086, 720.49554, 61.33469,   0.00000, 0.00000, 0.00000);
    CreateObject(19060, -1957.64844, 720.24396, 61.33469,   0.00000, 0.00000, 0.00000);
    CreateObject(19060, -1962.19702, 719.27679, 61.33469,   0.00000, 0.00000, 0.00000);
    CreateObject(19060, -1974.72546, 719.38690, 61.33469,   0.00000, 0.00000, 0.00000);
    CreateObject(19060, -1987.51929, 719.43683, 61.33469,   0.00000, 0.00000, 0.00000);
    CreateObject(19060, -1990.85950, 718.00970, 61.33469,   0.00000, 0.00000, 0.00000);
    CreateObject(19060, -1992.12573, 715.24060, 61.33469,   0.00000, 0.00000, 0.00000);
    CreateObject(19060, -1992.21631, 700.48737, 61.33469,   0.00000, 0.00000, 0.00000);
    CreateObject(19060, -1911.16394, 714.63037, 61.33469,   0.00000, 0.00000, 0.00000);
    CreateObject(19060, -1910.47388, 701.05365, 61.33469,   0.00000, 0.00000, 0.00000);
    CreateObject(19061, -11886.97363, -1037.21777, 3301.28735,   0.00000, 0.00000, 0.00000);
    CreateObject(19061, -1911.12292, 717.33563, 61.33580,   0.00000, 0.00000, 0.00000);
    CreateObject(19061, -1912.94849, 719.14246, 61.33580,   0.00000, 0.00000, 0.00000);
    CreateObject(19061, -1933.38599, 719.67316, 61.33580,   0.00000, 0.00000, 0.00000);
    CreateObject(19061, -1964.80457, 719.48993, 61.33580,   0.00000, 0.00000, 0.00000);
    CreateObject(19061, -1989.60059, 719.29907, 61.33580,   0.00000, 0.00000, 0.00000);
    CreateObject(19061, -1992.27930, 713.99445, 61.33580,   0.00000, 0.00000, 0.00000);
    CreateObject(19076, 2485.75684, -1687.02539, 11.24799,   0.00000, 0.00000, 0.00000);
    CreateObject(19076, 2501.76050, -1686.28809, 10.92229,   0.00000, 0.00000, 0.00000);
    CreateObject(19076, 2405.44873, -1672.08801, 11.24799,   0.00000, 0.00000, 0.00000);
    CreateObject(19076, 2388.82495, -1671.56445, 11.24799,   0.00000, 0.00000, 0.00000);
    CreateObject(19076, 2362.46631, -1669.91992, 11.24799,   0.00000, 0.00000, 0.00000);
    CreateObject(19076, 2364.81885, -1646.12988, 11.24799,   0.00000, 0.00000, 0.00000);
    CreateObject(19076, 2376.41235, -1641.48645, 12.40843,   0.00000, 0.00000, 0.00000);
    CreateObject(19076, 2403.18921, -1647.98950, 11.27126,   0.00000, 0.00000, 0.00000);
    CreateObject(19076, 2302.03174, -1720.50439, 12.23001,   0.00000, 0.00000, 0.82141);
    CreateObject(19076, 2301.69165, -1672.59216, 11.24799,   0.00000, 0.00000, 0.00000);
    CreateObject(19076, 2298.12378, -1633.72571, 13.70268,   0.00000, 0.00000, 1.25708);
    CreateObject(19076, 2270.60889, -1646.68860, 11.24799,   0.00000, 0.00000, 359.79898);
    CreateObject(19076, 2264.08008, -1646.62585, 11.24799,   0.00000, 0.00000, 359.79898);
    CreateObject(19076, 2238.33252, -1641.98804, 11.24799,   0.00000, 0.00000, 359.59796);
    CreateObject(19076, 2488.12329, -1647.08032, 16.52186,   9.60000, -4.44000, 0.00000);
    CreateObject(19056, 2496.98999, -1687.95703, 13.07254,   -2.76000, 3.24000, 0.00000);
    CreateObject(19054, 2498.19263, -1687.96228, 13.11216,   0.18000, -1.02000, -47.27997);
    CreateObject(19057, 2497.56274, -1687.96802, 14.20602,   4.74000, -2.64000, 0.00000);
    // CreateObject(14795, 4129.04834, -2111.07275, 8.88561,   0.00000, 0.00000, 0.00000); // Fucking found you you little bitch i had to write a whole debugger for you 
    CreateObject(19076, 2095.38452, -1796.82507, 10.76728,   0.00000, 0.00000, -89.28001);
    CreateObject(19076, 2095.10205, -1817.05505, 10.76728,   0.00000, 0.00000, 92.94000);
    CreateObject(19076, 2073.59058, -1836.59705, 10.92488,   0.00000, 0.00000, -104.76007);
    CreateObject(19060, 2072.75513, -1829.37170, 16.90007,   -60.71999, -91.61997, 0.00000);
    CreateObject(19060, 2072.76563, -1833.66418, 16.90007,   -60.71999, -91.61997, 0.00000);
    CreateObject(19062, 2072.44995, -1831.18152, 18.81788,   -2.22000, -43.68000, 0.00000);
    CreateObject(19076, 2327.83350, -1672.65210, 11.24799,   0.00000, 0.00000, 270.13031);
    CreateObject(19076, 2395.41992, -1721.50244, 11.56093,   0.00000, 0.00000, 0.00000);
    CreateObject(19056, 2375.55054, -1641.98584, 13.03376,   -1.13999, -5.58000, 338.86765);
    CreateObject(19055, 2377.31445, -1641.76819, 12.97357,   -6.42001, 7.44000, 44.29903);
    CreateObject(19076, 2329.61182, -1720.09680, 11.85554,   0.00000, 0.00000, 0.00000);
    CreateObject(19076, 2382.63574, -1720.31238, 11.56093,   0.00000, 0.00000, 329.59213);
    CreateObject(19076, 2408.29590, -1721.45605, 11.56093,   0.00000, 0.00000, 31.04684);
    // CreateObject(1683, 2969.98511, -2173.01001, 1.70922,   -14.21998, 22.44000, 329.32623); // These might be causing some weird shit that i don't wanna deal with - disable for now
    // CreateObject(1683, 2071.70752, -2454.57617, 18.45164,   0.00000, 0.00000, 232.15163); // . . . 
    // CreateObject(1683, 2101.09131, -2458.70117, 18.45164,   0.00000, 0.00000, 232.15163); // That's enough i guess
    CreateObject(19076, 2032.74207, -1704.74780, 11.07143,   0.00000, 0.00000, 87.65319);
    CreateObject(19076, 2052.45361, -1737.74329, 11.07143,   0.00000, 0.00000, 0.00000);
    CreateObject(19076, 2052.75439, -1720.73535, 10.64247,   0.00000, 0.00000, 90.92212);
    CreateObject(19076, 2053.01514, -1705.99976, 11.07143,   0.00000, 0.00000, 90.04896);
    CreateObject(19076, 2011.36548, -1633.80090, 11.07143,   0.00000, 0.00000, 87.65319);
    CreateObject(19076, 2010.53430, -1649.02625, 11.07143,   0.00000, 0.00000, 87.65319);
    CreateObject(19076, 1987.73474, -1701.63928, 14.78679,   0.00000, 0.00000, 88.69941);
    CreateObject(19076, 1987.96313, -1628.63452, 15.66366,   0.00000, 0.00000, 117.99389);
    CreateObject(19076, 1987.85693, -1640.91382, 15.10019,   0.00000, 0.00000, 87.65319);
    CreateObject(19076, 1987.39087, -1665.50049, 14.72681,   0.00000, 0.00000, 88.69941);
    CreateObject(19076, 1952.48926, -1646.24585, 16.00187,   0.00000, 0.00000, 273.42606);
    CreateObject(19076, 1988.89404, -1682.52441, 14.72681,   0.00000, 0.00000, 88.69941);
    CreateObject(19076, 1989.82239, -1719.68665, 14.38578,   0.00000, 0.00000, 88.69941);
    CreateObject(19076, 1987.90039, -1738.44446, 14.38578,   0.00000, 0.00000, 33.65326);
    CreateObject(19076, 1954.96887, -1739.75439, 14.38578,   0.00000, 0.00000, 312.52585);
    CreateObject(19076, 1954.94092, -1718.03784, 14.38578,   0.00000, 0.00000, 216.68900);
    CreateObject(19076, 1955.38293, -1702.64709, 14.38578,   0.00000, 0.00000, 129.05641);
    CreateObject(19076, 1954.70483, -1682.08081, 14.38578,   0.00000, 0.00000, 48.89437);
    CreateObject(19076, 1954.60632, -1628.38281, 14.07602,   0.00000, 0.00000, 202.28468);
    CreateObject(19076, 1954.31299, -1666.86792, 14.38578,   0.00000, 0.00000, 297.19186);
    CreateObject(19076, 1803.60522, -1594.10071, 14.74226,   0.00000, 0.00000, 38.02588);
    CreateObject(19121, 1811.51331, -1602.17957, 13.04848,   0.00000, 0.00000, 0.00000);
    CreateObject(19122, 1811.56201, -1598.71155, 13.09067,   0.00000, 0.00000, 0.00000);
    CreateObject(19122, 1807.19165, -1602.16797, 13.09067,   0.00000, 0.00000, 0.00000);
    CreateObject(18649, -1981.29456, 719.95331, 60.06843,   0.00000, 0.00000, 89.71453);
    CreateObject(18649, -1921.25940, 719.10291, 60.06843,   0.00000, 0.00000, 89.71453);
    CreateObject(18652, -1935.19519, 719.00201, 60.27140,   0.00000, 0.00000, 92.16322);
    CreateObject(18652, -1968.11011, 719.13348, 60.27140,   0.00000, 0.00000, 92.16322);
    CreateObject(19076, -2443.14355, 1242.08374, 31.97267,   0.00000, 0.00000, 258.54776);
    CreateObject(19076, -2358.02441, 1366.44507, 5.85266,   0.00000, 0.00000, 27.02838);
    CreateObject(19076, -2444.93042, 1327.54248, 10.59866,   0.00000, 0.00000, 258.54776);
    CreateObject(19076, -2443.85352, 1309.33264, 15.08506,   0.00000, 0.00000, 258.54776);
    CreateObject(19076, -2443.63525, 1288.86267, 18.94291,   0.00000, 0.00000, 258.54776);
    CreateObject(19076, -2442.89917, 1272.12634, 24.05302,   0.00000, 0.00000, 258.54776);
    CreateObject(19076, -2443.13940, 1258.50293, 27.70591,   0.00000, 0.00000, 258.54776);
    CreateObject(19076, -2465.43188, 1243.35046, 31.97267,   0.00000, 0.00000, 258.54776);
    CreateObject(19076, -2466.64233, 1258.86780, 27.70591,   0.00000, 0.00000, 258.54776);
    CreateObject(19076, -2467.78467, 1273.17664, 24.05302,   0.00000, 0.00000, 258.54776);
    CreateObject(19076, -2466.61426, 1289.84155, 18.94291,   0.00000, 0.00000, 258.54776);
    CreateObject(19076, -2465.70898, 1309.75977, 14.57584,   0.00000, 0.00000, 258.54776);
    CreateObject(19076, -2465.71973, 1322.28125, 10.59866,   0.00000, 0.00000, 258.54776);
    CreateObject(19076, -2465.87842, 1341.85486, 6.68123,   0.00000, 0.00000, 19.13322);
    CreateObject(19076, -2444.47681, 1341.61096, 6.68123,   0.00000, 0.00000, 335.26367);
    CreateObject(19076, -2356.35767, 1234.64258, 28.94840,   0.00000, 0.00000, 280.56595);
    CreateObject(19076, -2374.44702, 1365.69080, 5.85266,   0.00000, 0.00000, 330.74057);
    CreateObject(19076, -2356.15234, 1345.38855, 9.04850,   0.00000, 0.00000, 280.56595);
    CreateObject(19076, -2356.17749, 1325.78174, 12.66862,   0.00000, 0.00000, 280.56595);
    CreateObject(19076, -2356.89063, 1305.44214, 16.07883,   0.00000, 0.00000, 280.56595);
    CreateObject(19076, -2357.32007, 1286.24292, 19.54999,   0.00000, 0.00000, 280.56595);
    CreateObject(19076, -2356.67773, 1269.67773, 22.86855,   0.00000, 0.00000, 280.56595);
    CreateObject(19076, -2355.43945, 1250.62537, 25.40177,   0.00000, 0.00000, 280.56595);
    CreateObject(19076, -2377.32715, 1234.26794, 28.94840,   0.00000, 0.00000, 280.56595);
    CreateObject(19076, -2376.13525, 1250.25562, 25.40177,   0.00000, 0.00000, 280.56595);
    CreateObject(19076, -2376.36011, 1269.83728, 22.86855,   0.00000, 0.00000, 280.56595);
    CreateObject(19076, -2376.53906, 1286.66174, 19.54999,   0.00000, 0.00000, 280.56595);
    CreateObject(19076, -2377.12866, 1305.76404, 16.07883,   0.00000, 0.00000, 280.56595);
    CreateObject(19076, -2377.26855, 1325.95227, 12.66862,   0.00000, 0.00000, 280.56595);
    CreateObject(19076, -2377.77954, 1344.92810, 9.66370,   0.00000, 0.00000, 280.56595);

    // Las venturas new buildings near the uhh..beach thingy
    CreateObject(3316, 2535.30957, 664.45404, 13.19760,   0.02000, 0.00000, 180.00000);
    CreateObject(3316, 2591.44873, 664.46179, 13.19360,   0.02000, 0.00000, 180.00000);
    CreateObject(19850, 2563.38257, 655.88397, 10.23810,   0.00000, 0.00000, 180.00000);
    CreateObject(3307, 2615.74463, 670.02551, 11.24536,   0.00000, 0.00000, 90.12000);
    CreateObject(3316, 2641.42749, 664.55542, 13.19360,   0.02000, 0.00000, 180.00000);

    return 1; // End of OnFilterScriptInit
}

public OnFilterScriptExit()         
{ // Print some info when the script is unloaded or close or whatever you call it
    print("FurrAndreas helpers unloaded."); 
    print("Created: 10/26/2025          ");
    print("Updated: 12/29/2025          ");
    print("HELLHOUND's FurrAndreasHelpers  :3  ");
    return 1;
}
