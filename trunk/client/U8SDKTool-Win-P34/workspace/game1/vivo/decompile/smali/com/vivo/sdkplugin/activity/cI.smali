.class final Lcom/vivo/sdkplugin/activity/cI;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/activity/LoginActivity;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cI;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_52

    :goto_5
    return-void

    :sswitch_6
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "-------MSG_GET_TOKEN_INFO--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cI;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->g(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/util/Map;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_5

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :sswitch_18
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "-------MSG_GET_REPORT_ACTIVATE_INFO--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cI;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->h(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/util/Map;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_5

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :sswitch_2a
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "-------MSG_GET_SUB_ACCOUNT_INFO--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cI;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->i(Lcom/vivo/sdkplugin/activity/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "---\u53d6\u6d88\u5b50\u8d26\u6237\u8bf7\u6c42\uff0c\u5f3a\u5236\u5173\u95ed\u5bf9\u8bdd\u6846\u4e86--"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cI;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;Z)V

    goto :goto_5

    :cond_47
    :try_start_47
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cI;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->j(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/util/Map;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_5

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :sswitch_data_52
    .sparse-switch
        0xd -> :sswitch_2a
        0x13 -> :sswitch_18
        0x17 -> :sswitch_6
    .end sparse-switch
.end method
