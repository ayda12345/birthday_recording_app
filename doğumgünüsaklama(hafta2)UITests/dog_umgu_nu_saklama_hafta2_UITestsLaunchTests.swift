//
//  dog_umgu_nu_saklama_hafta2_UITestsLaunchTests.swift
//  doğumgünüsaklama(hafta2)UITests
//
//  Created by Aydanur MERAL on 20.04.2024.
//

import XCTest

final class dog_umgu_nu_saklama_hafta2_UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
