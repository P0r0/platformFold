.class final Lcom/vivo/sdkplugin/activity/dE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/dE;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 16

    const/16 v10, 0x8

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "RegisterOneKeyActivity"

    const-string v1, "---GetMsgstatInfoResponed  : Finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-string v0, "RegisterOneKeyActivity"

    const-string v2, "--------GetMsgstatInfoResponed----------"

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegisterOneKeyActivity"

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

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_197

    :try_start_48
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "stat"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "isReg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b0

    const-string v0, "isReg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_67
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sparse-switch v3, :sswitch_data_1dc

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18c

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18c

    const-string v0, "027"

    const-string v3, "10"

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_83
    const-string v0, "msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0x8

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_8f} :catch_13c

    :cond_8f
    :goto_8f
    const-string v0, "RegisterOneKeyActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message.obj ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_14

    :cond_b0
    :try_start_b0
    const-string v0, "0"

    goto :goto_67

    :sswitch_b3
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "phonenum"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "uuid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "openid"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "sk"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "authtoken"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v8}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setVisitor(Z)V

    iget-object v8, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v8}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAccountId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setmainOpenId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setMainToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLoginSk(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAccountNum(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setUuid(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15a

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a

    const-string v0, "027"

    const-string v2, "11"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_137
    const/4 v0, 0x7

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_13a
    .catch Lorg/json/JSONException; {:try_start_b0 .. :try_end_13a} :catch_13c

    goto/16 :goto_8f

    :catch_13c
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iput v10, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_8f

    :cond_15a
    :try_start_15a
    const-string v0, "027"

    const-string v2, "01"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_137

    :sswitch_164
    const/16 v2, 0x194

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_181

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_181

    const-string v0, "027"

    const-string v2, "10"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_8f

    :cond_181
    const-string v0, "027"

    const-string v2, "00"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_8f

    :cond_18c
    const-string v0, "027"

    const-string v3, "00"

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_195
    .catch Lorg/json/JSONException; {:try_start_15a .. :try_end_195} :catch_13c

    goto/16 :goto_83

    :cond_197
    const/16 v0, 0xca

    if-ne p3, v0, :cond_8f

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1bf

    const/16 v0, 0xd

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_8f

    :cond_1bf
    const/16 v0, 0x33

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dE;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_8f

    nop

    :sswitch_data_1dc
    .sparse-switch
        0xc8 -> :sswitch_b3
        0x194 -> :sswitch_164
    .end sparse-switch
.end method
