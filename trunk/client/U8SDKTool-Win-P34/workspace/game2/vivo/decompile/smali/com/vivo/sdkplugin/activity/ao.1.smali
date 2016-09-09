.class final Lcom/vivo/sdkplugin/activity/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/ao;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/ao;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 10

    const/16 v4, 0xd

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ao;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-string v0, "BindQuestionActivityLog"

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

    if-ne p3, v0, :cond_7c

    :try_start_31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "stat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_94

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0x25

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_4b} :catch_65

    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ao;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_55
    const/16 v2, 0x24

    :try_start_57
    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/ao;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    const-string v3, "sysquestion"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Lorg/json/JSONArray;)V
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_64} :catch_65

    goto :goto_4b

    :catch_65
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ao;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/ao;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    const-string v3, "vivo_get_data_network_error"

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_4b

    :cond_7c
    const/16 v0, 0xca

    if-ne p3, v0, :cond_4b

    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ao;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/ao;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    const-string v3, "vivo_get_data_network_error"

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_4b

    nop

    :pswitch_data_94
    .packed-switch 0xc8
        :pswitch_55
    .end packed-switch
.end method
