.class public Lcom/bestpay/app/PaymentTask;
.super Ljava/lang/Object;
.source "PaymentTask.java"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "ac"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bestpay/app/PaymentTask;->mActivity:Landroid/app/Activity;

    .line 23
    return-void
.end method


# virtual methods
.method public pay(Ljava/lang/String;)V
    .registers 9
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&sdkVersion=%s&platform=%s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 27
    const-string v6, "3.0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "android_3.0"

    aput-object v6, v4, v5

    .line 26
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "paramsStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/bestpay/app/PaymentTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.chinatelecom.bestpayplugin"

    .line 29
    invoke-static {v3, v4}, Lcom/bestpay/util/PackageUtils;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 32
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_4d

    .line 33
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/bestpay/app/PaymentTask;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/bestpay/app/H5PayActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 35
    const-string v3, "arg_order_info"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    iget-object v3, p0, Lcom/bestpay/app/PaymentTask;->mActivity:Landroid/app/Activity;

    .line 37
    const/16 v4, 0x3e8

    .line 36
    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 44
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_4c
    return-void

    .line 41
    :cond_4d
    iget-object v3, p0, Lcom/bestpay/app/PaymentTask;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/bestpay/plugin/Plugin;->pay(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4c
.end method
