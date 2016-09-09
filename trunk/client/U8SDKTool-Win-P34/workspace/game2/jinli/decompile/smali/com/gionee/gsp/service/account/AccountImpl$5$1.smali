.class Lcom/gionee/gsp/service/account/AccountImpl$5$1;
.super Ljava/lang/Object;
.source "AccountImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/account/AccountImpl$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gionee/gsp/service/account/AccountImpl$5;

.field private final synthetic val$gnCommonListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;

.field private final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/account/AccountImpl$5;Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/account/AccountImpl$5$1;->this$1:Lcom/gionee/gsp/service/account/AccountImpl$5;

    iput-object p2, p0, Lcom/gionee/gsp/service/account/AccountImpl$5$1;->val$gnCommonListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;

    iput-object p3, p0, Lcom/gionee/gsp/service/account/AccountImpl$5$1;->val$result:Ljava/lang/String;

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 616
    iget-object v0, p0, Lcom/gionee/gsp/service/account/AccountImpl$5$1;->val$gnCommonListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;

    iget-object v1, p0, Lcom/gionee/gsp/service/account/AccountImpl$5$1;->val$result:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;->onComplete(Ljava/lang/Object;)V

    .line 617
    return-void
.end method
