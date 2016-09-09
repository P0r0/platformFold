.class Lcom/bestpay/plugin/Plugin$11;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/plugin/Plugin;->alertUpdateDialog(Lcom/bestpay/plugin/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bestpay/plugin/Plugin;


# direct methods
.method constructor <init>(Lcom/bestpay/plugin/Plugin;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/plugin/Plugin$11;->this$0:Lcom/bestpay/plugin/Plugin;

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 622
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 623
    sget-object v3, Lcom/bestpay/plugin/Plugin;->runnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_25

    .line 624
    const/4 v1, 0x0

    .line 627
    .local v1, "result":I
    sget-object v3, Lcom/bestpay/plugin/Plugin;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 628
    const-string v4, "com.chinatelecom.bestpayplugin"

    .line 626
    invoke-static {v3, v4}, Lcom/bestpay/util/PackageUtils;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 629
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_25

    .line 631
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 632
    .local v2, "verName":Ljava/lang/String;
    const-string v3, "3.1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 638
    if-lez v1, :cond_25

    .line 639
    sget-object v3, Lcom/bestpay/plugin/Plugin;->runnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 644
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "result":I
    .end local v2    # "verName":Ljava/lang/String;
    :cond_25
    return-void
.end method
