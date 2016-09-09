.class final Lcom/vivo/sdkplugin/activity/aA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/aA;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/aA;-><init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V

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

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aA;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->b(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-string v0, "ChangePassWordActivityLog"

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

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_8c

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

    sparse-switch v2, :sswitch_data_a4

    const/16 v0, 0x1c

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_4b} :catch_70

    :cond_4b
    :goto_4b
    const-string v0, "ChangePassWordActivityLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message.obj ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aA;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->b(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :sswitch_6b
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

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aA;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/aA;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    const-string v3, "vivo_get_data_network_error"

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_4b

    :sswitch_87
    const/16 v0, 0x28

    :try_start_89
    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_89 .. :try_end_8b} :catch_70

    goto :goto_4b

    :cond_8c
    const/16 v0, 0xca

    if-ne p3, v0, :cond_4b

    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aA;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/aA;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    const-string v3, "vivo_get_data_network_error"

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_4b

    nop

    :sswitch_data_a4
    .sparse-switch
        0xc8 -> :sswitch_6b
        0x20a -> :sswitch_87
    .end sparse-switch
.end method
