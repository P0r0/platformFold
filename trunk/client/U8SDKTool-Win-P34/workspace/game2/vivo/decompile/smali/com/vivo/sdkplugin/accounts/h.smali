.class final Lcom/vivo/sdkplugin/accounts/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponedSDK;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/accounts/h;-><init>(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 8

    :try_start_0
    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->disconnect()V

    const-string v0, "VivoAccountManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----------GetreportRoleResponed ------connStatus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",in="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    :goto_21
    return-void

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method
