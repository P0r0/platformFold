.class final Lcom/vivo/sdkplugin/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/GetUserInfoManager;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/GetUserInfoManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/f;->a:Lcom/vivo/sdkplugin/GetUserInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/GetUserInfoManager;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/f;-><init>(Lcom/vivo/sdkplugin/GetUserInfoManager;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 9

    const/16 v3, 0x411

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/f;->a:Lcom/vivo/sdkplugin/GetUserInfoManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/GetUserInfoManager;->b(Lcom/vivo/sdkplugin/GetUserInfoManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-string v0, "GetUserInfoManager"

    const-string v2, "-------------GetUserInfoResponed----------"

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/f;->a:Lcom/vivo/sdkplugin/GetUserInfoManager;

    invoke-static {v0, p3, p4}, Lcom/vivo/sdkplugin/GetUserInfoManager;->a(Lcom/vivo/sdkplugin/GetUserInfoManager;ILjava/lang/String;)V

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_5e

    :try_start_1f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "stat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_64

    const/16 v0, 0x411

    iput v0, v1, Landroid/os/Message;->what:I

    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_33} :catch_5a

    :goto_33
    const-string v0, "GetUserInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message.obj ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/f;->a:Lcom/vivo/sdkplugin/GetUserInfoManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/GetUserInfoManager;->b(Lcom/vivo/sdkplugin/GetUserInfoManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_53
    const/16 v0, 0x410

    :try_start_55
    iput v0, v1, Landroid/os/Message;->what:I

    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_55 .. :try_end_59} :catch_5a

    goto :goto_33

    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5e
    iput v3, v1, Landroid/os/Message;->what:I

    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_33

    nop

    :pswitch_data_64
    .packed-switch 0xc8
        :pswitch_53
    .end packed-switch
.end method
