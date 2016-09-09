.class final Lcom/vivo/sdkplugin/activity/ek;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/SetpwdActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/ek;-><init>(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 16

    const/16 v10, 0xd

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->b(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const-string v0, "SetPassWordActivityLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CommitVerifyCodeResponed,connStatus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RegisteResponed.in="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_155

    :try_start_31
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "stat"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "msg"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_18a

    const/16 v0, 0x1c

    iput v0, v3, Landroid/os/Message;->what:I
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_4b} :catch_127

    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->b(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_55
    :try_start_55
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    const-string v1, "authtoken"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a(Lcom/vivo/sdkplugin/activity/SetpwdActivity;Ljava/lang/String;)V

    const-string v0, "openid"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "id"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "uuid"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "name"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "phonenum"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-static {v8, v9}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a(Lcom/vivo/sdkplugin/activity/SetpwdActivity;Ljava/util/Map;)V

    if-eqz v0, :cond_145

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_145

    :goto_98
    iget-object v8, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v8}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->c(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Ljava/util/Map;

    move-result-object v8

    const-string v9, "id"

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v8}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->c(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Ljava/util/Map;

    move-result-object v8

    const-string v9, "uuid"

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v7}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->c(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Ljava/util/Map;

    move-result-object v7

    const-string v8, "name"

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v7}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->c(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Ljava/util/Map;

    move-result-object v7

    const-string v8, "email"

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->c(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Ljava/util/Map;

    move-result-object v2

    const-string v7, "phonenum"

    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->c(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "vivoToken"

    iget-object v7, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v7}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->d(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->e(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    const-string v2, "sk"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLoginSk(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "openid"

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "authtoken"

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->d(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "name"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->hideSomeCharOfEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->c(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->returnResult(Ljava/util/Map;Ljava/lang/String;)V

    const/16 v0, 0x1b

    iput v0, v3, Landroid/os/Message;->what:I
    :try_end_125
    .catch Lorg/json/JSONException; {:try_start_55 .. :try_end_125} :catch_127

    goto/16 :goto_4b

    :catch_127
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iput v10, v3, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v1, v2, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_4b

    :cond_145
    if-eqz v1, :cond_152

    :try_start_147
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_14c
    .catch Lorg/json/JSONException; {:try_start_147 .. :try_end_14c} :catch_127

    move-result v0

    if-nez v0, :cond_152

    move-object v0, v1

    goto/16 :goto_98

    :cond_152
    move-object v0, v2

    goto/16 :goto_98

    :cond_155
    const/16 v0, 0xca

    if-ne p3, v0, :cond_4b

    const-string v0, "SetPassWordActivityLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "message.obj ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v10, v3, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ek;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v1, v2, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_4b

    nop

    :pswitch_data_18a
    .packed-switch 0xc8
        :pswitch_55
    .end packed-switch
.end method
