.class final Lcom/vivo/sdkplugin/accounts/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/accounts/j;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/accounts/j;-><init>(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 10

    const/16 v2, 0xd

    const/16 v4, 0xe

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/j;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->f(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/i;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_fe

    const-string v0, "AssistService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getClientrequestGamedynamicInfoResponse"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f1

    const/16 v0, 0xd

    iput v0, v1, Landroid/os/Message;->what:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "gift"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const/16 v0, 0xe

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/j;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->f(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/i;->sendMessage(Landroid/os/Message;)Z

    :goto_67
    return-void

    :cond_68
    const-string v2, "gift"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "giftCount"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_b0

    iget-object v2, p0, Lcom/vivo/sdkplugin/accounts/j;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v2}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameGiftNotify(Z)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/vivo/assist/widget/AssistView;->giftShowNotification:Ljava/lang/Boolean;

    :goto_87
    const-string v2, "activity"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "activityCount"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_df

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/j;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameActivityNotify(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vivo/assist/widget/AssistView;->activityShowNotification:Ljava/lang/Boolean;
    :try_end_a6
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_a6} :catch_c2

    :cond_a6
    :goto_a6
    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/j;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->f(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/i;->sendMessage(Landroid/os/Message;)Z

    goto :goto_67

    :cond_b0
    :try_start_b0
    iget-object v2, p0, Lcom/vivo/sdkplugin/accounts/j;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v2}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameGiftNotify(Z)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/vivo/assist/widget/AssistView;->giftShowNotification:Ljava/lang/Boolean;
    :try_end_c1
    .catch Lorg/json/JSONException; {:try_start_b0 .. :try_end_c1} :catch_c2

    goto :goto_87

    :catch_c2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iput v4, v1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_a6

    :cond_df
    :try_start_df
    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/j;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameActivityNotify(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vivo/assist/widget/AssistView;->activityShowNotification:Ljava/lang/Boolean;

    goto :goto_a6

    :cond_f1
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0xe

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_fd
    .catch Lorg/json/JSONException; {:try_start_df .. :try_end_fd} :catch_c2

    goto :goto_a6

    :cond_fe
    const/16 v0, 0xca

    if-ne p3, v0, :cond_a6

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_a6
.end method
