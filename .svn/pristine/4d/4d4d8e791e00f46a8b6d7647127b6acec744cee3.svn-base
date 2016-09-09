.class Lcom/gionee/gsp/service/account/AccountImpl$5;
.super Ljava/lang/Thread;
.source "AccountImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/account/AccountImpl;->getPhoneNumberForGameSDK(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/account/AccountImpl;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$gnCommonListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/account/AccountImpl;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/account/AccountImpl$5;->this$0:Lcom/gionee/gsp/service/account/AccountImpl;

    iput-object p2, p0, Lcom/gionee/gsp/service/account/AccountImpl$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/gionee/gsp/service/account/AccountImpl$5;->val$gnCommonListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;

    .line 585
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 587
    const-string v3, ""

    .line 589
    .local v3, "phoneNumber":Ljava/lang/String;
    :try_start_2
    iget-object v6, p0, Lcom/gionee/gsp/service/account/AccountImpl$5;->this$0:Lcom/gionee/gsp/service/account/AccountImpl;

    iget-object v7, p0, Lcom/gionee/gsp/service/account/AccountImpl$5;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/gionee/gsp/service/account/AccountImpl;->checkIsBind(Landroid/content/Context;)V
    invoke-static {v6, v7}, Lcom/gionee/gsp/service/account/AccountImpl;->access$1(Lcom/gionee/gsp/service/account/AccountImpl;Landroid/content/Context;)V

    .line 590
    sget-object v6, Lcom/gionee/gsp/service/account/AccountImpl;->sGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

    sget-object v7, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/gionee/account/aidl/GSPAccountInterface;->getBIInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 591
    .local v0, "biInfo":Ljava/util/Map;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    const-string v6, "tn"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 592
    const-string v6, "tn"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2c} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_82

    move-result-object v3

    .line 611
    .end local v0    # "biInfo":Ljava/util/Map;
    :cond_2d
    :goto_2d
    move-object v5, v3

    .line 612
    .local v5, "result":Ljava/lang/String;
    iget-object v6, p0, Lcom/gionee/gsp/service/account/AccountImpl$5;->val$activity:Landroid/app/Activity;

    new-instance v7, Lcom/gionee/gsp/service/account/AccountImpl$5$1;

    iget-object v8, p0, Lcom/gionee/gsp/service/account/AccountImpl$5;->val$gnCommonListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;

    invoke-direct {v7, p0, v8, v5}, Lcom/gionee/gsp/service/account/AccountImpl$5$1;-><init>(Lcom/gionee/gsp/service/account/AccountImpl$5;Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 620
    return-void

    .line 594
    .end local v5    # "result":Ljava/lang/String;
    :catch_3b
    move-exception v4

    .line 595
    .local v4, "re":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 596
    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    .line 597
    iget-object v6, p0, Lcom/gionee/gsp/service/account/AccountImpl$5;->this$0:Lcom/gionee/gsp/service/account/AccountImpl;

    iget-object v7, p0, Lcom/gionee/gsp/service/account/AccountImpl$5;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/gionee/gsp/service/account/AccountImpl;->unBindAccount(Landroid/content/Context;)V
    invoke-static {v6, v7}, Lcom/gionee/gsp/service/account/AccountImpl;->access$2(Lcom/gionee/gsp/service/account/AccountImpl;Landroid/content/Context;)V

    .line 599
    :try_start_4d
    iget-object v6, p0, Lcom/gionee/gsp/service/account/AccountImpl$5;->this$0:Lcom/gionee/gsp/service/account/AccountImpl;

    iget-object v7, p0, Lcom/gionee/gsp/service/account/AccountImpl$5;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/gionee/gsp/service/account/AccountImpl;->checkIsBind(Landroid/content/Context;)V
    invoke-static {v6, v7}, Lcom/gionee/gsp/service/account/AccountImpl;->access$1(Lcom/gionee/gsp/service/account/AccountImpl;Landroid/content/Context;)V

    .line 600
    sget-object v6, Lcom/gionee/gsp/service/account/AccountImpl;->sGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

    sget-object v7, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/gionee/account/aidl/GSPAccountInterface;->getBIInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 601
    .restart local v0    # "biInfo":Ljava/util/Map;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    const-string v6, "tn"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 602
    const-string v6, "tn"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_77} :catch_79

    move-result-object v3

    goto :goto_2d

    .line 604
    .end local v0    # "biInfo":Ljava/util/Map;
    :catch_79
    move-exception v2

    .line 605
    .local v2, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    goto :goto_2d

    .line 607
    .end local v2    # "e1":Ljava/lang/Exception;
    .end local v4    # "re":Landroid/os/RemoteException;
    :catch_82
    move-exception v1

    .line 608
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 609
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    goto :goto_2d
.end method
