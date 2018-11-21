import Vapor
import PerfectNotifications

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    NotificationPusher.addConfigurationAPNS(
        name: notificationsAppId,
        production: false, // should be false when running pre-release app in debugger
        keyId: apnsKeyIdentifier,
        teamId: apnsTeamIdentifier,
        privateKeyPath: apnsPrivateKeyFilePath)
    
    router.post("notification") { req -> Future<HTTPStatus> in
        return try req.content.decode(Request.self).map { Request in
            print(Request.deviceIds)
            print(Request.title)
            print(Request.content)
            print(Request.customPayload)
            
            let n = NotificationPusher(apnsTopic: notificationsAppId)
            n.pushAPNS(
                configurationName: notificationsAppId,
                deviceTokens: Request.deviceIds,
                notificationItems: [.alertTitle(Request.title),
                                    .alertBody(Request.content),
                                    .customPayload("custom1", Request.customPayload.custom1),
                                    .customPayload("custom2", Request.customPayload.custom2),
                                    .customPayload("custom3", Request.customPayload.custom3),
                                    .sound("default")]) {
                    responses in
                    print("\(responses)")
            }
            return HTTPStatus.ok
        }
    }
}
