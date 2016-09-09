.class Lcom/u8/sdk/ViVoSDK$3;
.super Lcom/u8/sdk/ActivityCallbackAdapter;
.source "ViVoSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/ViVoSDK;->initSDK(Lcom/u8/sdk/SDKParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/ViVoSDK;

.field private final synthetic val$accountListener:Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;

.field private final synthetic val$payListener:Lcom/bbk/payment/payment/OnVivoPayResultListener;


# direct methods
.method constructor <init>(Lcom/u8/sdk/ViVoSDK;Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;Lcom/bbk/payment/payment/OnVivoPayResultListener;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/ViVoSDK$3;->this$0:Lcom/u8/sdk/ViVoSDK;

    iput-object p2, p0, Lcom/u8/sdk/ViVoSDK$3;->val$accountListener:Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;

    iput-object p3, p0, Lcom/u8/sdk/ViVoSDK$3;->val$payListener:Lcom/bbk/payment/payment/OnVivoPayResultListener;

    .line 109
    invoke-direct {p0}, Lcom/u8/sdk/ActivityCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0xb

    .line 139
    packed-switch p1, :pswitch_data_50

    .line 165
    :goto_5
    return-void

    .line 142
    :pswitch_6
    const/4 v4, -0x1

    if-ne p2, v4, :cond_43

    .line 144
    :try_start_9
    const-string v4, "pay_info"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 145
    .local v1, "extras":Landroid/os/Bundle;
    const-string v4, "pay_result"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 146
    .local v3, "pay_result":Z
    if-eqz v3, :cond_33

    .line 147
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v4

    const/16 v5, 0xa

    const-string v6, "pay success"

    invoke-virtual {v4, v5, v6}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_23

    goto :goto_5

    .line 160
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v3    # "pay_result":Z
    :catch_23
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_5

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "extras":Landroid/os/Bundle;
    .restart local v3    # "pay_result":Z
    :cond_33
    :try_start_33
    const-string v4, "pay_msg"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "pay_msg":Ljava/lang/String;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_5

    .line 156
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "pay_msg":Ljava/lang/String;
    .end local v3    # "pay_result":Z
    :cond_43
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v4

    const/16 v5, 0xb

    const-string v6, "\u652f\u4ed8\u5931\u8d25"

    invoke-virtual {v4, v5, v6}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4e} :catch_23

    goto :goto_5

    .line 139
    nop

    :pswitch_data_50
    .packed-switch 0x3ea
        :pswitch_6
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK$3;->this$0:Lcom/u8/sdk/ViVoSDK;

    # getter for: Lcom/u8/sdk/ViVoSDK;->sdkApi:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;
    invoke-static {v0}, Lcom/u8/sdk/ViVoSDK;->access$0(Lcom/u8/sdk/ViVoSDK;)Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->hideVivoAssitView(Landroid/content/Context;)V

    .line 114
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->vivoAccountonDestroy(Landroid/content/Context;)V

    .line 115
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK$3;->this$0:Lcom/u8/sdk/ViVoSDK;

    # getter for: Lcom/u8/sdk/ViVoSDK;->sdkApi:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;
    invoke-static {v0}, Lcom/u8/sdk/ViVoSDK;->access$0(Lcom/u8/sdk/ViVoSDK;)Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/u8/sdk/ViVoSDK$3;->val$accountListener:Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->unRegistVivoAccountChangeListener(Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;)V

    .line 116
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK$3;->this$0:Lcom/u8/sdk/ViVoSDK;

    # getter for: Lcom/u8/sdk/ViVoSDK;->sdkApi:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;
    invoke-static {v0}, Lcom/u8/sdk/ViVoSDK;->access$0(Lcom/u8/sdk/ViVoSDK;)Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/u8/sdk/ViVoSDK$3;->val$payListener:Lcom/bbk/payment/payment/OnVivoPayResultListener;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->unRegistVivoPayResultListener(Lcom/bbk/payment/payment/OnVivoPayResultListener;)V

    .line 118
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK$3;->this$0:Lcom/u8/sdk/ViVoSDK;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/u8/sdk/ViVoSDK;->access$1(Lcom/u8/sdk/ViVoSDK;Z)V

    .line 123
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK$3;->this$0:Lcom/u8/sdk/ViVoSDK;

    # getter for: Lcom/u8/sdk/ViVoSDK;->showing:Z
    invoke-static {v0}, Lcom/u8/sdk/ViVoSDK;->access$3(Lcom/u8/sdk/ViVoSDK;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 128
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK$3;->this$0:Lcom/u8/sdk/ViVoSDK;

    # getter for: Lcom/u8/sdk/ViVoSDK;->sdkApi:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;
    invoke-static {v0}, Lcom/u8/sdk/ViVoSDK;->access$0(Lcom/u8/sdk/ViVoSDK;)Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->showVivoAssitView(Landroid/content/Context;)V

    .line 132
    :cond_19
    return-void
.end method
