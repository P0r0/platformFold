.class final Lcom/vivo/sdkplugin/accounts/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/accounts/BBKAccountManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/accounts/a;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/accounts/BBKAccountManager;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/accounts/a;-><init>(Lcom/vivo/sdkplugin/accounts/BBKAccountManager;)V

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

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/a;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->a(Lcom/vivo/sdkplugin/accounts/BBKAccountManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-string v0, "BBKAccountManager"

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

    if-ne p3, v0, :cond_95

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

    packed-switch v2, :pswitch_data_ba

    const/16 v0, 0x28

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_4b} :catch_70

    :cond_4b
    :goto_4b
    const-string v0, "BBKAccountManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message.obj ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/a;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->a(Lcom/vivo/sdkplugin/accounts/BBKAccountManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_6b
    const/16 v0, 0x27

    :try_start_6d
    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_6d .. :try_end_6f} :catch_70

    goto :goto_4b

    :catch_70
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/a;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->b(Lcom/vivo/sdkplugin/accounts/BBKAccountManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/sdkplugin/accounts/a;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-static {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->b(Lcom/vivo/sdkplugin/accounts/BBKAccountManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_4b

    :cond_95
    const/16 v0, 0xca

    if-ne p3, v0, :cond_4b

    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/a;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->b(Lcom/vivo/sdkplugin/accounts/BBKAccountManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/sdkplugin/accounts/a;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-static {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->b(Lcom/vivo/sdkplugin/accounts/BBKAccountManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_4b

    :pswitch_data_ba
    .packed-switch 0xc8
        :pswitch_6b
    .end packed-switch
.end method
