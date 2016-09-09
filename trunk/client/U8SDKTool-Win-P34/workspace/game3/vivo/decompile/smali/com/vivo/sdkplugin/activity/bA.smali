.class final Lcom/vivo/sdkplugin/activity/bA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bA;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/bA;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 12

    const/16 v6, 0xf

    const-string v0, "FindPasswordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connStatus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FindPasswordByQuestionResponed.in="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bA;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_b1

    :try_start_31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "stat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/bA;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    const-string v4, "question"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->e(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/bA;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->f(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8e

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/bA;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->f(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8e

    const-string v3, "question"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/bA;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/bA;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v5}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->g(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->trimQuestions(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->e(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "----------questions: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/bA;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->f(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    :cond_8e
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_a0

    const/16 v0, 0xe

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_96
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_96} :catch_ad

    :goto_96
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bA;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_a0
    :try_start_a0
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0xf

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_ac
    .catch Lorg/json/JSONException; {:try_start_a0 .. :try_end_ac} :catch_ad

    goto :goto_96

    :catch_ad
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_b1
    iput v6, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bA;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/bA;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_no_network_title"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_96
.end method
