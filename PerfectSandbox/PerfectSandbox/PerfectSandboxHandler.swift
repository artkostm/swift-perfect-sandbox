//
//  PerfectSandboxHandler.swift
//  PerfectSandbox
//
//  Created by Arttsiom Chuiko on 31/05/16.
//  Copyright © 2016 Arttsiom Chuiko. All rights reserved.
//

import Foundation
import PerfectLib

public func PerfectServerModuleInit() {
    Routing.Handler.registerGlobally()
    Routing.Routes["GET", ["/", "index.html"]] = { (_:WebResponse) in return IndexHandler() }
}

class IndexHandler: RequestHandler {
    func handleRequest(request: WebRequest, response: WebResponse) {
        response.appendBodyString("Hello Perfect")
        response.requestCompletedCallback()
    }
}