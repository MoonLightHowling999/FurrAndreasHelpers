// This is a filter script that is meant to help with FurrAndreas.
// Author: HELLHOUND aka Maxwell Nextem, Foxxie Doxxie Doggie Boggie bla bla a lot of ther usernames i'm konown by
// Date: 10/26/2025 - 12/29/2025 (Last Updated). Format: MM/DD/YYYY

/*
-----------------------------------------------------------------------------------------------------------------
*/

#include <open.mp> // keep this here cuz its the only one that's being used

// Just added these commands for /mdl and /mdl is just a temp command for testing custom models, please delete it later if you dont need it.
#include <IZCMD>  // Command processor
#include <sscanf2> // For parsing command parameters

/* // disabled includes cuz they arent used and they could increase compile time
#include <core>
#include <float>
#include <string>
#include <file>
#include <time>
*/


#define FILTERSCRIPT // Defines this as a filter script or it won't work ofc

// Object editing tracking
#define MAX_PLAYER_OBJECTS 100
new PlayerEditingObject[MAX_PLAYERS] = {-1, ...}; // Track which object player is editing (-1 = none)
new PlayerObjectID[MAX_PLAYERS][MAX_PLAYER_OBJECTS]; // Track object IDs created by each player
new PlayerObjectCount[MAX_PLAYERS] = {0, ...}; // Count of objects created by each player

public OnFilterScriptInit()
{
    print("FurrAndreas helpers loaded.");
    print("Created: 10/26/2025        ");
    print("Updated: 1/26/2026        "); // PLEASE UPDATE THIS DATE WHENEVER YOU MAKE CHANGES, FUCK YOU.
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

    //Objects
    AddSimpleModel(-1, 19379, -2000, "wallzzz.dff", "wallzzz.txd"); // Idk lol
    AddSimpleModel(-1, 19379, -2001, "Hello.dff", "Hello.txd"); // Test object 4
    AddSimpleModel(-1, 19379, -2002, "furrandreas.dff", "furrandreas.txd"); // FurrAndreas logo model


    // and here it ends

    /*
    -----------------------------------------------------------------------------------------------------------------
    */

    // Vehicle Loading System - Arrays for automatic ID tracking and license plate assignment
    // This eliminates the need to hardcode vehicle IDs and ensures plates assign correctly

    // Define vehicle data: {model, x, y, z, angle, color1, color2, plate}
    new const VehicleData[][8] = {
        // FurrAndreas First ever static vehicle
        {445, -2644, 1332, 7, 273, 1, 1, 0}, // FURRYSRV
        
        // San Fierro Hospital - Santa Flora
        {416, -2544, 586, 14, 90, 1, 3, 0}, // FA01SNTA
        {416, -2544, 592, 14, 90, 3, 3, 0}, // FA02SNTA
        
        // Los Santos Hospital - Idlewood
        {416, 2030, -1438, 17, 179, 1, 3, 0}, // FA01IDLW
        {416, 2035, -1438, 17, 179, 3, 3, 0}, // FA02IDLW
        
        // Los Santos Hospital - Market
        {416, 1180, -1308, 13, 269, 1, 3, 0}, // FA01MRKT
        
        // Las Venturas Hospital
        {416, 1582, 1745, 10, 91, 1, 3, 0}, // FA01LV
        {416, 1592, 1818, 10, 1, 3, 3, 0}, // FA02LV
        
        // Fort Carson Hospital & Police
        {416, -331, 1062, 19, 271, 3, 3, 0}, // FA01FC
        {599, -228, 992, 19, 298, 46, 1, 0}, // FCPD01
        {599, -228, 998, 19, 298, 46, 1, 0}, // FCPD02
        
        // Bayside Hospital
        {416, -2594, 2262, 8, 273, 1, 3, 0}, // FA01BAY
        {416, -2595, 2267, 8, 291, 3, 1, 0}, // FA02BAY
        
        // El Quebrados Hospital & Police
        {416, -1509, 2525, 55, 359, 1, 3, 0}, // FA01ELQ
        {416, -1503, 2525, 55, 2, 1, 3, 0}, // FA02ELQ
        {598, -1399, 2628, 55, 90, 41, 1, 0}, // EQPD01
        {598, -1400, 2631, 55, 90, 41, 1, 0}, // EQPD02
        {598, -1399, 2634, 55, 90, 41, 1, 0}, // EQPD03
        {599, -1410, 2659, 55, 179, 41, 1, 0}, // EQPD04
        {599, -1406, 2658, 55, 179, 41, 1, 0}, // EQPD05
        
        // Los Santos Airport
        {519, 1603, -2623, 14, 32, 1, 1, 0}, // Airport Mechanic 1
        {519, 1625, -2622, 14, 32, 1, 1, 0}, // Airport Mechanic 2
        {519, 1649, -2621, 14, 32, 1, 1, 0}, // Airport Shamal
        {519, 1967, -2237, 16, 3, 1, 1, 0}, // Airport Cargobob
        {519, 2039, -2449, 16, -90, 1, 1, 0}, // Airport Maverick
        
        // Scattered Vehicles
        {493, 2805, 299, 0, 234, 36, 13, 0}, // Jetmax at Las Venturas corner
        {604, 2450, -77, 26, 91, 0, 0, 0} // Ghost TAXI in Polomino Creak
    };

    new const VehiclePlates[][] = {
        "FURRYSRV",     // 0
        "FA01SNTA",     // 1
        "FA02SNTA",     // 2
        "FA01IDLW",     // 3
        "FA02IDLW",     // 4
        "FA01MRKT",     // 5
        "FA01LV",       // 6
        "FA02LV",       // 7
        "FA01FC",       // 8
        "FCPD01",       // 9
        "FCPD02",       // 10
        "FA01BAY",      // 11
        "FA02BAY",      // 12
        "FA01ELQ",      // 13
        "FA02ELQ",      // 14
        "EQPD01",       // 15
        "EQPD02",       // 16
        "EQPD03",       // 17
        "EQPD04",       // 18
        "EQPD05",       // 19
        "",             // 20 - No plate since this is a plane "shamal" to be exact, same for the rest.
        "",             // 21 - No place 
        "",             // 22 - No plate
        "",             // 23 - No plate
        "",             // 24 - No plate
        "",             // 25 - No plate
        "I.H8.u"        // 26
    };

    // Load all vehicles and assign plates automatically
    for (new i = 0; i < sizeof(VehicleData); i++)
    {
        new Float:x = float(VehicleData[i][1]);
        new Float:y = float(VehicleData[i][2]);
        new Float:z = float(VehicleData[i][3]);
        new Float:angle = float(VehicleData[i][4]);
        
        new vehicleid = AddStaticVehicle(
            VehicleData[i][0],  // model
            x, y, z,            // position
            angle,              // angle
            VehicleData[i][5],  // color1
            VehicleData[i][6]   // color2
        );
        
        // Assign license plate if one exists
        if (VehiclePlates[i][0] != '\0')
            SetVehicleNumberPlate(vehicleid, VehiclePlates[i]);
    }

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
    // CreateObject(1683, 2071.70752, -2454.57617, 18.45164,   0.00000, 0.00000, 232.15163); // ...
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

    // New island
    CreateObject(11693, -12001.87305, 499.14133, -5.23584,   -1.68000, -0.36000, 0.00000);
    CreateObject(11696, -12159.90771, 520.33289, -52.58772,   5.94000, 4.02000, 32.34002);
    CreateObject(11695, -12066.38599, 673.89099, 21.94117,   0.00000, 0.00000, -8.10000);
    CreateObject(19593, -12120.99072, 381.78571, -6.68688,   31.86001, 10.26001, 21.89999);
    CreateObject(19879, -12073.34839, 302.98685, 14.59796,   -29.16002, 21.96000, 0.00000);
    CreateObject(18751, -12073.13696, 313.14725, 1.62675,   0.00000, 0.00000, 0.00000);
    CreateObject(9957, -11976.78271, 319.36832, -31.89294,   -0.36001, 21.24003, -43.43999);
    CreateObject(5333, -11824.29858, 208.90216, 6.48571,   -33.36002, 10.37991, -20.46001);
    CreateObject(18751, -12127.98340, 289.36411, -0.03922,   0.36000, -1.68000, 30.12000);
    CreateObject(18751, -12148.44434, 344.68399, 0.09334,   0.36000, -1.68000, 21.84001);
    CreateObject(18751, -12165.96875, 391.93826, 0.09334,   0.36000, -1.68000, -85.74001);
    CreateObject(16599, -12165.87744, 359.53619, 4.85118,   -19.20000, -41.57996, 0.60000);
    CreateObject(16599, -12173.65820, 356.93945, 6.34956,   -2.94000, 12.00000, 0.00000);
    CreateObject(16599, -12179.77002, 355.80893, 4.04745,   -3.00000, -2.99998, 21.12001);
    CreateObject(16599, -12187.87354, 349.36942, 2.40092,   -61.08000, 37.37999, 0.00000);
    CreateObject(1395, -12042.42725, 358.68613, 5.02735,   4.56000, 7.13999, -30.35999);
    CreateObject(1395, -12030.44702, 321.31293, 5.02735,   -20.28003, -11.03999, 44.81999);
    CreateObject(5126, -12044.64087, 370.02814, 3.14798,   -10.01999, -2.76001, -49.49998);
    CreateObject(5408, -12065.52734, 574.32996, 34.33768,   12.35999, -11.09999, 126.59999);
    CreateObject(9829, -11861.19556, 536.88391, -61.80881,   0.00000, 0.00000, 202.20010);



    // Las venturas new buildings near the uhh..beach thingy
    CreateObject(3316, 2535.30957, 664.45404, 13.19760,   0.02000, 0.00000, 180.00000);
    CreateObject(3316, 2591.44873, 664.46179, 13.19360,   0.02000, 0.00000, 180.00000);
    CreateObject(19850, 2563.38257, 655.88397, 10.23810,   0.00000, 0.00000, 180.00000);
    CreateObject(3307, 2615.74463, 670.02551, 11.24536,   0.00000, 0.00000, 90.12000);
    CreateObject(3316, 2641.42749, 664.55542, 13.19360,   0.02000, 0.00000, 180.00000);

    // Here i'll add my own custom objects
    CreateObject(-2002, -1551.96912, 741.29041, 8.10408,   0.00000, 0.00000, 0.00000);


    return 1; // End of OnFilterScriptInit
}

public OnFilterScriptExit()
{
    // Print some info when the script is unloaded or close or whatever you call it
    print("FurrAndreas helpers unloaded.");
    print("Created: 10/26/2025          ");
    print("Updated: 12/29/2025          ");
    print("HELLHOUND's FurrAndreasHelpers  :3  ");
    return 1;
}

CMD:select(playerid, params[])
{
    new objectid;
    
    if (sscanf(params, "d", objectid))
    {
        BeginObjectSelecting(playerid);
        SendClientMessage(playerid, 0xFFFFFFFF, "{74C0A3}Usage: /select <object_id> or just /select to click objects");
        return 1;
    }
    
    BeginObjectEditing(playerid, objectid);
    SendClientMessage(playerid, 0xFFFFFFFF, "{74C0A3}Editing object %d. Use arrow keys and mouse to edit.", objectid);
    return 1;
}

CMD:mdl(playerid, params[]) // Command to spawn an object at the player's location for editing
{
    new objectid;

    if (sscanf(params, "d", objectid))
        return SendClientMessage(playerid, 0xFFFFFFFF, "{74C0A3}Usage: /mdl <object_id>");

    new Float:x, Float:y, Float:z, Float:angle;
    GetPlayerPos(playerid, x, y, z);
    GetPlayerFacingAngle(playerid, angle);

    // Offset 5 units in front of player so it doesn't spawn inside them
    x += 5 * floatsin(-angle, degrees);
    y += 5 * floatcos(-angle, degrees);

    // Create the object
    new obid = CreateObject(objectid, x, y, z, 0, 0, 0);
    
    // Track the object for this player
    if (PlayerObjectCount[playerid] < MAX_PLAYER_OBJECTS)
    {
        PlayerObjectID[playerid][PlayerObjectCount[playerid]] = obid;
        PlayerObjectCount[playerid]++;
    }
    
    // Start object editing
    BeginPlayerObjectEditing(playerid, obid);
    PlayerEditingObject[playerid] = obid;

    new msg[128];
    format(msg, sizeof(msg), "{74C0A3}Object %d spawned! Use the editor to position it. (Objects: %d)", objectid, PlayerObjectCount[playerid]);
    SendClientMessage(playerid, 0xFFFFFFFF, msg);

    return 1;
}

CMD:clearobjects(playerid, params[])
{
    new count = PlayerObjectCount[playerid];
    
    for (new i = 0; i < count; i++)
    {
        DestroyObject(PlayerObjectID[playerid][i]);
    }
    
    PlayerObjectCount[playerid] = 0;
    
    new msg[64];
    format(msg, sizeof(msg), "{D43737}Cleared %d objects.", count);
    SendClientMessage(playerid, 0xFFFFFFFF, msg);
    
    return 1;
}

CMD:objectcount(playerid, params[])
{
    new msg[64];
    format(msg, sizeof(msg), "{74C0A3}You have %d objects created.", PlayerObjectCount[playerid]);
    SendClientMessage(playerid, 0xFFFFFFFF, msg);
    return 1;
}
