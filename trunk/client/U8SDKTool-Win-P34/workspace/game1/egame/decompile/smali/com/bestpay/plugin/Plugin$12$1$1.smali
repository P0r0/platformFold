.class Lcom/bestpay/plugin/Plugin$12$1$1;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Lcom/bestpay/plugin/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/plugin/Plugin$12$1;->execute()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bestpay/plugin/Plugin$12$1;

.field private final synthetic val$cau:Lcom/bestpay/plugin/CheckApkUpdater;


# direct methods
.method constructor <init>(Lcom/bestpay/plugin/Plugin$12$1;Lcom/bestpay/plugin/CheckApkUpdater;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/plugin/Plugin$12$1$1;->this$2:Lcom/bestpay/plugin/Plugin$12$1;

    iput-object p2, p0, Lcom/bestpay/plugin/Plugin$12$1$1;->val$cau:Lcom/bestpay/plugin/CheckApkUpdater;

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Z
    .registers 4

    .prologue
    .line 663
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bestpay/plugin/Plugin$12$1$1$1;

    iget-object v2, p0, Lcom/bestpay/plugin/Plugin$12$1$1;->val$cau:Lcom/bestpay/plugin/CheckApkUpdater;

    invoke-direct {v1, p0, v2}, Lcom/bestpay/plugin/Plugin$12$1$1$1;-><init>(Lcom/bestpay/plugin/Plugin$12$1$1;Lcom/bestpay/plugin/CheckApkUpdater;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 668
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 669
    const/4 v0, 0x0

    return v0
.end method
