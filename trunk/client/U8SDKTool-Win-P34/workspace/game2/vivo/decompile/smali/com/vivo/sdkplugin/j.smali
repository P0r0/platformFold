.class final Lcom/vivo/sdkplugin/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/LoginCenter;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/LoginCenter;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/j;->a:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/LoginCenter;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/j;-><init>(Lcom/vivo/sdkplugin/LoginCenter;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 16

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    const/4 v0, 0x0

    const-string v1, "LoginCenter"

    const-string v2, "-----------TempLoginResponed------------"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/j;->a:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-static {v1, p3, p4}, Lcom/vivo/sdkplugin/LoginCenter;->a(Lcom/vivo/sdkplugin/LoginCenter;ILjava/lang/String;)V

    const/16 v1, 0x12c

    if-ne p3, v1, :cond_11a

    :try_start_14
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "stat"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_cf

    const/16 v3, 0x32

    const-string v2, "openid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "authtoken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "name"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "openid"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "authtoken"

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "name"

    invoke-virtual {v6, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/vivo/sdkplugin/j;->a:Lcom/vivo/sdkplugin/LoginCenter;

    iget-object v2, v2, Lcom/vivo/sdkplugin/LoginCenter;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    const-string v5, "isForceUpgrade"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setIsForceUpgrade(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/j;->a:Lcom/vivo/sdkplugin/LoginCenter;

    iget-object v2, v2, Lcom/vivo/sdkplugin/LoginCenter;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    const-string v5, "isRemindUpgrade"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setIsRemindUpgrade(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "name"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pwd"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "uuid"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-boolean v1, Lcom/vivo/sdkplugin/Contants;->TEST_FLAG:Z

    if-eqz v1, :cond_93

    const-string v1, "TestLogTAG"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TempLoginResponed, openid="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_98
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_98} :catch_116

    :try_start_98
    const-string v0, "account"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pwd"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uuid"

    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catch Lorg/json/JSONException; {:try_start_98 .. :try_end_a7} :catch_13a

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    :goto_aa
    iget-object v3, p0, Lcom/vivo/sdkplugin/j;->a:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-static {v3}, Lcom/vivo/sdkplugin/LoginCenter;->d(Lcom/vivo/sdkplugin/LoginCenter;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_ce

    iget-object v3, p0, Lcom/vivo/sdkplugin/j;->a:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-static {v3}, Lcom/vivo/sdkplugin/LoginCenter;->d(Lcom/vivo/sdkplugin/LoginCenter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    iput v2, v3, Landroid/os/Message;->what:I

    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_c5

    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_c5
    iget-object v0, p0, Lcom/vivo/sdkplugin/j;->a:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-static {v0}, Lcom/vivo/sdkplugin/LoginCenter;->d(Lcom/vivo/sdkplugin/LoginCenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_ce
    return-void

    :cond_cf
    const/4 v3, 0x3

    if-ne v2, v3, :cond_db

    const/16 v2, 0x38

    :try_start_d4
    const-string v3, "msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_aa

    :cond_db
    const/16 v3, 0x190

    if-ne v2, v3, :cond_10d

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10d

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_aa

    :cond_10d
    const/16 v2, 0x38

    const-string v3, "msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_114
    .catch Lorg/json/JSONException; {:try_start_d4 .. :try_end_114} :catch_116

    move-result-object v1

    goto :goto_aa

    :catch_116
    move-exception v1

    :goto_117
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_11a
    const/16 v2, 0x38

    iget-object v1, p0, Lcom/vivo/sdkplugin/j;->a:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-static {v1}, Lcom/vivo/sdkplugin/LoginCenter;->c(Lcom/vivo/sdkplugin/LoginCenter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/sdkplugin/j;->a:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-static {v3}, Lcom/vivo/sdkplugin/LoginCenter;->c(Lcom/vivo/sdkplugin/LoginCenter;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "string"

    const-string v5, "vivo_get_data_network_error"

    invoke-static {v3, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_aa

    :catch_13a
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_117
.end method
