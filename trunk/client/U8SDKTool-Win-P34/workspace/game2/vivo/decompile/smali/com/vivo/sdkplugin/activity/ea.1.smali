.class final Lcom/vivo/sdkplugin/activity/ea;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/ea;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/ea;-><init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 10

    const/16 v4, 0xd

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    const-string v0, "SetPassWordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connStatus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CommitEmailResponed.in="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ea;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->b(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_91

    :try_start_31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "stat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_b2

    const/16 v0, 0x1c

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_4b} :catch_70

    :cond_4b
    :goto_4b
    const-string v0, "SetPassWordActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message.obj ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ea;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->b(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_6b
    const/16 v0, 0x1b

    :try_start_6d
    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_6d .. :try_end_6f} :catch_70

    goto :goto_4b

    :catch_70
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ea;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->c(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/ea;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_4b

    :cond_91
    const/16 v0, 0xca

    if-ne p3, v0, :cond_4b

    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ea;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->c(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/ea;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_4b

    :pswitch_data_b2
    .packed-switch 0xc8
        :pswitch_6b
    .end packed-switch
.end method
