.class Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_b4

    :cond_5
    :goto_5
    return-void

    :sswitch_6
    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # invokes: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$0(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)V

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

    if-eqz v0, :cond_b0

    const-string v0, "forceUpdate"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_29
    const-string v1, "activate"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->appInfo:Lcom/vivo/sdkplugin/model/MAppUpdateInfo;
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$1(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    move-result-object v0

    const-string v1, "3"

    iput-object v1, v0, Lcom/vivo/sdkplugin/model/MAppUpdateInfo;->level:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->appInfo:Lcom/vivo/sdkplugin/model/MAppUpdateInfo;
    invoke-static {v1}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$1(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    move-result-object v1

    # invokes: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->showUpdateDialog(Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V
    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$2(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V
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
    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->appInfo:Lcom/vivo/sdkplugin/model/MAppUpdateInfo;
    invoke-static {v1}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$1(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    move-result-object v1

    # invokes: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->showUpdateDialog(Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V
    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$2(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V

    goto :goto_5

    :cond_5a
    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # invokes: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->startSDK()V
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$3(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)V
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_5f} :catch_47

    goto :goto_5

    :sswitch_60
    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # invokes: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$0(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->appInfo:Lcom/vivo/sdkplugin/model/MAppUpdateInfo;
    invoke-static {v1}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$1(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    move-result-object v1

    # invokes: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->showUpdateDialog(Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V
    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$2(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V

    goto :goto_5

    :sswitch_71
    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->getIsOldUser()V

    goto :goto_5

    :sswitch_77
    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    invoke-static {v1, v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$4(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->appInfo:Lcom/vivo/sdkplugin/model/MAppUpdateInfo;
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$1(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/vivo/sdkplugin/model/MAppUpdateInfo;->level:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->appInfo:Lcom/vivo/sdkplugin/model/MAppUpdateInfo;
    invoke-static {v1}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$1(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    move-result-object v1

    # invokes: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->showUpdateDialog(Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V
    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$2(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V

    :goto_9b
    const-string v0, "023"

    const-string v1, "\u2014\u2014"

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$5(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_5

    :cond_aa
    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->getIsOldUser()V

    goto :goto_9b

    :cond_b0
    move v0, v1

    goto/16 :goto_29

    nop

    :sswitch_data_b4
    .sparse-switch
        0x410 -> :sswitch_6
        0x411 -> :sswitch_60
        0x41a -> :sswitch_77
        0x41b -> :sswitch_71
    .end sparse-switch
.end method
