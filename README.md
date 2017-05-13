# SwiftyBeaver Logging Provider for Vapor
[![Language Swift 3](https://img.shields.io/badge/Language-Swift%203-orange.svg)](https://swift.org) [![Kitura 1.7.x](https://img.shields.io/badge/Kitura-1.7.x-blue.svg)](http://www.kitura.io/) 
[![SwiftyBeaver 1.x](https://img.shields.io/badge/SwiftyBeaver-1.x-blue.svg)](https://github.com/SwiftyBeaver/SwiftyBeaver) 

Adds the powerful logging of [SwiftyBeaver](https://github.com/SwiftyBeaver/SwiftyBeaver) to [Kitura](https://github.com/IBM-Swift/Kitura) for server-side Swift 3 on Linux and Mac.

## Installation

Add this to the `Package.swift` of your Vapor project:

```swift
dependencies: [
	.Package(url: "https://github.com/lgaches/SwiftyBeaver-Kitura.git", majorVersion: 0),
	//...other packages here
],
```
<br/>

## Setup

```swift
import Kitura
import LoggerAPI
import SwiftyBeaver
import SwiftyBeaverKitura

let console = ConsoleDestination()
let logger = SwiftyBeaverKitura(destinations: [console])
Log.logger = logger
```

Add the SwiftyBeaver [logging destinations](http://docs.swiftybeaver.com/category/8-logging-destinations) you want to use, optionally adjust their defaults like format, color, filter or minimum log level and you are ready to log 🙌


## Use

```swift
// Create a new router
let router = Router()

// Handle HTTP GET requests to /
router.get("/") {
    request, response, next in

    Log.verbose("not so important")
    Log.debug("something to debug")
    Log.info("a nice information")
    Log.warning("oh no, that won’t be good")
    Log.error("ouch, an error did occur!")

    response.send("Hello, World!")
    next()
}

// Add an HTTP server and connect it to the router
Kitura.addHTTPServer(onPort: 8080, with: router)

// Start the Kitura runloop (this call never returns)
Kitura.run()
```


