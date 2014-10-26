//
//  GRMustacheTests.swift
//  GRMustacheTests
//
//  Created by Gwendal Roué on 25/10/2014.
//  Copyright (c) 2014 Gwendal Roué. All rights reserved.
//

import UIKit
import XCTest

class GRMustacheTests: XCTestCase {
    
//    override func setUp() {
//        super.setUp()
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//    
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//        super.tearDown()
//    }
//    
//    func testExample() {
//        // This is an example of a functional test case.
//        XCTAssert(true, "Pass")
//    }
//    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measureBlock() {
//            // Put the code you want to measure the time of here.
//        }
//    }

    func testSwift() {
        var error: NSError?
        let templateRepository = TemplateRepository()
        if let template = templateRepository.templateFromString("<{{name}}>", error: &error) {
            let data: MustacheValue = .DictionaryValue(["name": .StringValue("Arthur")])
            let rendering = template.render(data, error: &error)
            XCTAssertEqual(rendering!, "<Arthur>", "")
        }
    }
    
    func testObjC() {
        var error: NSError?
        let templateRepository = TemplateRepository()
        if let template = templateRepository.templateFromString("<{{name}}>", error: &error) {
            let data: MustacheValue = .ObjCValue(["name": "Arthur"])
            let rendering = template.render(data, error: &error)
            XCTAssertEqual(rendering!, "<Arthur>", "")
        }
    }
}