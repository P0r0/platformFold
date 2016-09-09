.class final Lcom/vivo/sdkplugin/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/GetSubAccountCenter;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/GetSubAccountCenter;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/d;->a:Lcom/vivo/sdkplugin/GetSubAccountCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/GetSubAccountCenter;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/d;-><init>(Lcom/vivo/sdkplugin/GetSubAccountCenter;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 11

    const/16 v5, 0xf

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/d;->a:Lcom/vivo/sdkplugin/GetSubAccountCenter;

    invoke-static {v0}, Lcom/vivo/sdkplugin/GetSubAccountCenter;->b(Lcom/vivo/sdkplugin/GetSubAccountCenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-string v0, "GetSubAccountCenter"

    const-string v2, "-------------GetSubAccountInfoResponed----------"

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/d;->a:Lcom/vivo/sdkplugin/GetSubAccountCenter;

    invoke-static {v0, p3, p4}, Lcom/vivo/sdkplugin/GetSubAccountCenter;->a(Lcom/vivo/sdkplugin/GetSubAccountCenter;ILjava/lang/String;)V

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_81

    :try_start_1f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "stat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_c2

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0xf

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_39} :catch_60

    :goto_39
    const-string v0, "GetSubAccountCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message.obj ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/d;->a:Lcom/vivo/sdkplugin/GetSubAccountCenter;

    invoke-static {v0}, Lcom/vivo/sdkplugin/GetSubAccountCenter;->b(Lcom/vivo/sdkplugin/GetSubAccountCenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_59
    const/16 v0, 0xe

    :try_start_5b
    iput v0, v1, Landroid/os/Message;->what:I

    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_5f} :catch_60

    goto :goto_39

    :catch_60
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iput v5, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/d;->a:Lcom/vivo/sdkplugin/GetSubAccountCenter;

    invoke-static {v0}, Lcom/vivo/sdkplugin/GetSubAccountCenter;->c(Lcom/vivo/sdkplugin/GetSubAccountCenter;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/sdkplugin/d;->a:Lcom/vivo/sdkplugin/GetSubAccountCenter;

    invoke-static {v2}, Lcom/vivo/sdkplugin/GetSubAccountCenter;->c(Lcom/vivo/sdkplugin/GetSubAccountCenter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_39

    :cond_81
    const/16 v0, 0xca

    if-ne p3, v0, :cond_a4

    const/16 v0, 0xd

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/d;->a:Lcom/vivo/sdkplugin/GetSubAccountCenter;

    invoke-static {v0}, Lcom/vivo/sdkplugin/GetSubAccountCenter;->c(Lcom/vivo/sdkplugin/GetSubAccountCenter;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/sdkplugin/d;->a:Lcom/vivo/sdkplugin/GetSubAccountCenter;

    invoke-static {v2}, Lcom/vivo/sdkplugin/GetSubAccountCenter;->c(Lcom/vivo/sdkplugin/GetSubAccountCenter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_39

    :cond_a4
    iget-object v0, p0, Lcom/vivo/sdkplugin/d;->a:Lcom/vivo/sdkplugin/GetSubAccountCenter;

    invoke-static {v0}, Lcom/vivo/sdkplugin/GetSubAccountCenter;->c(Lcom/vivo/sdkplugin/GetSubAccountCenter;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/sdkplugin/d;->a:Lcom/vivo/sdkplugin/GetSubAccountCenter;

    invoke-static {v2}, Lcom/vivo/sdkplugin/GetSubAccountCenter;->c(Lcom/vivo/sdkplugin/GetSubAccountCenter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v5, v1, Landroid/os/Message;->what:I

    goto/16 :goto_39

    :pswitch_data_c2
    .packed-switch 0xc8
        :pswitch_59
    .end packed-switch
.end method
