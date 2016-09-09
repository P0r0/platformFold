.class final Lcom/vivo/sdkplugin/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponedSDK;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/ReportFirstLoginManager;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/ReportFirstLoginManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/q;->a:Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/ReportFirstLoginManager;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/q;-><init>(Lcom/vivo/sdkplugin/ReportFirstLoginManager;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 7

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/q;->a:Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    invoke-static {v0, p3, p4}, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->a(Lcom/vivo/sdkplugin/ReportFirstLoginManager;ILjava/lang/String;)V

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_1a

    :try_start_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "stat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    :cond_1a
    :goto_1a
    return-void

    :pswitch_1b
    iget-object v0, p0, Lcom/vivo/sdkplugin/q;->a:Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->b(Lcom/vivo/sdkplugin/ReportFirstLoginManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setreportFirstLogin(Z)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_25} :catch_26

    goto :goto_1a

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1a

    nop

    :pswitch_data_2c
    .packed-switch 0xc8
        :pswitch_1b
    .end packed-switch
.end method
