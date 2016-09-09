.class Lcom/gionee/gsp/service/account/AccountImpl$4;
.super Ljava/lang/Thread;
.source "AccountImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/account/AccountImpl;->getGoldCoinForGameSDK(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;)V
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
    iput-object p1, p0, Lcom/gionee/gsp/service/account/AccountImpl$4;->this$0:Lcom/gionee/gsp/service/account/AccountImpl;

    iput-object p2, p0, Lcom/gionee/gsp/service/account/AccountImpl$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/gionee/gsp/service/account/AccountImpl$4;->val$gnCommonListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;

    .line 557
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 561
    :try_start_0
    iget-object v2, p0, Lcom/gionee/gsp/service/account/AccountImpl$4;->this$0:Lcom/gionee/gsp/service/account/AccountImpl;

    iget-object v3, p0, Lcom/gionee/gsp/service/account/AccountImpl$4;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/gionee/gsp/service/account/AccountImpl;->checkIsBind(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/gionee/gsp/service/account/AccountImpl;->access$1(Lcom/gionee/gsp/service/account/AccountImpl;Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_1c

    .line 567
    :goto_7
    iget-object v2, p0, Lcom/gionee/gsp/service/account/AccountImpl$4;->this$0:Lcom/gionee/gsp/service/account/AccountImpl;

    iget-object v3, p0, Lcom/gionee/gsp/service/account/AccountImpl$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/gionee/gsp/service/account/AccountImpl;->getGoldCoin(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, "goldCoin":Ljava/lang/String;
    iget-object v2, p0, Lcom/gionee/gsp/service/account/AccountImpl$4;->val$activity:Landroid/app/Activity;

    new-instance v3, Lcom/gionee/gsp/service/account/AccountImpl$4$1;

    iget-object v4, p0, Lcom/gionee/gsp/service/account/AccountImpl$4;->val$gnCommonListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;

    invoke-direct {v3, p0, v1, v4}, Lcom/gionee/gsp/service/account/AccountImpl$4$1;-><init>(Lcom/gionee/gsp/service/account/AccountImpl$4;Ljava/lang/String;Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 579
    return-void

    .line 562
    .end local v1    # "goldCoin":Ljava/lang/String;
    :catch_1c
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method
