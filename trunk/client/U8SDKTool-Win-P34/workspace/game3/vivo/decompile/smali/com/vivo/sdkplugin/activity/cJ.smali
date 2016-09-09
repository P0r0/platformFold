.class final Lcom/vivo/sdkplugin/activity/cJ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponedSDK;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cJ;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/LoginActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/cJ;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 10

    const/16 v3, 0x1d

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cJ;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "--------------activity is Finish------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cJ;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->e(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-string v0, "PLUGIN_LoginActivity"

    const-string v2, "--------------GetReportActivateResponed------------"

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cJ;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0, p3, p4}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;ILjava/lang/String;)V

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_97

    :try_start_2f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "stat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_b4

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1d

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_49} :catch_7a

    :cond_49
    :goto_49
    const-string v0, "PLUGIN_LoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message.obj ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cJ;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->e(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    :pswitch_69
    :try_start_69
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cJ;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setReportActivate(Z)V

    const/16 v0, 0x1c

    iput v0, v1, Landroid/os/Message;->what:I

    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_79} :catch_7a

    goto :goto_49

    :catch_7a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iput v3, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cJ;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cJ;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_49

    :cond_97
    const/16 v0, 0xca

    if-ne p3, v0, :cond_49

    iput v3, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cJ;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cJ;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_49

    :pswitch_data_b4
    .packed-switch 0xc8
        :pswitch_69
    .end packed-switch
.end method
