.class final Lcom/vivo/sdkplugin/accounts/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/accounts/f;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/accounts/f;-><init>(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 13

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/f;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->f(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/i;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const-string v0, "AssistService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connStatus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_2fa

    :try_start_2f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_31a

    const-string v1, "respMsg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0xc

    iput v0, v3, Landroid/os/Message;->what:I
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_49} :catch_157

    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/f;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->f(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/i;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/vivo/sdkplugin/accounts/i;->sendMessage(Landroid/os/Message;)Z

    return-void

    :sswitch_53
    const/16 v0, 0xb

    :try_start_55
    iput v0, v3, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/f;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    new-instance v1, Lcom/vivo/sdkplugin/adapter/FloatViewConfigJsonParser;

    invoke-direct {v1, p4}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigJsonParser;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a:Lcom/vivo/sdkplugin/adapter/FloatViewConfigJsonParser;

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/f;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/f;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    iget-object v1, v1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a:Lcom/vivo/sdkplugin/adapter/FloatViewConfigJsonParser;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigJsonParser;->getConfigListInfo()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/f;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->g(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b:[I

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/f;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->g(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->c:[I

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/vivo/sdkplugin/accounts/f;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v2}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->g(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    move v1, v0

    :goto_97
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_177

    const-string v0, "AccountAssistWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "giftpackageurl"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->giftpackageurl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->forumurl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "configInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "coordinateX"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "coordinateY"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "----\u540e\u53f0\u914d\u7f6e\uff0c\u521d\u59cb\u5316----initX\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " initY\uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/sdkplugin/accounts/f;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v4}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getCoordinatex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_111

    iget-object v4, p0, Lcom/vivo/sdkplugin/accounts/f;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v4}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setCoordinatex(I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/f;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setCoordinatey(I)V

    :cond_111
    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/f;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getCoordinatex()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/accounts/f;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v2}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getCoordinatey()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "----sp\u4fdd\u5b58\u7684\u4e0a\u6b21\u6e38\u620f\u7684\u5750\u6807----(x,y)\uff1a("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    sput v1, Lcom/vivo/assist/widget/AssistView;->coordinateX:I

    sput v2, Lcom/vivo/assist/widget/AssistView;->coordinateY:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/f;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    const-string v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->status:I
    :try_end_155
    .catch Lorg/json/JSONException; {:try_start_55 .. :try_end_155} :catch_157

    goto/16 :goto_49

    :catch_157
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, 0xc

    iput v0, v3, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v1, v2, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_49

    :cond_177
    :try_start_177
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_324

    sget-object v5, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b:[I

    add-int/lit8 v6, v1, 0x6

    aput v6, v5, v2

    sget-object v5, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->c:[I

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getserialNum()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v2

    if-nez v1, :cond_2b0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getlink()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->defaulturl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getname()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/assist/function/FunctionFactory;->DEFAULT_WEBVIEW_TITLE:Ljava/lang/String;

    :cond_1b5
    :goto_1b5
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_97

    :pswitch_1bc
    sget-object v5, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b:[I

    const/4 v6, 0x3

    aput v6, v5, v2

    sget-object v5, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->c:[I

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getserialNum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_97

    :pswitch_1d6
    sget-object v5, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b:[I

    const/4 v6, 0x2

    aput v6, v5, v2

    sget-object v5, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->c:[I

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getserialNum()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v2

    const-string v5, "VivoAccountManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "floatViewConfigData.getlink()"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getlink()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getlink()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_221

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getlink()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_221

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getlink()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_221

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getlink()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->gifturl:Ljava/lang/String;

    :cond_221
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_97

    :pswitch_226
    sget-object v5, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b:[I

    const/4 v6, 0x5

    aput v6, v5, v2

    sget-object v5, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->c:[I

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getserialNum()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v2

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getlink()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_259

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getlink()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_259

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getlink()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_259

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getlink()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->activeurl:Ljava/lang/String;

    :cond_259
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_97

    :pswitch_25e
    sget-object v5, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b:[I

    const/4 v6, 0x0

    aput v6, v5, v2

    sget-object v5, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->c:[I

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getserialNum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_97

    :pswitch_278
    sget-object v5, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b:[I

    const/4 v6, 0x1

    aput v6, v5, v2

    sget-object v5, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->c:[I

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getserialNum()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v2

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getlink()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2ab

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getlink()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_2ab

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getlink()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2ab

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getlink()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->forumurl:Ljava/lang/String;

    :cond_2ab
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_97

    :cond_2b0
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2c1

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getlink()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->defaulturl1:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getname()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/assist/function/FunctionFactory;->DEFAULT_WEBVIEWONE_TITLE:Ljava/lang/String;

    goto/16 :goto_1b5

    :cond_2c1
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2d2

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getlink()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->defaulturl2:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getname()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/assist/function/FunctionFactory;->DEFAULT_WEBVIEWTWO_TITLE:Ljava/lang/String;

    goto/16 :goto_1b5

    :cond_2d2
    const/4 v5, 0x3

    if-ne v1, v5, :cond_2e3

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getlink()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->defaulturl3:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getname()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/assist/function/FunctionFactory;->DEFAULT_WEBVIEWTHREE_TITLE:Ljava/lang/String;

    goto/16 :goto_1b5

    :cond_2e3
    const/4 v5, 0x4

    if-ne v1, v5, :cond_1b5

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getlink()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->defaulturl4:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getname()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/assist/function/FunctionFactory;->DEFAULT_WEBVIEWFOUR_TITLE:Ljava/lang/String;

    goto/16 :goto_1b5

    :sswitch_2f4
    const/16 v0, 0xc

    iput v0, v3, Landroid/os/Message;->what:I
    :try_end_2f8
    .catch Lorg/json/JSONException; {:try_start_177 .. :try_end_2f8} :catch_157

    goto/16 :goto_49

    :cond_2fa
    const/16 v0, 0xca

    if-ne p3, v0, :cond_49

    const/16 v0, 0xd

    iput v0, v3, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v1, v2, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_49

    :sswitch_data_31a
    .sparse-switch
        0xc8 -> :sswitch_53
        0x194 -> :sswitch_2f4
    .end sparse-switch

    :pswitch_data_324
    .packed-switch 0x3e9
        :pswitch_1bc
        :pswitch_1d6
        :pswitch_226
        :pswitch_25e
        :pswitch_278
    .end packed-switch
.end method
