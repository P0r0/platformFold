.class Lcom/gionee/gsp/service/account/AccountImpl$4$1;
.super Ljava/lang/Object;
.source "AccountImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/account/AccountImpl$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gionee/gsp/service/account/AccountImpl$4;

.field private final synthetic val$gnCommonListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;

.field private final synthetic val$goldCoin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/account/AccountImpl$4;Ljava/lang/String;Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/account/AccountImpl$4$1;->this$1:Lcom/gionee/gsp/service/account/AccountImpl$4;

    iput-object p2, p0, Lcom/gionee/gsp/service/account/AccountImpl$4$1;->val$goldCoin:Ljava/lang/String;

    iput-object p3, p0, Lcom/gionee/gsp/service/account/AccountImpl$4$1;->val$gnCommonListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 572
    iget-object v0, p0, Lcom/gionee/gsp/service/account/AccountImpl$4$1;->val$goldCoin:Ljava/lang/String;

    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 573
    iget-object v0, p0, Lcom/gionee/gsp/service/account/AccountImpl$4$1;->val$gnCommonListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "get gold coin error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;->onError(Ljava/lang/Exception;)V

    .line 577
    :goto_14
    return-void

    .line 575
    :cond_15
    iget-object v0, p0, Lcom/gionee/gsp/service/account/AccountImpl$4$1;->val$gnCommonListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;

    iget-object v1, p0, Lcom/gionee/gsp/service/account/AccountImpl$4$1;->val$goldCoin:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;->onComplete(Ljava/lang/Object;)V

    goto :goto_14
.end method
