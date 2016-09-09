.class final Lcom/vivo/sdkplugin/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/GetAppVersionManager;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/GetAppVersionManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/b;->a:Lcom/vivo/sdkplugin/GetAppVersionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/GetAppVersionManager;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/b;-><init>(Lcom/vivo/sdkplugin/GetAppVersionManager;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 11

    const/16 v5, 0x41b

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/b;->a:Lcom/vivo/sdkplugin/GetAppVersionManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/GetAppVersionManager;->b(Lcom/vivo/sdkplugin/GetAppVersionManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-string v0, "GetAppVersionManager"

    const-string v2, "-------------GetAppVersionInfoResponed----------"

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/b;->a:Lcom/vivo/sdkplugin/GetAppVersionManager;

    invoke-static {v0, p3, p4}, Lcom/vivo/sdkplugin/GetAppVersionManager;->a(Lcom/vivo/sdkplugin/GetAppVersionManager;ILjava/lang/String;)V

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_9b

    :try_start_1f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "stat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_b8

    const/16 v2, 0x41a

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    invoke-direct {v2}, Lcom/vivo/sdkplugin/model/MAppUpdateInfo;-><init>()V

    const-string v3, "level"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vivo/sdkplugin/model/MAppUpdateInfo;->level:Ljava/lang/String;

    const-string v3, "description"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vivo/sdkplugin/model/MAppUpdateInfo;->description:Ljava/lang/String;

    const-string v3, "vercode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vivo/sdkplugin/model/MAppUpdateInfo;->vercode:Ljava/lang/String;

    const-string v3, "version"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/vivo/sdkplugin/model/MAppUpdateInfo;->version:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_58} :catch_97

    :goto_58
    const-string v0, "GetAppVersionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message.obj ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/b;->a:Lcom/vivo/sdkplugin/GetAppVersionManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/GetAppVersionManager;->b(Lcom/vivo/sdkplugin/GetAppVersionManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_78
    const/16 v0, 0x41b

    :try_start_7a
    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/b;->a:Lcom/vivo/sdkplugin/GetAppVersionManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/GetAppVersionManager;->c(Lcom/vivo/sdkplugin/GetAppVersionManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/sdkplugin/b;->a:Lcom/vivo/sdkplugin/GetAppVersionManager;

    invoke-static {v2}, Lcom/vivo/sdkplugin/GetAppVersionManager;->c(Lcom/vivo/sdkplugin/GetAppVersionManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_96
    .catch Lorg/json/JSONException; {:try_start_7a .. :try_end_96} :catch_97

    goto :goto_58

    :catch_97
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_9b
    iput v5, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/b;->a:Lcom/vivo/sdkplugin/GetAppVersionManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/GetAppVersionManager;->c(Lcom/vivo/sdkplugin/GetAppVersionManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/sdkplugin/b;->a:Lcom/vivo/sdkplugin/GetAppVersionManager;

    invoke-static {v2}, Lcom/vivo/sdkplugin/GetAppVersionManager;->c(Lcom/vivo/sdkplugin/GetAppVersionManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_58

    :pswitch_data_b8
    .packed-switch 0xce
        :pswitch_78
    .end packed-switch
.end method
