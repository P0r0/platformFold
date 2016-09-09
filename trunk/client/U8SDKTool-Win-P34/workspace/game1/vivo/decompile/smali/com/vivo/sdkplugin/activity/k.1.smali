.class final Lcom/vivo/sdkplugin/activity/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/k;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/k;-><init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 10

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/k;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$11(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_86

    const-string v0, "AssistService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getClientrequestGamedynamicInfoResponse"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a0

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

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "giftCount"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_90

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/k;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$12(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameGiftNotify(Z)V

    :goto_66
    const-string v2, "AssistService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "todayGiftCount"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "todayActivityCount0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "giftShowNotification"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_86} :catch_9b

    :cond_86
    :goto_86
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/k;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$11(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_90
    :try_start_90
    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/k;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$12(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameGiftNotify(Z)V
    :try_end_9a
    .catch Lorg/json/JSONException; {:try_start_90 .. :try_end_9a} :catch_9b

    goto :goto_66

    :catch_9b
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_86

    :cond_a0
    :try_start_a0
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_a8
    .catch Lorg/json/JSONException; {:try_start_a0 .. :try_end_a8} :catch_9b

    goto :goto_86
.end method
