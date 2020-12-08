# swift-aws-lambda-starter

Use this package to as a starting point for Swift in AWS Lambda.

## Usage
1. Clone this repo
1. Update instances of `swift-aws-lambda-starter` throughout project with your target name
1. Implement your lambda
1. Start Docker
1. Execute `./deploy.sh`
1. Upload `{repo root}/.build/lambda/{target}/lambda.zip` as source to AWS Lambda

## Sources
[Introducing Swift AWS Lambda Runtime](https://swift.org/blog/aws-lambda-runtime/)

[Use Swift on AWS Lambda with Xcode](https://developer.apple.com/videos/play/wwdc2020/10644/)

[swift-aws-lambda-runtime](https://github.com/swift-server/swift-aws-lambda-runtime)
