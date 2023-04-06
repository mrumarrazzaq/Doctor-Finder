import io.agora.media.RtcTokenBuilder2;
import io.agora.media.RtcTokenBuilder2.Role;


public class App {
    static String appId = "8c8b691ac63e49baa675335905114819";
    static String appCertificate = "91067f8213de469da417917543e0229f";
    static String channelName = "video-call";
    static int uid = 0; // The integer uid, required for an RTC token
    static int expirationTimeInSeconds = 3600; // The time after which the token expires

    public static void main(String[] args) throws Exception {
        RtcTokenBuilder2 tokenBuilder = new RtcTokenBuilder2();
        // Calculate the time expiry timestamp
        int timestamp = (int)(System.currentTimeMillis() / 1000 + expirationTimeInSeconds);

        System.out.println("UID token");
        String result = tokenBuilder.buildTokenWithUid(appId, appCertificate,
                channelName, uid, Role.ROLE_PUBLISHER, timestamp, timestamp);
        System.out.println(result);
    }
}
