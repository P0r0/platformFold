.class final Lcom/vivo/sdkplugin/activity/dD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dD;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/dD;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 10

    const/16 v4, 0xc

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dD;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "RegisterOneKeyActivity"

    const-string v1, "Finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dD;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-string v0, "RegisterOneKeyActivity"

    const-string v2, "--------GetMsgnumInfoResponed----------"

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegisterOneKeyActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connStatus="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", RegisteResponed.in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_b4

    :try_start_48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "stat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sparse-switch v2, :sswitch_data_d4

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0xc

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_62} :catch_92

    :cond_62
    :goto_62
    const-string v0, "RegisterOneKeyActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message.obj ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dD;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    :sswitch_82
    const/16 v2, 0xb

    :try_start_84
    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dD;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    const-string v3, "number"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;Ljava/lang/String;)V
    :try_end_91
    .catch Lorg/json/JSONException; {:try_start_84 .. :try_end_91} :catch_92

    goto :goto_62

    :catch_92
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dD;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dD;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_62

    :sswitch_af
    const/16 v0, 0xc

    :try_start_b1
    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_b3
    .catch Lorg/json/JSONException; {:try_start_b1 .. :try_end_b3} :catch_92

    goto :goto_62

    :cond_b4
    const/16 v0, 0xca

    if-ne p3, v0, :cond_62

    const/16 v0, 0xd

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dD;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dD;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_62

    nop

    :sswitch_data_d4
    .sparse-switch
        0xc8 -> :sswitch_82
        0x194 -> :sswitch_af
    .end sparse-switch
.end method
