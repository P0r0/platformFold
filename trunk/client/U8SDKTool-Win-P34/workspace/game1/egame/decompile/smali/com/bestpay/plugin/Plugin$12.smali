.class Lcom/bestpay/plugin/Plugin$12;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/plugin/Plugin;->checkUpdterApk(Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bestpay/plugin/Plugin;

.field private final synthetic val$callback:Lcom/bestpay/plugin/CallBack;

.field private final synthetic val$cau:Lcom/bestpay/plugin/CheckApkUpdater;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bestpay/plugin/Plugin;Lcom/bestpay/plugin/CheckApkUpdater;Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/plugin/Plugin$12;->this$0:Lcom/bestpay/plugin/Plugin;

    iput-object p2, p0, Lcom/bestpay/plugin/Plugin$12;->val$cau:Lcom/bestpay/plugin/CheckApkUpdater;

    iput-object p3, p0, Lcom/bestpay/plugin/Plugin$12;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/bestpay/plugin/Plugin$12;->val$callback:Lcom/bestpay/plugin/CallBack;

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/bestpay/plugin/Plugin$12;)Lcom/bestpay/plugin/Plugin;
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/bestpay/plugin/Plugin$12;->this$0:Lcom/bestpay/plugin/Plugin;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 656
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 657
    iget-object v0, p0, Lcom/bestpay/plugin/Plugin$12;->val$cau:Lcom/bestpay/plugin/CheckApkUpdater;

    iget-object v1, p0, Lcom/bestpay/plugin/Plugin$12;->val$context:Landroid/content/Context;

    new-instance v2, Lcom/bestpay/plugin/Plugin$12$1;

    iget-object v3, p0, Lcom/bestpay/plugin/Plugin$12;->val$cau:Lcom/bestpay/plugin/CheckApkUpdater;

    invoke-direct {v2, p0, v3}, Lcom/bestpay/plugin/Plugin$12$1;-><init>(Lcom/bestpay/plugin/Plugin$12;Lcom/bestpay/plugin/CheckApkUpdater;)V

    invoke-virtual {v0, v1, v2}, Lcom/bestpay/plugin/CheckApkUpdater;->apkUpdater(Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)Z

    move-result v0

    sput-boolean v0, Lcom/bestpay/plugin/Plugin;->isUpdate:Z

    .line 675
    sget-boolean v0, Lcom/bestpay/plugin/Plugin;->isUpdate:Z

    if-nez v0, :cond_33

    .line 676
    const-string v0, "geek2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bool2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/bestpay/plugin/Plugin;->isUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bestpay/util/LoggerHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/bestpay/plugin/Plugin$12;->val$callback:Lcom/bestpay/plugin/CallBack;

    invoke-interface {v0}, Lcom/bestpay/plugin/CallBack;->execute()Z

    .line 679
    :cond_33
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 681
    return-void
.end method
