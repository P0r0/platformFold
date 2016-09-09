.class final Lcom/vivo/sdkplugin/activity/fm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/fm;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/fm;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 10

    const/4 v2, 0x7

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    const-string v0, "feedback"

    const-string v1, "-----------GetMsgResponed------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "feedback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "-----------in------------:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_5f

    :try_start_23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "stat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_59

    const/4 v1, 0x6

    :goto_33
    const-string v3, "msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_38} :catch_5b

    move-result-object v0

    :goto_39
    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/fm;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->d(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Lcom/vivo/sdkplugin/activity/fn;

    move-result-object v2

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/fm;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->d(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Lcom/vivo/sdkplugin/activity/fn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/fn;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iput v1, v2, Landroid/os/Message;->what:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fm;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->d(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Lcom/vivo/sdkplugin/activity/fn;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/fn;->sendMessage(Landroid/os/Message;)Z

    :cond_58
    return-void

    :cond_59
    move v1, v2

    goto :goto_33

    :catch_5b
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fm;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/fm;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_39
.end method
