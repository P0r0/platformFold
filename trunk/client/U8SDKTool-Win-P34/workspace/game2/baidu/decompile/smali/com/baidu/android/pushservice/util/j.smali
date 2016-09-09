.class public Lcom/baidu/android/pushservice/util/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/util/j;->a:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/j;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/j;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static c(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_e

    const-string v2, "NetworkCheck"

    const-string v3, "context is null !!!"

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-static {v1}, Lcom/baidu/android/pushservice/util/j;->e(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_21

    const-string v1, "NetworkCheck"

    const-string v2, "networkInfo is null !!!"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    :goto_21
    return-object v0

    :cond_22
    const-string v1, "NetworkCheck"

    const-string v2, "connManager is null !!!"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2a

    goto :goto_21

    :catch_2a
    move-exception v1

    const-string v2, "NetworkCheck"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "connectionless"

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/j;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_8
    return-object v0

    :cond_9
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/j;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v1, -0x1

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    :cond_14
    packed-switch v1, :pswitch_data_2e

    goto :goto_8

    :pswitch_18
    const-string v0, "mobile"

    goto :goto_8

    :pswitch_1b
    const-string v0, "mobile_dun"

    goto :goto_8

    :pswitch_1e
    const-string v0, "mobile_hipri"

    goto :goto_8

    :pswitch_21
    const-string v0, "mobile_mms"

    goto :goto_8

    :pswitch_24
    const-string v0, "mobile_supl"

    goto :goto_8

    :pswitch_27
    const-string v0, "wifi"

    goto :goto_8

    :pswitch_2a
    const-string v0, "wimax"

    goto :goto_8

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_27
        :pswitch_21
        :pswitch_24
        :pswitch_1b
        :pswitch_1e
        :pswitch_2a
    .end packed-switch
.end method

.method private static e(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 2

    if-nez p0, :cond_5

    sget-object v0, Lcom/baidu/android/pushservice/util/j;->a:Landroid/net/ConnectivityManager;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/baidu/android/pushservice/util/j;->a:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_13

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/baidu/android/pushservice/util/j;->a:Landroid/net/ConnectivityManager;

    :cond_13
    sget-object v0, Lcom/baidu/android/pushservice/util/j;->a:Landroid/net/ConnectivityManager;

    goto :goto_4
.end method
