.class public Lcom/gionee/gsp/AmigoPayer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "AmigoPayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gionee/gsp/AmigoPayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Receiver"
.end annotation


# instance fields
.field private mAmigoPayer:Lcom/gionee/gsp/AmigoPayer;

.field final synthetic this$0:Lcom/gionee/gsp/AmigoPayer;


# direct methods
.method protected constructor <init>(Lcom/gionee/gsp/AmigoPayer;)V
    .registers 2

    .prologue
    .line 285
    iput-object p1, p0, Lcom/gionee/gsp/AmigoPayer$Receiver;->this$0:Lcom/gionee/gsp/AmigoPayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 295
    const-string v1, "AmigoPayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "listening"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 297
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "packagename":Ljava/lang/String;
    const-string v1, "AmigoPayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "packagename :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v1, "com.gionee.gsp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 302
    :try_start_4a
    iget-object v1, p0, Lcom/gionee/gsp/AmigoPayer$Receiver;->this$0:Lcom/gionee/gsp/AmigoPayer;

    # getter for: Lcom/gionee/gsp/AmigoPayer;->mReceiver:Lcom/gionee/gsp/AmigoPayer$Receiver;
    invoke-static {v1}, Lcom/gionee/gsp/AmigoPayer;->access$1(Lcom/gionee/gsp/AmigoPayer;)Lcom/gionee/gsp/AmigoPayer$Receiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_53} :catch_fc

    .line 308
    :goto_53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/gionee/gsp/AmigoPayer;->access$2(J)V

    .line 309
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/gionee/gsp/AmigoPayer;->access$3(Z)V

    .line 310
    const-string v1, "AmigoPayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "--------------22,mIsInstall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/gionee/gsp/AmigoPayer;->sIsInstall:Z
    invoke-static {}, Lcom/gionee/gsp/AmigoPayer;->access$4()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v1, p0, Lcom/gionee/gsp/AmigoPayer$Receiver;->this$0:Lcom/gionee/gsp/AmigoPayer;

    iget-object v1, v1, Lcom/gionee/gsp/AmigoPayer;->mResultCodeUpdate:Ljava/lang/String;

    invoke-static {v1}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 327
    .end local v0    # "packagename":Ljava/lang/String;
    :cond_8c
    :goto_8c
    return-void

    .line 315
    .restart local v0    # "packagename":Ljava/lang/String;
    :cond_8d
    const-string v1, "AmigoPayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "--------------mOrderInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gionee/gsp/AmigoPayer$Receiver;->this$0:Lcom/gionee/gsp/AmigoPayer;

    # getter for: Lcom/gionee/gsp/AmigoPayer;->mOrderInfo:Ljava/lang/String;
    invoke-static {v3}, Lcom/gionee/gsp/AmigoPayer;->access$6(Lcom/gionee/gsp/AmigoPayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v1, "6000"

    iget-object v2, p0, Lcom/gionee/gsp/AmigoPayer$Receiver;->this$0:Lcom/gionee/gsp/AmigoPayer;

    iget-object v2, v2, Lcom/gionee/gsp/AmigoPayer;->mResultCodeUpdate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 318
    iget-object v1, p0, Lcom/gionee/gsp/AmigoPayer$Receiver;->this$0:Lcom/gionee/gsp/AmigoPayer;

    # getter for: Lcom/gionee/gsp/AmigoPayer;->mGnCommplatformImplForBase:Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    invoke-static {v1}, Lcom/gionee/gsp/AmigoPayer;->access$7(Lcom/gionee/gsp/AmigoPayer;)Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    move-result-object v1

    iget-object v2, p0, Lcom/gionee/gsp/AmigoPayer$Receiver;->this$0:Lcom/gionee/gsp/AmigoPayer;

    # getter for: Lcom/gionee/gsp/AmigoPayer;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/gionee/gsp/AmigoPayer;->access$0(Lcom/gionee/gsp/AmigoPayer;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/gionee/gsp/AmigoPayer$Receiver;->this$0:Lcom/gionee/gsp/AmigoPayer;

    # getter for: Lcom/gionee/gsp/AmigoPayer;->mOrderInfo:Ljava/lang/String;
    invoke-static {v3}, Lcom/gionee/gsp/AmigoPayer;->access$6(Lcom/gionee/gsp/AmigoPayer;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/gionee/gsp/AmigoPayer$Receiver;->this$0:Lcom/gionee/gsp/AmigoPayer;

    # getter for: Lcom/gionee/gsp/AmigoPayer;->mMyPayCallback:Lcom/gionee/gsp/AmigoPayer$MyPayCallback;
    invoke-static {v4}, Lcom/gionee/gsp/AmigoPayer;->access$8(Lcom/gionee/gsp/AmigoPayer;)Lcom/gionee/gsp/AmigoPayer$MyPayCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/gionee/gsp/AmigoPayer$Receiver;->this$0:Lcom/gionee/gsp/AmigoPayer;

    iget v5, v5, Lcom/gionee/gsp/AmigoPayer;->mGspFlag:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/gionee/pay/gsp/PayCallback;I)V

    .line 322
    :cond_de
    :goto_de
    iget-object v1, p0, Lcom/gionee/gsp/AmigoPayer$Receiver;->this$0:Lcom/gionee/gsp/AmigoPayer;

    invoke-virtual {v1}, Lcom/gionee/gsp/AmigoPayer;->onResume()V

    .line 324
    iget-object v1, p0, Lcom/gionee/gsp/AmigoPayer$Receiver;->this$0:Lcom/gionee/gsp/AmigoPayer;

    const-string v2, ""

    iput-object v2, v1, Lcom/gionee/gsp/AmigoPayer;->mResultCodeUpdate:Ljava/lang/String;

    goto :goto_8c

    .line 319
    :cond_ea
    const-string v1, "6003"

    iget-object v2, p0, Lcom/gionee/gsp/AmigoPayer$Receiver;->this$0:Lcom/gionee/gsp/AmigoPayer;

    iget-object v2, v2, Lcom/gionee/gsp/AmigoPayer;->mResultCodeUpdate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 320
    iget-object v1, p0, Lcom/gionee/gsp/AmigoPayer$Receiver;->this$0:Lcom/gionee/gsp/AmigoPayer;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/gionee/gsp/AmigoPayer;->mIsNeedRePay:Z

    goto :goto_de

    .line 303
    :catch_fc
    move-exception v1

    goto/16 :goto_53
.end method

.method public setAmigoPayer(Lcom/gionee/gsp/AmigoPayer;)V
    .registers 2
    .param p1, "amigoPayer"    # Lcom/gionee/gsp/AmigoPayer;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/gionee/gsp/AmigoPayer$Receiver;->mAmigoPayer:Lcom/gionee/gsp/AmigoPayer;

    .line 291
    return-void
.end method
