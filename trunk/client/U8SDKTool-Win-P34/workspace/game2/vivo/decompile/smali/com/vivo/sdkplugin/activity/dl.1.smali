.class final Lcom/vivo/sdkplugin/activity/dl;
.super Landroid/os/Handler;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private synthetic d:Lcom/vivo/sdkplugin/activity/RegisterActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/dl;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/dl;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/dl;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/dl;-><init>(Lcom/vivo/sdkplugin/activity/RegisterActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v2, "RegisterActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "what: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " obj: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v1, :sswitch_data_1b6

    :goto_29
    return-void

    :sswitch_2a
    const-string v1, "015"

    const-string v2, "1"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v1, v5}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->a(Lcom/vivo/sdkplugin/activity/RegisterActivity;I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->a(Lcom/vivo/sdkplugin/activity/RegisterActivity;)V

    goto :goto_29

    :sswitch_47
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v1, v5}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->a(Lcom/vivo/sdkplugin/activity/RegisterActivity;I)V

    const-string v1, "015"

    const-string v2, "0"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_29

    :sswitch_5f
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_29

    :sswitch_69
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    const-class v2, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_name"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_29

    :sswitch_83
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setHasLoginSuccHis(Z)V

    const-string v1, ""

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_92
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "subinfo"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1b3

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "nickname"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_ad
    .catch Lorg/json/JSONException; {:try_start_92 .. :try_end_ad} :catch_168

    move-result-object v0

    const/4 v1, 0x0

    :try_start_af
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "openid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/dl;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "authtoken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/dl;->c:Ljava/lang/String;
    :try_end_c8
    .catch Lorg/json/JSONException; {:try_start_af .. :try_end_c8} :catch_1b1

    :goto_c8
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameNickName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setOpenId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getreportFirstLogin()Z

    move-result v0

    if-nez v0, :cond_fc

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->d(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->reportFirstLogin()V

    :cond_fc
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->e(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->startServiceSendGameInfo(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAutoLogin(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->e(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->setloginStartTime(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    const-string v3, "string"

    const-string v4, "vivo_login_success"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "002"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1*#*"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->e(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getEndTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->e(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->a(Lcom/vivo/sdkplugin/activity/RegisterActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->finish()V

    goto/16 :goto_29

    :catch_168
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_16c
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_c8

    :sswitch_171
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/dl;->a:Ljava/lang/String;

    const-string v0, "002"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0*#*"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->e(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getEndTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->e(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dl;->a:Ljava/lang/String;

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :sswitch_1aa
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dl;->d:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->a(Lcom/vivo/sdkplugin/activity/RegisterActivity;I)V

    goto/16 :goto_29

    :catch_1b1
    move-exception v1

    goto :goto_16c

    :cond_1b3
    move-object v0, v1

    goto/16 :goto_c8

    :sswitch_data_1b6
    .sparse-switch
        0xd -> :sswitch_1aa
        0xe -> :sswitch_83
        0xf -> :sswitch_171
        0x15 -> :sswitch_2a
        0x16 -> :sswitch_47
        0x2e -> :sswitch_5f
        0x2f -> :sswitch_69
    .end sparse-switch
.end method
