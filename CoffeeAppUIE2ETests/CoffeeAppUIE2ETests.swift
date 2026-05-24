//
//  CoffeeAppUIE2ETests.swift
//  CoffeeAppUIE2ETests
//
//  Created by Arjun Saseendran on 20/05/26.
//

import XCTest

final class when_app_is_launched_with_no_orders: XCTestCase {

    

func test_should_make_sure_no_orders_message_is_displayed()  {
        let app = XCUIApplication()
        continueAfterFailure = false
    app.launchEnvironment = ["ENV" : "TEST"]
    app.launch()
    
    XCTAssertEqual("No orders avilable!", app.staticTexts["noOrdersText"].label)
    

        
    }

   
}
