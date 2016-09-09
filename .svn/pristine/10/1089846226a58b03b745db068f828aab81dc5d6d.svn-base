.class Lcom/gionee/gsp/service/account/AccountImpl$3;
.super Ljava/lang/Thread;
.source "AccountImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/account/AccountImpl;->getPlayerId(Landroid/content/Context;Lcom/gionee/gsp/service/account/sdk/listener/IGetPlayerIdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/account/AccountImpl;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$gnCommonListener:Lcom/gionee/gsp/service/account/sdk/listener/IGetPlayerIdListener;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/account/AccountImpl;Landroid/content/Context;Lcom/gionee/gsp/service/account/sdk/listener/IGetPlayerIdListener;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/account/AccountImpl$3;->this$0:Lcom/gionee/gsp/service/account/AccountImpl;

    iput-object p2, p0, Lcom/gionee/gsp/service/account/AccountImpl$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/gionee/gsp/service/account/AccountImpl$3;->val$gnCommonListener:Lcom/gionee/gsp/service/account/sdk/listener/IGetPlayerIdListener;

    .line 361
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 363
    const-string v3, ""

    .line 365
    .local v3, "playerId":Ljava/lang/String;
    :try_start_2
    iget-object v5, p0, Lcom/gionee/gsp/service/account/AccountImpl$3;->this$0:Lcom/gionee/gsp/service/account/AccountImpl;

    iget-object v6, p0, Lcom/gionee/gsp/service/account/AccountImpl$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/gionee/gsp/service/account/AccountImpl;->checkIsBind(Landroid/content/Context;)V
    invoke-static {v5, v6}, Lcom/gionee/gsp/service/account/AccountImpl;->access$1(Lcom/gionee/gsp/service/account/AccountImpl;Landroid/content/Context;)V

    .line 366
    sget-object v5, Lcom/gionee/gsp/service/account/AccountImpl;->sGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

    sget-object v6, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/gionee/account/aidl/GSPAccountInterface;->getBIInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 367
    .local v0, "biInfo":Ljava/util/Map;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    const-string v5, "playerId"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 368
    const-string v5, "playerId"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2c} :catch_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_7a

    move-result-object v3

    .line 387
    .end local v0    # "biInfo":Ljava/util/Map;
    :cond_2d
    :goto_2d
    iget-object v5, p0, Lcom/gionee/gsp/service/account/AccountImpl$3;->val$gnCommonListener:Lcom/gionee/gsp/service/account/sdk/listener/IGetPlayerIdListener;

    invoke-interface {v5, v3}, Lcom/gionee/gsp/service/account/sdk/listener/IGetPlayerIdListener;->onComplete(Ljava/lang/String;)V

    .line 389
    return-void

    .line 370
    :catch_33
    move-exception v4

    .line 371
    .local v4, "re":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 372
    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    .line 373
    iget-object v5, p0, Lcom/gionee/gsp/service/account/AccountImpl$3;->this$0:Lcom/gionee/gsp/service/account/AccountImpl;

    iget-object v6, p0, Lcom/gionee/gsp/service/account/AccountImpl$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/gionee/gsp/service/account/AccountImpl;->unBindAccount(Landroid/content/Context;)V
    invoke-static {v5, v6}, Lcom/gionee/gsp/service/account/AccountImpl;->access$2(Lcom/gionee/gsp/service/account/AccountImpl;Landroid/content/Context;)V

    .line 375
    :try_start_45
    iget-object v5, p0, Lcom/gionee/gsp/service/account/AccountImpl$3;->this$0:Lcom/gionee/gsp/service/account/AccountImpl;

    iget-object v6, p0, Lcom/gionee/gsp/service/account/AccountImpl$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/gionee/gsp/service/account/AccountImpl;->checkIsBind(Landroid/content/Context;)V
    invoke-static {v5, v6}, Lcom/gionee/gsp/service/account/AccountImpl;->access$1(Lcom/gionee/gsp/service/account/AccountImpl;Landroid/content/Context;)V

    .line 376
    sget-object v5, Lcom/gionee/gsp/service/account/AccountImpl;->sGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

    sget-object v6, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/gionee/account/aidl/GSPAccountInterface;->getBIInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 377
    .restart local v0    # "biInfo":Ljava/util/Map;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    const-string v5, "playerId"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 378
    const-string v5, "playerId"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_6f} :catch_71

    move-result-object v3

    goto :goto_2d

    .line 380
    .end local v0    # "biInfo":Ljava/util/Map;
    :catch_71
    move-exception v2

    .line 381
    .local v2, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    goto :goto_2d

    .line 383
    .end local v2    # "e1":Ljava/lang/Exception;
    .end local v4    # "re":Landroid/os/RemoteException;
    :catch_7a
    move-exception v1

    .line 384
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 385
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    goto :goto_2d
.end method
