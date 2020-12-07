import AWSLambdaRuntime
import AWSLambdaEvents
import SotoDynamoDB

struct SwiftAwsLambdaStarter: EventLoopLambdaHandler {
    typealias In = APIGateway.V2.Request
    typealias Out = APIGateway.V2.Response

    func handle(context: Lambda.Context, event: APIGateway.V2.Request) -> EventLoopFuture<APIGateway.V2.Response> {
        context
            .eventLoop
            .makeSucceededFuture(
                APIGateway.V2.Response(statusCode: .alreadyReported,
                                       headers: nil,
                                       multiValueHeaders: nil,
                                       body: nil,
                                       isBase64Encoded: nil,
                                       cookies: nil)
            )
    }
}

Lambda.run(SwiftAwsLambdaStarter())
