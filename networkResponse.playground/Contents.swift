import UIKit

typealias responseCode = (title: String,  currentCode: Int, startCode: Int, endCode: Int, description: String)
let statusCode = Int.random(in: 100...602)

let informational = responseCode("Information", statusCode, 100, 199, "Request received, continuing process")
let successful = responseCode("Successful", statusCode, 200, 299, "The action was successfuly received, understood, and accepted")
let redirection = responseCode("Redirection", statusCode, 300, 399, "Futher action must be taken in order to complete the request")
let clientError = responseCode("Client Error", statusCode, 400, 499, "The request contains bad syntax or cannot be fulfiled")
let serverError = responseCode("Server Error", statusCode, 500, 599, "The server failed to fulfill an apparently valid request")

switch statusCode{
case 100...199:
    print(informational)
case 200...299:
    print(successful)
case 300...399:
    print(redirection)
case 400...499:
    print(clientError)
case 500...599:
    print(serverError)
default:
    print("Unknown")
}



