.class final Lcom/vivo/sdkplugin/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/LoginCenter;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/LoginCenter;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/k;->a:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/LoginCenter;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/k;-><init>(Lcom/vivo/sdkplugin/LoginCenter;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 19

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    const/4 v2, 0x0

    const-string v3, "LoginCenter"

    const-string v4, "-----------VivoLoginResponed------------"

    invoke-static {v3, v4}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/k;->a:Lcom/vivo/sdkplugin/LoginCenter;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v3, v0, v1}, Lcom/vivo/sdkplugin/LoginCenter;->a(Lcom/vivo/sdkplugin/LoginCenter;ILjava/lang/String;)V

    const/16 v3, 0x12c

    move/from16 v0, p3

    if-ne v0, v3, :cond_ef

    :try_start_1a
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p4

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "stat"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_e3

    const/4 v5, 0x2

    const-string v3, "openid"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "authtoken"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "email"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "phonenum"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "uuid"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "id"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "hasPwdPro"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_dd

    const/4 v3, 0x1

    move v6, v3

    :goto_5f
    const-string v3, "visitor"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e0

    const/4 v3, 0x1

    move v4, v3

    :goto_6a
    const/4 v3, 0x0

    if-nez v4, :cond_112

    if-nez v6, :cond_112

    if-eqz v9, :cond_77

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_112

    :cond_77
    if-eqz v10, :cond_7f

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_112

    :cond_7f
    const/4 v3, 0x1

    move v6, v3

    :goto_81
    const-string v3, "LoginCenter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "openid="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/vivo/sdkplugin/k;->a:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-static {v9}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->hideSomeCharOfEmail(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v10}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->hideSomeCharOfNameOrPhone(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
    :try_end_a6
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_a6} :catch_eb

    :try_start_a6
    const-string v2, "uuid"

    invoke-virtual {v3, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    invoke-virtual {v3, v2, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "needNotify"

    invoke-virtual {v3, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_b5
    .catch Lorg/json/JSONException; {:try_start_a6 .. :try_end_b5} :catch_10d

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    :goto_b8
    iget-object v5, p0, Lcom/vivo/sdkplugin/k;->a:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-static {v5}, Lcom/vivo/sdkplugin/LoginCenter;->d(Lcom/vivo/sdkplugin/LoginCenter;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_dc

    iget-object v5, p0, Lcom/vivo/sdkplugin/k;->a:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-static {v5}, Lcom/vivo/sdkplugin/LoginCenter;->d(Lcom/vivo/sdkplugin/LoginCenter;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    iput v4, v5, Landroid/os/Message;->what:I

    iput-object v3, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_d3

    invoke-virtual {v5, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_d3
    iget-object v2, p0, Lcom/vivo/sdkplugin/k;->a:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-static {v2}, Lcom/vivo/sdkplugin/LoginCenter;->d(Lcom/vivo/sdkplugin/LoginCenter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_dc
    return-void

    :cond_dd
    const/4 v3, 0x0

    move v6, v3

    goto :goto_5f

    :cond_e0
    const/4 v3, 0x0

    move v4, v3

    goto :goto_6a

    :cond_e3
    const/4 v4, 0x3

    :try_start_e4
    const-string v3, "msg"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e9
    .catch Lorg/json/JSONException; {:try_start_e4 .. :try_end_e9} :catch_eb

    move-result-object v3

    goto :goto_b8

    :catch_eb
    move-exception v3

    :goto_ec
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_ef
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/vivo/sdkplugin/k;->a:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-static {v3}, Lcom/vivo/sdkplugin/LoginCenter;->c(Lcom/vivo/sdkplugin/LoginCenter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/vivo/sdkplugin/k;->a:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-static {v5}, Lcom/vivo/sdkplugin/LoginCenter;->c(Lcom/vivo/sdkplugin/LoginCenter;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "string"

    const-string v7, "vivo_get_data_network_error"

    invoke-static {v5, v6, v7}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_b8

    :catch_10d
    move-exception v2

    move-object v13, v2

    move-object v2, v3

    move-object v3, v13

    goto :goto_ec

    :cond_112
    move v6, v3

    goto/16 :goto_81
.end method
