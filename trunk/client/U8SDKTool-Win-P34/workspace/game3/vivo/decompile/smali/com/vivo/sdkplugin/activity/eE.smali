.class final Lcom/vivo/sdkplugin/activity/eE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/eE;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/eE;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 11

    const/4 v5, 0x6

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eE;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-string v0, "CommitAccountNumResponed"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CommitAccountNumResponed"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "connStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_62

    :try_start_30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "stat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_58

    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_4e} :catch_5e

    :goto_4e
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eE;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_58
    :try_start_58
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x6

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_5d} :catch_5e

    goto :goto_4e

    :catch_5e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_62
    iput v5, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eE;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eE;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_no_network_title"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_4e
.end method
