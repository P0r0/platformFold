.class final Lcom/vivo/sdkplugin/activity/aL;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/aL;->a:Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/aL;-><init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 10

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aL;->a:Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->b(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_3e

    :try_start_12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "stat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0xc8

    if-ne v2, v0, :cond_36

    const/4 v0, 0x0

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2c} :catch_3a

    :goto_2c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aL;->a:Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->b(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_36
    const/4 v0, 0x1

    :try_start_37
    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_39} :catch_3a

    goto :goto_2c

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3e
    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aL;->a:Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/aL;->a:Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_no_network_title"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_2c
.end method
