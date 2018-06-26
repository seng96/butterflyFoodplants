//
//  butterflyDetailMapCell.swift
//  butterflyFoodplants
//
//  Created by Seng Lam on 2018/6/27.
//  Copyright © 2018年 Seng Lam. All rights reserved.
//

import UIKit
import MapKit

class butterflyDetailMapCell: UITableViewCell {

    @IBOutlet var mapView: MKMapView!
    
    
    func configure(location: Location){
        print("lat: ", location.lat, "\t" ,"lon: ", location.lon)
        let anntation = MKPointAnnotation()
        anntation.coordinate = CLLocation(latitude: atof(location.lat), longitude: atof(location.lon)).coordinate
        self.mapView.addAnnotation(anntation)
        let region = MKCoordinateRegionMakeWithDistance(anntation.coordinate, 250, 250)
        self.mapView.setRegion(region, animated: false)
    }
    
    func getData(btfName: String) -> Location{
        let locations = Location()
        var urlComponents: URLComponents = URLComponents(string: "https://opendata.epa.gov.tw")!
        urlComponents.path = "/ws/Data/Butterfly/"
        urlComponents.queryItems = [URLQueryItem(name: "$format", value: "json"), URLQueryItem(name:"$filter", value:"CommonName eq '\(btfName)'")]
        let searchURL = urlComponents.url!
        do{
            let data = try Data(contentsOf: searchURL)
            if let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [AnyObject] {
                for result in json! {
                    if let Lat = result["WGS84Lat"] {
                        locations.lat = Lat as! String
                    }
                    if let Lon = result["WGS84Lon"] {
                        locations.lon = Lon as! String
                    }
                }
            }
        }catch{
              print("error")
        }
        return locations
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
