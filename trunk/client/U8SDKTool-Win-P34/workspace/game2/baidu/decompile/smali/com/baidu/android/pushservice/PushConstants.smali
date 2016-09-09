.class public final Lcom/baidu/android/pushservice/PushConstants;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_MESSAGE:Ljava/lang/String; = "com.baidu.android.pushservice.action.MESSAGE"

.field public static final ACTION_METHOD:Ljava/lang/String; = "com.baidu.android.pushservice.action.METHOD"

.field public static final ACTION_RECEIVE:Ljava/lang/String; = "com.baidu.android.pushservice.action.RECEIVE"

.field public static final ERROR_SUCCESS:I = 0x0

.field public static final EXTRA_APP:Ljava/lang/String; = "app"

.field public static final EXTRA_CONTENT:Ljava/lang/String; = "content"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "error_msg"

.field public static final EXTRA_METHOD:Ljava/lang/String; = "method"

.field public static final EXTRA_PUSH_MESSAGE:Ljava/lang/String; = "message"

.field public static final LOGIN_TYPE_ACCESS_TOKEN:I = 0x1

.field public static final LOGIN_TYPE_API_KEY:I = 0x0

.field public static final LOGIN_TYPE_BDUSS:I = 0x2

.field public static final LOGIN_TYPE_LIGHT_APP_API_KEY:I = 0x4

.field public static final LOGIN_TYPE_WEB_APP_API_KEY:I = 0x3

.field public static final METHOD_BIND:Ljava/lang/String; = "method_bind"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "pkg_name"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2

    const-string v0, "Unknown"

    sparse-switch p0, :sswitch_data_56

    const-string v0, "Unknown"

    :goto_7
    return-object v0

    :sswitch_8
    const-string v0, "Success"

    goto :goto_7

    :sswitch_b
    const-string v0, "Network Problem"

    goto :goto_7

    :sswitch_e
    const-string v0, "Authentication Failed"

    goto :goto_7

    :sswitch_11
    const-string v0, "Service not available"

    goto :goto_7

    :sswitch_14
    const-string v0, "Service not available temporary"

    goto :goto_7

    :sswitch_17
    const-string v0, "Bind Relation Not Found"

    goto :goto_7

    :sswitch_1a
    const-string v0, "Internal Server Error"

    goto :goto_7

    :sswitch_1d
    const-string v0, "Method Not Allowed"

    goto :goto_7

    :sswitch_20
    const-string v0, "Request Params Not Valid"

    goto :goto_7

    :sswitch_23
    const-string v0, "Quota Use Up Payment Required"

    goto :goto_7

    :sswitch_26
    const-string v0, "Data Required Not Found"

    goto :goto_7

    :sswitch_29
    const-string v0, "Request Time Expires Timeout"

    goto :goto_7

    :sswitch_2c
    const-string v0, "Channel Token Timeout"

    goto :goto_7

    :sswitch_2f
    const-string v0, "Bind Number Too Many"

    goto :goto_7

    :sswitch_32
    const-string v0, "Duplicate Operation"

    goto :goto_7

    :sswitch_35
    const-string v0, "Group Not Found"

    goto :goto_7

    :sswitch_38
    const-string v0, "Application Forbidden, Need Whitelist Authorization"

    goto :goto_7

    :sswitch_3b
    const-string v0, "App Need Inied First In Push-console"

    goto :goto_7

    :sswitch_3e
    const-string v0, "Number Of Tag For User Too Many"

    goto :goto_7

    :sswitch_41
    const-string v0, "Number Of Tag For App Too Many"

    goto :goto_7

    :sswitch_44
    const-string v0, "Application Do Not Have Unicast Capability"

    goto :goto_7

    :sswitch_47
    const-string v0, "Application Do Not Have Multicast Capability"

    goto :goto_7

    :sswitch_4a
    const-string v0, "Application Is Not Approved, Can Not Use The Push Service"

    goto :goto_7

    :sswitch_4d
    const-string v0, "Requests Are Too Frequent To Be Temporarily Rejected"

    goto :goto_7

    :sswitch_50
    const-string v0, "Get lightapp info fail"

    goto :goto_7

    :sswitch_53
    const-string v0, "User blacked this app"

    goto :goto_7

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_8
        0x2711 -> :sswitch_b
        0x2712 -> :sswitch_11
        0x2713 -> :sswitch_14
        0x7788 -> :sswitch_1a
        0x7789 -> :sswitch_1d
        0x778a -> :sswitch_20
        0x778b -> :sswitch_e
        0x778c -> :sswitch_23
        0x778d -> :sswitch_26
        0x778e -> :sswitch_29
        0x778f -> :sswitch_2c
        0x7790 -> :sswitch_17
        0x7791 -> :sswitch_2f
        0x7792 -> :sswitch_32
        0x7793 -> :sswitch_35
        0x7794 -> :sswitch_38
        0x7795 -> :sswitch_3b
        0x7796 -> :sswitch_3e
        0x7797 -> :sswitch_41
        0x7798 -> :sswitch_44
        0x7799 -> :sswitch_47
        0x779a -> :sswitch_4a
        0x77eb -> :sswitch_4d
        0x9c42 -> :sswitch_50
        0x1adb1 -> :sswitch_53
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC/7VlVn9LIrZ71PL2RZMbK/Yxc\r\ndb046w/cXVylxS7ouPY06namZUFVhdbUnNRJzmGUZlzs3jUbvMO3l+4c9cw/n9aQ\r\nrm/brgaRDeZbeSrQYRZv60xzJIimuFFxsRM+ku6/dAyYmXiQXlRbgvFQ0MsVng4j\r\nv+cXhtTis2Kbwb8mQwIDAQAB\r\n"

    const/16 v3, 0x400

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/j/f;->a([BLjava/lang/String;I)[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/j/b;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_12} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_32
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_12} :catch_50

    move-result-object v0

    :goto_13
    return-object v0

    :catch_14
    move-exception v1

    const-string v2, "PushConstants"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :catch_32
    move-exception v1

    const-string v2, "PushConstants"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :catch_50
    move-exception v1

    const-string v2, "PushConstants"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rsaEncrypt error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method
