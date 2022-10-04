# Unsplash Posts

## Info
- State Management: BLoC 8.1.1
- Navigation Management: GoRouter 5.0.5
- Network Requests Handler: Dio 4.0.6

## Build runner command
- flutter pub run build_runner watch --delete-conflicting-outputs

## API Limitations
> For applications in demo mode, the Unsplash API currently places a limit of 50 requests per hour 
- x-ratelimit-limit: 50
- x-ratelimit-remaining: 49