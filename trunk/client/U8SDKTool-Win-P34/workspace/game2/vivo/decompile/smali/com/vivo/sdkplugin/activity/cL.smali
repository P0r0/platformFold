.class final Lcom/vivo/sdkplugin/activity/cL;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cL;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/LoginActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/cL;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 10

    const/16 v4, 0x16

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cL;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "--------------activity is Finish------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cL;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->e(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "-------GetTokenInfoResponse----------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cL;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0, p3, p4}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;ILjava/lang/String;)V

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_94

    :try_start_2f
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_34} :catch_77

    const/4 v1, 0x0

    :try_start_35
    const-string v0, "stat"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3a} :catch_6a
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_3a} :catch_77

    move-result v0

    :goto_3b
    packed-switch v0, :pswitch_data_b2

    :try_start_3e
    const-string v0, "msg"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0x16

    iput v0, v2, Landroid/os/Message;->what:I
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_4a} :catch_77

    :goto_4a
    const-string v0, "PLUGIN_LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "message.obj ="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cL;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->e(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    :catch_6a
    move-exception v0

    :try_start_6b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_3b

    :pswitch_70
    const/16 v0, 0x15

    iput v0, v2, Landroid/os/Message;->what:I

    iput-object p4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_76
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_76} :catch_77

    goto :goto_4a

    :catch_77
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iput v4, v2, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cL;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cL;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_4a

    :cond_94
    const/16 v0, 0xca

    if-ne p3, v0, :cond_af

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cL;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cL;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_4a

    :cond_af
    iput v4, v2, Landroid/os/Message;->what:I

    goto :goto_4a

    :pswitch_data_b2
    .packed-switch 0xc8
        :pswitch_70
    .end packed-switch
.end method
