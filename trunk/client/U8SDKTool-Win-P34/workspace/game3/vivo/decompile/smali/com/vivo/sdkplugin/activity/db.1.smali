.class final Lcom/vivo/sdkplugin/activity/db;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/db;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/db;-><init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 10

    const/16 v4, 0xf

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/db;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "PhoneRegisterCommitActivity"

    const-string v1, "Finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/db;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->f(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-string v0, "PhoneRegisterCommitActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connStatus="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", GetNickNameInfoRegisteResponed.in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_9f

    :try_start_41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "stat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_be

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0xf

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_5b} :catch_82

    :cond_5b
    :goto_5b
    const-string v0, "PhoneRegisterCommitActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message.obj ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/db;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->f(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    :pswitch_7b
    const/16 v0, 0xe

    :try_start_7d
    iput v0, v1, Landroid/os/Message;->what:I

    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_81
    .catch Lorg/json/JSONException; {:try_start_7d .. :try_end_81} :catch_82

    goto :goto_5b

    :catch_82
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/db;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/db;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_5b

    :cond_9f
    const/16 v0, 0xca

    if-ne p3, v0, :cond_5b

    const/16 v0, 0xd

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/db;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/db;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_5b

    :pswitch_data_be
    .packed-switch 0xc8
        :pswitch_7b
    .end packed-switch
.end method
