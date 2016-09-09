.class final Lcom/vivo/sdkplugin/activity/E;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/E;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/E;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 11

    const/16 v5, 0xd

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/E;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "AccountPersonalCenterActivity"

    const-string v1, "Finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/E;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->m(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-string v0, "AccountPersonalCenterActivity"

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

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_e2

    :try_start_41
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "stat"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_100

    const-string v0, "msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0x23

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_5b} :catch_c4

    :cond_5b
    :goto_5b
    const-string v0, "AccountPersonalCenterActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message.obj ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/E;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->m(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    :pswitch_7b
    const/16 v0, 0x22

    :try_start_7d
    iput v0, v1, Landroid/os/Message;->what:I

    const-string v0, "question"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ab

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/E;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    const-string v3, "question"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, v0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->questionArray:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/E;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/E;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v3, v3, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->questionArray:Lorg/json/JSONArray;

    invoke-virtual {v0, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->trimQuestions(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    :cond_ab
    const-string v3, "phonenum"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/E;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setPhoneName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/E;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setQuesTion(Ljava/lang/String;)V
    :try_end_c3
    .catch Lorg/json/JSONException; {:try_start_7d .. :try_end_c3} :catch_c4

    goto :goto_5b

    :catch_c4
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iput v5, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/E;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/E;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_no_network_title"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_5b

    :cond_e2
    const/16 v0, 0xca

    if-ne p3, v0, :cond_5b

    iput v5, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/E;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/E;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_no_network_title"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_5b

    :pswitch_data_100
    .packed-switch 0xc8
        :pswitch_7b
    .end packed-switch
.end method
