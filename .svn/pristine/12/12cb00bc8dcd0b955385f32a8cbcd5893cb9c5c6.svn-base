.class public abstract Lcom/gionee/gsp/AmigoPayer$MyPayCallback;
.super Ljava/lang/Object;
.source "AmigoPayer.java"

# interfaces
.implements Lcom/gionee/pay/gsp/PayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gionee/gsp/AmigoPayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "MyPayCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/AmigoPayer;


# direct methods
.method public constructor <init>(Lcom/gionee/gsp/AmigoPayer;)V
    .registers 2

    .prologue
    .line 202
    iput-object p1, p0, Lcom/gionee/gsp/AmigoPayer$MyPayCallback;->this$0:Lcom/gionee/gsp/AmigoPayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/gionee/gsp/AmigoPayer$MyPayCallback;->this$0:Lcom/gionee/gsp/AmigoPayer;

    # getter for: Lcom/gionee/gsp/AmigoPayer;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/gionee/gsp/AmigoPayer;->access$0(Lcom/gionee/gsp/AmigoPayer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 241
    return-void
.end method

.method public payEnd(Ljava/lang/String;)V
    .registers 8
    .param p1, "stateCode"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v2, p0, Lcom/gionee/gsp/AmigoPayer$MyPayCallback;->this$0:Lcom/gionee/gsp/AmigoPayer;

    iput-object p1, v2, Lcom/gionee/gsp/AmigoPayer;->mResultCodeUpdate:Ljava/lang/String;

    .line 207
    const-string v2, "6000"

    iget-object v3, p0, Lcom/gionee/gsp/AmigoPayer$MyPayCallback;->this$0:Lcom/gionee/gsp/AmigoPayer;

    iget-object v3, v3, Lcom/gionee/gsp/AmigoPayer;->mResultCodeUpdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 208
    const-string v2, "6003"

    iget-object v3, p0, Lcom/gionee/gsp/AmigoPayer$MyPayCallback;->this$0:Lcom/gionee/gsp/AmigoPayer;

    iget-object v3, v3, Lcom/gionee/gsp/AmigoPayer;->mResultCodeUpdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 209
    :cond_1c
    const-string v2, "AmigoPayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getThreadName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "start listen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 214
    :try_start_47
    iget-object v2, p0, Lcom/gionee/gsp/AmigoPayer$MyPayCallback;->this$0:Lcom/gionee/gsp/AmigoPayer;

    # getter for: Lcom/gionee/gsp/AmigoPayer;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/gionee/gsp/AmigoPayer;->access$0(Lcom/gionee/gsp/AmigoPayer;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/gionee/gsp/AmigoPayer$MyPayCallback;->this$0:Lcom/gionee/gsp/AmigoPayer;

    # getter for: Lcom/gionee/gsp/AmigoPayer;->mReceiver:Lcom/gionee/gsp/AmigoPayer$Receiver;
    invoke-static {v3}, Lcom/gionee/gsp/AmigoPayer;->access$1(Lcom/gionee/gsp/AmigoPayer;)Lcom/gionee/gsp/AmigoPayer$Receiver;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_56} :catch_9f

    .line 218
    :goto_56
    iget-object v2, p0, Lcom/gionee/gsp/AmigoPayer$MyPayCallback;->this$0:Lcom/gionee/gsp/AmigoPayer;

    # getter for: Lcom/gionee/gsp/AmigoPayer;->mReceiver:Lcom/gionee/gsp/AmigoPayer$Receiver;
    invoke-static {v2}, Lcom/gionee/gsp/AmigoPayer;->access$1(Lcom/gionee/gsp/AmigoPayer;)Lcom/gionee/gsp/AmigoPayer$Receiver;

    move-result-object v2

    iget-object v3, p0, Lcom/gionee/gsp/AmigoPayer$MyPayCallback;->this$0:Lcom/gionee/gsp/AmigoPayer;

    invoke-virtual {v2, v3}, Lcom/gionee/gsp/AmigoPayer$Receiver;->setAmigoPayer(Lcom/gionee/gsp/AmigoPayer;)V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/gionee/gsp/AmigoPayer;->access$2(J)V

    .line 221
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/gionee/gsp/AmigoPayer;->access$3(Z)V

    .line 222
    const-string v2, "AmigoPayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getThreadName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "--------------21,mIsInstall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/gionee/gsp/AmigoPayer;->sIsInstall:Z
    invoke-static {}, Lcom/gionee/gsp/AmigoPayer;->access$4()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mStartAutoInstallTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/gionee/gsp/AmigoPayer;->sStartAutoInstallTime:J
    invoke-static {}, Lcom/gionee/gsp/AmigoPayer;->access$5()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_9e
    :goto_9e
    return-void

    .line 215
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    :catch_9f
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_a4
    invoke-static {p1}, Lcom/gionee/gsp/common/GnCommonConfig;->isSDKResultCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9e

    .line 230
    :try_start_aa
    iget-object v2, p0, Lcom/gionee/gsp/AmigoPayer$MyPayCallback;->this$0:Lcom/gionee/gsp/AmigoPayer;

    # getter for: Lcom/gionee/gsp/AmigoPayer;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/gionee/gsp/AmigoPayer;->access$0(Lcom/gionee/gsp/AmigoPayer;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/gionee/gsp/AmigoPayer$MyPayCallback;->this$0:Lcom/gionee/gsp/AmigoPayer;

    # getter for: Lcom/gionee/gsp/AmigoPayer;->mReceiver:Lcom/gionee/gsp/AmigoPayer$Receiver;
    invoke-static {v3}, Lcom/gionee/gsp/AmigoPayer;->access$1(Lcom/gionee/gsp/AmigoPayer;)Lcom/gionee/gsp/AmigoPayer$Receiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b9} :catch_ba

    goto :goto_9e

    .line 231
    :catch_ba
    move-exception v2

    goto :goto_9e
.end method
