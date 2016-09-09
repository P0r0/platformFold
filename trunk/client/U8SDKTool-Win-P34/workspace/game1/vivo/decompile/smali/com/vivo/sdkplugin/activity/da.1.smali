.class final Lcom/vivo/sdkplugin/activity/da;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/da;-><init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 18

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->f(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    const-string v1, "PhoneRegisterCommitActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CommitVerifyCodeResponed,connStatus="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", RegisteResponed.in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x12c

    move/from16 v0, p3

    if-ne v0, v1, :cond_1e5

    :try_start_35
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "stat"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v1, "msg"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    packed-switch v6, :pswitch_data_226

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->k(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Z

    move-result v1

    if-eqz v1, :cond_1cc

    const-string v1, "013"

    const-string v2, "0"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v3, v3, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_60
    const/16 v1, 0xa

    iput v1, v4, Landroid/os/Message;->what:I
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_64} :catch_165

    :cond_64
    :goto_64
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->f(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_6e
    :try_start_6e
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    const-string v2, "authtoken"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Ljava/lang/String;)V

    const-string v1, "openid"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "id"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "uuid"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "name"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "phonenum"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v10, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    const-string v11, "isUpgradeVisitor"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->b(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Ljava/lang/String;)V

    const-string v10, "PhoneRegisterCommitActivity"

    const-string v11, "11111111111111111111111111111"

    invoke-static {v10, v11}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "PhoneRegisterCommitActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "isVisitorUpdate="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v12}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->g(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-static {v10, v11}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Ljava/util/Map;)V

    if-eqz v1, :cond_198

    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_198

    :goto_dd
    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setmainOpenId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->i(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setMainToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->i(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    const-string v3, "sk"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLoginSk(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setUuid(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAccountId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->j(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->saveAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9

    iput v1, v4, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->k(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Z

    move-result v1

    if-eqz v1, :cond_1a8

    const-string v1, "013"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "*#*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v3, v3, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_163
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_163} :catch_165

    goto/16 :goto_64

    :catch_165
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->k(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Z

    move-result v1

    if-eqz v1, :cond_1d9

    const-string v1, "013"

    const-string v2, "0"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v3, v3, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_17c
    const/16 v1, 0xd

    iput v1, v4, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v5, "vivo_get_data_network_error"

    invoke-static {v2, v3, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_64

    :cond_198
    if-eqz v2, :cond_1a5

    :try_start_19a
    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a5

    move-object v1, v2

    goto/16 :goto_dd

    :cond_1a5
    move-object v1, v3

    goto/16 :goto_dd

    :cond_1a8
    const-string v1, "017"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "*#*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v3, v3, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_64

    :cond_1cc
    const-string v1, "017"

    const-string v2, "0"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v3, v3, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1d7
    .catch Lorg/json/JSONException; {:try_start_19a .. :try_end_1d7} :catch_165

    goto/16 :goto_60

    :cond_1d9
    const-string v1, "017"

    const-string v2, "0"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v3, v3, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_17c

    :cond_1e5
    const/16 v1, 0xca

    move/from16 v0, p3

    if-ne v0, v1, :cond_64

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->k(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Z

    move-result v1

    if-eqz v1, :cond_21a

    const-string v1, "013"

    const-string v2, "0"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v3, v3, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_1fe
    const/16 v1, 0xd

    iput v1, v4, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v5, "vivo_get_data_network_error"

    invoke-static {v2, v3, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_64

    :cond_21a
    const-string v1, "017"

    const-string v2, "0"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/da;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v3, v3, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1fe

    :pswitch_data_226
    .packed-switch 0xc8
        :pswitch_6e
    .end packed-switch
.end method
