.class final Lcom/vivo/sdkplugin/activity/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/an;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/an;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

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

    const-string v0, "BindQuestionActivityLog"

    const-string v1, "CommitAnswerResponed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/an;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

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

    if-ne p3, v0, :cond_89

    :try_start_38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "stat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_b6

    const/4 v0, 0x3

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_51} :catch_72

    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/an;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_5b
    const/4 v0, 0x2

    :try_start_5c
    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/an;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->d(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/an;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->e(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setQuesTion(Ljava/lang/String;)V
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_5c .. :try_end_71} :catch_72

    goto :goto_51

    :catch_72
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/an;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/an;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    const-string v3, "vivo_get_data_network_error"

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_51

    :cond_89
    const/16 v0, 0xca

    if-ne p3, v0, :cond_51

    const-string v0, "BindQuestionActivityLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message.obj ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/an;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/an;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    const-string v3, "vivo_get_data_network_error"

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_51

    :pswitch_data_b6
    .packed-switch 0xc8
        :pswitch_5b
    .end packed-switch
.end method
