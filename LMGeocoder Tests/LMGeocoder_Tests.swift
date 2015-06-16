//
//  LMGeocoder_Tests.swift
//  LMGeocoder Tests
//
//  Created by dgoon on 2015. 6. 16..
//  Copyright (c) 2015년 Hyperconnect. All rights reserved.
//

import UIKit
import XCTest
import LMGeocoder
import CoreLocation

class LMGeocoder_Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        let geocoder = LMGeocoder.sharedInstance()
        //36.902197,55.748750 :
        let coordinate = CLLocationCoordinate2D(latitude: 36.902197, longitude: 55.748750)
        geocoder.reverseGeocodeCoordinate(coordinate, service: .GoogleService) { (address: LMAddress!, error: NSError!) in
            println("\(address)")
        }
        
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
