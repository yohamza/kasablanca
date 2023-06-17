//
//  House.swift
//  Kasablanca
//
//  Created by Ameer Hamza on 03/06/2023.
//

import Foundation

struct House: Identifiable {
    var id: Int
    var name: String
    var modelName: String
    var details: String
    var price: String
    var displayImage: String
    var houseFeature: HouseFeature
    
    static var houses =
    [
        House(id: 0, name: "Modern House", modelName: "Modern_Home.usdz", details: "1 Kanal House for Sale in DHA Phase 7, Lahore Planning to move to a prime and multi-facilitative area! have a look at this spacious designed 1 kanal house for sale in DHA Phase 7, Lahore. The Educators, The City School, and Govt. Girls Primary School, The Millennium Universal College, and Lahore Garrison University are just a few of the educational institutions that support this region. The amenities around this area are Public Park, Lahore Knowledge Park, DHA Phase 7-blockwise parks and mosques, Ahmad Medical & Surgical Centre, BHU Hospital Barki, Pakistan Kidney & Liver Institute (PKLI) and Research Centre, Defence Raya Golf Resort, Allied Bank, UBL, and Bank of Punjab. Lahore Ring Road, Barki Road, and Shabbir Sharif Road make this society more appealing and connected to other parts of the city. Key Features 6 Bedrooms. Double Glaze Glass Windows for Sound Proofing High-Quality Spanish Tiled Flooring Washrooms are Completely Covered by Spanish Tiles Grohe Fittings Jacuzzi Tubs and Glass Shower Cabins were Installed in the Washrooms Protection Sheets Installed Solid Steelwork Used for Outside Main Gate Seepage Protection was Given while Constructing the Home Fall Ceilings All Over House", price: "12 Crores", displayImage: "house0", houseFeature: HouseFeature(water: true, gas: true, electricty: true, parking: false)),
        
//        House(id: 1, name: "German Style Kasa", modelName: "3LayerHut.usdz", details: "Beautiful 10 Marla Hut for Sale in Sukh Chain, Lahore Planning to move to a prime and multi-facilitative area! have a look at this spacious designed 1 kanal house for sale in DHA Phase 7, Lahore. The Educators, The City School, and Govt. 1 Bedroom 1 Bathroom TV lounge Kitchen Parking Space& ; We highly recommend viewing this property", price: "6 Crores", houseFeature: HouseFeature(water: true, gas: false, electricty: true)),
        
        House(id: 2, name: "Kasa in your City", modelName: "DividedHut.usdz", details: "Phase 7, Rawalpindi Fully Furnished 620 Sqft Apartment for Sale in Bahria Town Phase 7, adjacent to Morgah and DHA Phase 1, Rawalpindi. It comprises of 2 bedrooms, 2 bathrooms, kitchen, store room, and parking area. Key lifestyle and convenience around this property include beautiful parks, Roots Millennium School, Dr. AQ Khan School & College,& ;Begum Akhtar Rukhsana Hospital, and sports center within 1-2 KMs. GT Road and Faisal Avenue can be used for daily commute.", price: "8 Crores", displayImage: "house1", houseFeature: HouseFeature(water: true, gas: false, electricty: true, parking: false)),
        
        House(id: 3, name: "Minimal and Simple House", modelName: "SmallBrownHouse.usdz", details: "600 Sqft. Flat for Sale - G-15 Markaz, Islamabad& ; A luxurious 600 sqft. flat for sale in G-15 Markaz, Islamabad. It consists of 2 bedrooms, 2 washrooms, a TV lounge, a dining room, a laundry room, a kitchen and a car parking space. The neighboring sectors are G-14 and G-13. Key lifestyle and convenience around this property include beautiful parks, commercial areas, restaurants and food outlets, and medical care/ hospital, within 1-2 KMs. The property is in close proximity to Zarkon Heights. Kashmir Highway and GT Road can be used for daily commutes. Salient Features: 2 Bedrooms& ; 2 Washrooms TV Lounge Dining Room Kitchen Laundry Room Parking Space.", price: "80 Lakhs", displayImage: "house2", houseFeature: HouseFeature(water: true, gas: true, electricty: true, parking: true)),
        
        House(id: 4, name: "British Style House", modelName: "BritishHouse.usdz", details: "1 Kanal House for Sale in DHA Phase 6, Lahore Architectural-designed 1 kanal house for sale in DHA Phase 6, Lahore. Key lifestyles and conveniences around this property include The City School - DHA Campus, Beaconhouse School, The Educators School, National Music Academy Pakistan, Lahore Garrison University, The Millennium Universal College, DHA Phase 6-Sectorwise Jamia mosques, and Jamia Masjid Rehmat Al-Hadis. The amenities around this area are beautiful parks, Avicenna Hospital, Sharif Hospital, Lahore Electrolysis Clinic, Pakistan Kidney & Liver Institute (PKLI) and Research Centre, Defence Raya Golf Club, Restaurants like Grill town, Nando's, Broadway Pizza, Domino's, Allied Bank, Sindh Bank, Askari Bank, and Habib Bank. Barki Road and Lahore Ring Road can be used for daily commutes. Key Features Double-storey with Basement 5 Bedrooms", price: "15.5 Crores", displayImage: "house3", houseFeature: HouseFeature(water: true, gas: false, electricty: true, parking: true)),
        
        House(id: 5, name: "Beautiful Indie House", modelName: "3LayerHutWithTrees.usdz", details: "Bahria Town Phase 4, Islamabad A Luxurious 550 Sqft apartment for Sale in Bahria Town Phase 4, near DHA Phase 2, PWD and Gulrez, Islamabad. It comprises of 1 bedroom, 1 bathroom, TV lounge, kitchen, and parking area. Lights, door locks and tapes are in excellent working condition. Key lifestyle and convenience around this property include family parks, Jammia Masjid,& ;Fauji Foundation Hospital, Grande II, Bahria Heights-IV, Bahria Heights-II, mini Golf Club, and Reliance Hospital. GT Road and Faisal Avenue can be used for daily commute.", price: "2 Crores", displayImage: "house4", houseFeature: HouseFeature(water: true, gas: true, electricty: false, parking: true)),
        House(id: 6, name: "Kasa in your City", modelName: "DividedHut.usdz", details: "Phase 7, Rawalpindi Fully Furnished 620 Sqft Apartment for Sale in Bahria Town Phase 7, adjacent to Morgah and DHA Phase 1, Rawalpindi. It comprises of 2 bedrooms, 2 bathrooms, kitchen, store room, and parking area. Key lifestyle and convenience around this property include beautiful parks, Roots Millennium School, Dr. AQ Khan School & College,& ;Begum Akhtar Rukhsana Hospital, and sports center within 1-2 KMs. GT Road and Faisal Avenue can be used for daily commute.", price: "8 Crores", displayImage: "house1", houseFeature: HouseFeature(water: true, gas: false, electricty: true, parking: false)),
        
        House(id: 7, name: "Minimal and Simple House", modelName: "SmallBrownHouse.usdz", details: "600 Sqft. Flat for Sale - G-15 Markaz, Islamabad& ; A luxurious 600 sqft. flat for sale in G-15 Markaz, Islamabad. It consists of 2 bedrooms, 2 washrooms, a TV lounge, a dining room, a laundry room, a kitchen and a car parking space. The neighboring sectors are G-14 and G-13. Key lifestyle and convenience around this property include beautiful parks, commercial areas, restaurants and food outlets, and medical care/ hospital, within 1-2 KMs. The property is in close proximity to Zarkon Heights. Kashmir Highway and GT Road can be used for daily commutes. Salient Features: 2 Bedrooms& ; 2 Washrooms TV Lounge Dining Room Kitchen Laundry Room Parking Space.", price: "80 Lakhs", displayImage: "house2", houseFeature: HouseFeature(water: true, gas: true, electricty: true, parking: true)),
        
        House(id: 8, name: "British Style House", modelName: "BritishHouse.usdz", details: "1 Kanal House for Sale in DHA Phase 6, Lahore Architectural-designed 1 kanal house for sale in DHA Phase 6, Lahore. Key lifestyles and conveniences around this property include The City School - DHA Campus, Beaconhouse School, The Educators School, National Music Academy Pakistan, Lahore Garrison University, The Millennium Universal College, DHA Phase 6-Sectorwise Jamia mosques, and Jamia Masjid Rehmat Al-Hadis. The amenities around this area are beautiful parks, Avicenna Hospital, Sharif Hospital, Lahore Electrolysis Clinic, Pakistan Kidney & Liver Institute (PKLI) and Research Centre, Defence Raya Golf Club, Restaurants like Grill town, Nando's, Broadway Pizza, Domino's, Allied Bank, Sindh Bank, Askari Bank, and Habib Bank. Barki Road and Lahore Ring Road can be used for daily commutes. Key Features Double-storey with Basement 5 Bedrooms", price: "15.5 Crores", displayImage: "house3", houseFeature: HouseFeature(water: true, gas: false, electricty: true, parking: true)),
        
        House(id: 9, name: "Beautiful Indie House", modelName: "3LayerHutWithTrees.usdz", details: "Bahria Town Phase 4, Islamabad A Luxurious 550 Sqft apartment for Sale in Bahria Town Phase 4, near DHA Phase 2, PWD and Gulrez, Islamabad. It comprises of 1 bedroom, 1 bathroom, TV lounge, kitchen, and parking area. Lights, door locks and tapes are in excellent working condition. Key lifestyle and convenience around this property include family parks, Jammia Masjid,& ;Fauji Foundation Hospital, Grande II, Bahria Heights-IV, Bahria Heights-II, mini Golf Club, and Reliance Hospital. GT Road and Faisal Avenue can be used for daily commute.", price: "2 Crores", displayImage: "house4", houseFeature: HouseFeature(water: true, gas: true, electricty: false, parking: true)),
    ]
}

struct HouseFeature {
    var water: Bool
    var gas: Bool
    var electricty: Bool
    var parking: Bool
}
