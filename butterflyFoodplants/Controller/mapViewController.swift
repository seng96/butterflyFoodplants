//
//  mapViewController.swift
//  butterflyFoodplants
//
//  Created by Seng Lam on 2018/6/27.
//  Copyright © 2018年 Seng Lam. All rights reserved.
//

import UIKit
import MapKit

class mapViewController: UIViewController {

    var butterflyFoodplant = ButterflyFoodplant()
    
    @IBOutlet var mapView: MKMapView!
    
    func configure(location: Location){
//        print("lat: ", location.lat, "\t" ,"lon: ", location.lon)
        let anntation = MKPointAnnotation()
        anntation.coordinate = CLLocation(latitude: atof(location.lat), longitude: atof(location.lon)).coordinate
        anntation.title = butterflyFoodplant.name
        self.mapView.addAnnotation(anntation)
    }
    
    func getData(btfName: String){
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
                    configure(location: locations)
                }
            }
        }catch{
            print("error")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData(btfName: butterflyFoodplant.name)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
