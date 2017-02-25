//
//  ViewController.swift
//  testMap
//
//  Created by Kitthana on 2/22/2560 BE.
//  Copyright © 2560 Kitthana. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var Map: MKMapView!
    
    
    override func viewDidLoad() { //ทำใน viewDidLoad เพราะ จะทำโค้นี้เมื่อเปิด App ขึ้นมาทันที
        super.viewDidLoad()

       
        let location = CLLocationCoordinate2DMake(13.744815, 100.565090) //ตั้งตำแหน่ง ละติจูด ลองติจูด หาจาก Google Maps
        
        let span = MKCoordinateSpanMake(0.1, 0.1) //SET ขนาดความห่างที่จะแสดงบนจอ ถ้ายิ่งเลขมากจะzoomออกมาก
        let region = MKCoordinateRegion(center: location, span: span) // ตั้งให้ตัวหมุดอยู่กลางจอ
        Map.setRegion(region, animated: true) //  ให้แสดงผลคำสั่งบน
        
        let annotation = MKPointAnnotation() //หมุด
        
        annotation.coordinate = location //ให้หมุดไปอยู่ในตำแหน่งที่เราตั้งค่าไว้ 13.744815, 100.565090
        annotation.title = "SWU" //ตั้งชื่อตำแหน่งที่เราปักหมุด
        annotation.subtitle = "University" //เขียนคำอธิบาย
        
        Map.addAnnotation(annotation) //เพิ่มคำสั่งหมุดลงไปในแผนที่เพื่อให้แสดงผล
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

