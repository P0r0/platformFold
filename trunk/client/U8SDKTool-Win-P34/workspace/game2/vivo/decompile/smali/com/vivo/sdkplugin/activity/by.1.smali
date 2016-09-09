.class final Lcom/vivo/sdkplugin/activity/by;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/by;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/by;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 13

    const/16 v7, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "FindPasswordActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CommitAccountNumResponed,connStatus="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", in="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/by;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/16 v2, 0x12c

    if-ne p3, v2, :cond_10a

    :try_start_33
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "stat"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v5, "msg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v6, 0xc8

    if-ne v2, v6, :cond_e7

    const/4 v2, 0x7

    iput v2, v3, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/by;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    const-string v5, "uuid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/by;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    const-string v2, "hasEmail"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_e1

    move v2, v0

    :goto_63
    invoke-static {v5, v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Z)V

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/by;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    const-string v2, "hasPwdPro"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_e3

    move v2, v0

    :goto_71
    invoke-static {v5, v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Z)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/by;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    const-string v5, "hasPhoneNum"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v0, :cond_e5

    :goto_7e
    invoke-static {v2, v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/by;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    const-string v1, "email"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/by;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    const-string v1, "phonenum"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->d(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Ljava/lang/String;)V

    const-string v0, "019"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1*#*hasEmail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/by;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hasPhone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/by;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hasPwdPro:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/by;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->d(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/by;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->e(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_d7
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_d7} :catch_106

    :goto_d7
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/by;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_e1
    move v2, v1

    goto :goto_63

    :cond_e3
    move v2, v1

    goto :goto_71

    :cond_e5
    move v0, v1

    goto :goto_7e

    :cond_e7
    :try_start_e7
    const-string v0, "019"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0msg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/by;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->e(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/16 v0, 0x8

    iput v0, v3, Landroid/os/Message;->what:I
    :try_end_105
    .catch Lorg/json/JSONException; {:try_start_e7 .. :try_end_105} :catch_106

    goto :goto_d7

    :catch_106
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_10a
    iput v7, v3, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/by;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/by;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v4, "vivo_no_network_title"

    invoke-static {v1, v2, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_d7
.end method
