.class Lcom/bestpay/plugin/Plugin$12$1$1$1;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/plugin/Plugin$12$1$1;->execute()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/bestpay/plugin/Plugin$12$1$1;

.field private final synthetic val$cau:Lcom/bestpay/plugin/CheckApkUpdater;


# direct methods
.method constructor <init>(Lcom/bestpay/plugin/Plugin$12$1$1;Lcom/bestpay/plugin/CheckApkUpdater;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/plugin/Plugin$12$1$1$1;->this$3:Lcom/bestpay/plugin/Plugin$12$1$1;

    iput-object p2, p0, Lcom/bestpay/plugin/Plugin$12$1$1$1;->val$cau:Lcom/bestpay/plugin/CheckApkUpdater;

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/bestpay/plugin/Plugin$12$1$1$1;->val$cau:Lcom/bestpay/plugin/CheckApkUpdater;

    invoke-virtual {v0}, Lcom/bestpay/plugin/CheckApkUpdater;->downloadApk()V

    .line 667
    return-void
.end method
