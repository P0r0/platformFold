.class final Lcom/vivo/sdkplugin/Utils/t;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/t;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/Utils/t;-><init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_b2

    :cond_5
    :goto_5
    return-void

    :sswitch_6
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/t;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->safeDismissLoadingDialog()V

    const/4 v1, 0x0

    :try_start_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "forceUpdate"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae

    const-string v0, "forceUpdate"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_29
    const-string v1, "activate"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/t;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->a(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    move-result-object v0

    const-string v1, "3"

    iput-object v1, v0, Lcom/vivo/sdkplugin/model/MAppUpdateInfo;->level:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/t;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/t;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->a(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->a(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_46} :catch_47

    goto :goto_5

    :catch_47
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    :cond_4c
    if-eqz v1, :cond_5a

    :try_start_4e
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/t;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/t;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->a(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->a(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V

    goto :goto_5

    :cond_5a
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/t;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->b(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)V
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_5f} :catch_47

    goto :goto_5

    :sswitch_60
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/t;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->safeDismissLoadingDialog()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/t;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/t;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->a(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->a(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V

    goto :goto_5

    :sswitch_71
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/t;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->getIsOldUser()V

    goto :goto_5

    :sswitch_77
    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/t;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    invoke-static {v1, v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->b(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/t;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->a(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/vivo/sdkplugin/model/MAppUpdateInfo;->level:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/t;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/t;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->a(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->a(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V

    :goto_9b
    const-string v0, "023"

    const-string v1, "\u2014\u2014"

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/t;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    iget-object v2, v2, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_5

    :cond_a8
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/t;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->getIsOldUser()V

    goto :goto_9b

    :cond_ae
    move v0, v1

    goto/16 :goto_29

    nop

    :sswitch_data_b2
    .sparse-switch
        0x410 -> :sswitch_6
        0x411 -> :sswitch_60
        0x41a -> :sswitch_77
        0x41b -> :sswitch_71
    .end sparse-switch
.end method
