.class final Lcom/vivo/sdkplugin/activity/cN;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/LoginActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/cN;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 16

    const/16 v12, 0xd

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v9, ""

    const-string v1, ""

    const-string v7, ""

    const-string v4, ""

    const-string v3, ""

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v2, ""

    iget-object v11, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v11, p1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;Landroid/os/Message;)V

    iget-object v11, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v11, v6}, Lcom/vivo/sdkplugin/activity/LoginActivity;->b(Lcom/vivo/sdkplugin/activity/LoginActivity;Z)V

    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_630

    :goto_29
    return-void

    :sswitch_2a
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0, v6}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->k(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_29

    :sswitch_4e
    :try_start_4e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "sk"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_58} :catch_81

    move-result-object v0

    :try_start_59
    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_59 .. :try_end_5e} :catch_624

    move-result-object v1

    :goto_5f
    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setmainOpenId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLoginSk(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0, v12}, Lcom/vivo/sdkplugin/activity/LoginActivity;->b(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V

    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->insertAndExportDB()V

    goto :goto_29

    :catch_81
    move-exception v0

    move-object v2, v0

    move-object v0, v7

    :goto_84
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5f

    :sswitch_88
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v1, v6}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V

    const-string v1, "002"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "1*#*"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v8}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getEndTime(Landroid/content/Context;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v8}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v1, v7, v8}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :try_start_b5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "subinfo"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_62b

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_62b

    move v0, v6

    :goto_c9
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_cc
    .catch Lorg/json/JSONException; {:try_start_b5 .. :try_end_cc} :catch_1c7

    move-result v7

    if-lt v0, v7, :cond_18e

    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    :goto_d2
    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLastGamePackageName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameNickName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setOpenId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setToken(Ljava/lang/String;)V

    const-string v0, "PLUGIN_LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loginFromUI"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/vivo/sdkplugin/activity/LoginActivity;->loginFromUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "loginFromSp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/vivo/sdkplugin/activity/LoginActivity;->loginFromSp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bbkAccountManager.getreportFirstLogin()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getreportFirstLogin()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getreportFirstLogin()Z

    move-result v0

    if-nez v0, :cond_173

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->l(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->reportFirstLogin()V

    :cond_173
    sget-boolean v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->loginFromUI:Z

    if-eqz v0, :cond_20d

    sget-boolean v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->loginFromSp:Z

    if-nez v0, :cond_20d

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-eqz v0, :cond_1d7

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->m(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    goto/16 :goto_29

    :cond_18e
    :try_start_18e
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "islastlogin"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1bc

    if-nez v0, :cond_1bc

    iget-object v9, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v9}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setIsDefaultAccount(Z)V

    :goto_1a6
    if-eqz v8, :cond_1d3

    const-string v0, "nickname"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1ad
    .catch Lorg/json/JSONException; {:try_start_18e .. :try_end_1ad} :catch_1c7

    move-result-object v0

    :try_start_1ae
    const-string v1, "openid"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b3
    .catch Lorg/json/JSONException; {:try_start_1ae .. :try_end_1b3} :catch_619

    move-result-object v2

    :try_start_1b4
    const-string v1, "authtoken"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b9
    .catch Lorg/json/JSONException; {:try_start_1b4 .. :try_end_1b9} :catch_61e

    move-result-object v1

    goto/16 :goto_d2

    :cond_1bc
    :try_start_1bc
    iget-object v9, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v9}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setIsDefaultAccount(Z)V
    :try_end_1c6
    .catch Lorg/json/JSONException; {:try_start_1bc .. :try_end_1c6} :catch_1c7

    goto :goto_1a6

    :catch_1c7
    move-exception v0

    move-object v1, v4

    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    :goto_1cc
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_d2

    :cond_1d3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c9

    :cond_1d7
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAutoLogin(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->setloginStartTime(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    const-string v3, "string"

    const-string v4, "vivo_login_success"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->n(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    goto/16 :goto_29

    :cond_20d
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->o(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    goto/16 :goto_29

    :sswitch_214
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "002"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0*#*"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getEndTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0, v6}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_29

    :sswitch_257
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "LoginResult"

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_260
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "name"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_26a
    .catch Lorg/json/JSONException; {:try_start_260 .. :try_end_26a} :catch_388

    move-result-object v7

    :try_start_26b
    const-string v0, "openid"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "sk"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_276
    .catch Lorg/json/JSONException; {:try_start_26b .. :try_end_276} :catch_600

    move-result-object v1

    :try_start_277
    const-string v0, "authtoken"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_27c
    .catch Lorg/json/JSONException; {:try_start_277 .. :try_end_27c} :catch_608

    move-result-object v2

    :try_start_27d
    const-string v0, "visitor"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_282
    .catch Lorg/json/JSONException; {:try_start_27d .. :try_end_282} :catch_610

    move-result v0

    if-ne v0, v5, :cond_385

    move v0, v5

    :goto_286
    move-object v3, v4

    move-object v4, v7

    move v13, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v13

    :goto_28c
    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v5}, Lcom/vivo/sdkplugin/activity/LoginActivity;->p(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v7}, Lcom/vivo/sdkplugin/activity/LoginActivity;->q(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v9, "PLUGIN_LoginActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "----------visitor"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setVisitor(Z)V

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setmainOpenId(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setMainToken(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLoginSk(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0, v5, v7, v8}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->saveAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setToken(Ljava/lang/String;)V

    const-string v0, "002"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "1*#*openid:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "*#*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getEndTime(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, ""

    if-eqz v1, :cond_396

    const-string v0, "uuid"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setUuid(Ljava/lang/String;)V

    const-string v3, "id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAccountId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v3, v12}, Lcom/vivo/sdkplugin/activity/LoginActivity;->b(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V

    const-string v3, "needNotify"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36e

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->r(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    :cond_36e
    :goto_36e
    if-eqz v2, :cond_379

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setTempUuid(Ljava/lang/String;)V

    :cond_379
    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->insertAndExportDB()V

    goto/16 :goto_29

    :cond_385
    move v0, v6

    goto/16 :goto_286

    :catch_388
    move-exception v0

    move-object v1, v3

    move-object v2, v4

    move-object v4, v0

    move-object v3, v9

    move-object v0, v8

    :goto_38e
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v3

    move-object v3, v2

    move v2, v6

    goto/16 :goto_28c

    :cond_396
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v1, v6}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V

    goto :goto_36e

    :sswitch_39c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "LoginResult"

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, ""

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_627

    const-string v1, "account"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "pwd"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "uuid"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v9}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setTempUuid(Ljava/lang/String;)V

    move-object v7, v6

    move-object v6, v1

    :goto_3ca
    :try_start_3ca
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "name"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "openid"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3d9
    .catch Lorg/json/JSONException; {:try_start_3ca .. :try_end_3d9} :catch_483

    move-result-object v1

    :try_start_3da
    const-string v0, "authtoken"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3df
    .catch Lorg/json/JSONException; {:try_start_3da .. :try_end_3df} :catch_5f2

    move-result-object v0

    :try_start_3e0
    const-string v3, "sk"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3e5
    .catch Lorg/json/JSONException; {:try_start_3e0 .. :try_end_3e5} :catch_5f8

    move-result-object v3

    :try_start_3e6
    const-string v4, "id"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3eb
    .catch Lorg/json/JSONException; {:try_start_3e6 .. :try_end_3eb} :catch_5fd

    move-result-object v2

    :goto_3ec
    const-string v4, "004"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "1openid:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "*#*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v10}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getEndTime(Landroid/content/Context;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v10}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v4, v9, v10}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setVisitor(Z)V

    const-string v4, "PLUGIN_LoginActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "visitor"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v9}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setmainOpenId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setMainToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0, v7, v6, v8}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->saveAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLoginSk(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAccountId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0, v12}, Lcom/vivo/sdkplugin/activity/LoginActivity;->b(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V

    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->insertAndExportDB()V

    goto/16 :goto_29

    :catch_483
    move-exception v0

    move-object v1, v4

    move-object v4, v0

    move-object v0, v3

    move-object v3, v8

    :goto_488
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3ec

    :sswitch_48d
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0, v6}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_29

    :sswitch_4a8
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0, v6}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-boolean v1, Lcom/vivo/sdkplugin/activity/LoginActivity;->tempLogin:Z

    if-nez v1, :cond_4f3

    const-string v1, "002"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0*#*"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getEndTime(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_4dd
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_29

    :cond_4f3
    const-string v1, "004"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0*#*"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getEndTime(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_4dd

    :sswitch_51c
    const-string v0, "---------MSG_LOGIN_TEMP_USER_UPDATE------------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v6

    aget-object v0, v0, v5

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v2, v6}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_56c

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->p(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->p(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_56c
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_29

    :sswitch_582
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0, v6}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_29

    :sswitch_597
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0, v6}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_29

    :sswitch_5ab
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->s(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_phone_exist_wrong"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_29

    :sswitch_5eb
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cN;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0, v6}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V

    goto/16 :goto_29

    :catch_5f2
    move-exception v0

    move-object v4, v0

    move-object v0, v3

    move-object v3, v8

    goto/16 :goto_488

    :catch_5f8
    move-exception v3

    move-object v4, v3

    move-object v3, v8

    goto/16 :goto_488

    :catch_5fd
    move-exception v4

    goto/16 :goto_488

    :catch_600
    move-exception v0

    move-object v1, v3

    move-object v2, v4

    move-object v4, v0

    move-object v3, v7

    move-object v0, v8

    goto/16 :goto_38e

    :catch_608
    move-exception v0

    move-object v2, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v7

    goto/16 :goto_38e

    :catch_610
    move-exception v0

    move-object v3, v7

    move-object v13, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v0

    move-object v0, v13

    goto/16 :goto_38e

    :catch_619
    move-exception v1

    move-object v2, v1

    move-object v1, v4

    goto/16 :goto_1cc

    :catch_61e
    move-exception v1

    move-object v13, v1

    move-object v1, v2

    move-object v2, v13

    goto/16 :goto_1cc

    :catch_624
    move-exception v2

    goto/16 :goto_84

    :cond_627
    move-object v6, v8

    move-object v7, v8

    goto/16 :goto_3ca

    :cond_62b
    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    goto/16 :goto_d2

    :sswitch_data_630
    .sparse-switch
        0x2 -> :sswitch_257
        0x3 -> :sswitch_4a8
        0xd -> :sswitch_582
        0xe -> :sswitch_88
        0xf -> :sswitch_214
        0x15 -> :sswitch_4e
        0x16 -> :sswitch_2a
        0x1c -> :sswitch_5eb
        0x1d -> :sswitch_5eb
        0x32 -> :sswitch_39c
        0x34 -> :sswitch_597
        0x37 -> :sswitch_51c
        0x38 -> :sswitch_48d
        0x200 -> :sswitch_5ab
    .end sparse-switch
.end method
