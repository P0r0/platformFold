.class final Lcom/vivo/sdkplugin/activity/eA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/eA;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/eA;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V

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

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eA;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

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

    if-ne p3, v0, :cond_b9

    :try_start_30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "stat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_d2

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eA;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    new-instance v3, Lcom/vivo/sdkplugin/adapter/SubAccountJsonPaser;

    invoke-direct {v3, p4}, Lcom/vivo/sdkplugin/adapter/SubAccountJsonPaser;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->b:Lcom/vivo/sdkplugin/adapter/SubAccountJsonPaser;
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_53} :catch_b5

    :try_start_53
    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eA;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    const-string v3, "submax"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->c:I

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eA;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    const-string v3, "subcount"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->d:I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_67} :catch_b0
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_67} :catch_b5

    :goto_67
    :try_start_67
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eA;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eA;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    iget-object v2, v2, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->b:Lcom/vivo/sdkplugin/adapter/SubAccountJsonPaser;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/adapter/SubAccountJsonPaser;->getSubAccount()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountActivity;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eA;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->d(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eA;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->d(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eA;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v0, "SubAccountActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSubAccountList"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/eA;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Lorg/json/JSONException; {:try_start_67 .. :try_end_a6} :catch_b5

    :goto_a6
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eA;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_b0
    move-exception v0

    :try_start_b1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b4
    .catch Lorg/json/JSONException; {:try_start_b1 .. :try_end_b4} :catch_b5

    goto :goto_67

    :catch_b5
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_b9
    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eA;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eA;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_no_network_title"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_a6

    :cond_d2
    const/4 v0, 0x1

    :try_start_d3
    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_d5
    .catch Lorg/json/JSONException; {:try_start_d3 .. :try_end_d5} :catch_b5

    goto :goto_a6
.end method
