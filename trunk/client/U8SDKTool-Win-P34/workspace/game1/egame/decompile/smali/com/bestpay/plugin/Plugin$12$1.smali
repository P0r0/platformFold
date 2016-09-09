.class Lcom/bestpay/plugin/Plugin$12$1;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Lcom/bestpay/plugin/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/plugin/Plugin$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bestpay/plugin/Plugin$12;

.field private final synthetic val$cau:Lcom/bestpay/plugin/CheckApkUpdater;


# direct methods
.method constructor <init>(Lcom/bestpay/plugin/Plugin$12;Lcom/bestpay/plugin/CheckApkUpdater;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/plugin/Plugin$12$1;->this$1:Lcom/bestpay/plugin/Plugin$12;

    iput-object p2, p0, Lcom/bestpay/plugin/Plugin$12$1;->val$cau:Lcom/bestpay/plugin/CheckApkUpdater;

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Z
    .registers 4

    .prologue
    .line 660
    iget-object v0, p0, Lcom/bestpay/plugin/Plugin$12$1;->this$1:Lcom/bestpay/plugin/Plugin$12;

    # getter for: Lcom/bestpay/plugin/Plugin$12;->this$0:Lcom/bestpay/plugin/Plugin;
    invoke-static {v0}, Lcom/bestpay/plugin/Plugin$12;->access$0(Lcom/bestpay/plugin/Plugin$12;)Lcom/bestpay/plugin/Plugin;

    move-result-object v0

    new-instance v1, Lcom/bestpay/plugin/Plugin$12$1$1;

    iget-object v2, p0, Lcom/bestpay/plugin/Plugin$12$1;->val$cau:Lcom/bestpay/plugin/CheckApkUpdater;

    invoke-direct {v1, p0, v2}, Lcom/bestpay/plugin/Plugin$12$1$1;-><init>(Lcom/bestpay/plugin/Plugin$12$1;Lcom/bestpay/plugin/CheckApkUpdater;)V

    invoke-virtual {v0, v1}, Lcom/bestpay/plugin/Plugin;->alertUpdateDialog(Lcom/bestpay/plugin/CallBack;)V

    .line 672
    const/4 v0, 0x0

    return v0
.end method
