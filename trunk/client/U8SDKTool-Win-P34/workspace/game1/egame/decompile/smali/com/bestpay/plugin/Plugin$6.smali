.class Lcom/bestpay/plugin/Plugin$6;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/plugin/Plugin;->yzfClientRecharge(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$phoneNum:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/plugin/Plugin$6;->val$phoneNum:Ljava/lang/String;

    iput-object p2, p0, Lcom/bestpay/plugin/Plugin$6;->val$context:Landroid/content/Context;

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 486
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 487
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 489
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "RECHARGEPARAMS"

    iget-object v5, p0, Lcom/bestpay/plugin/Plugin$6;->val$phoneNum:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance v1, Landroid/content/ComponentName;

    .line 491
    const-string v4, "com.chinatelecom.bestpayplugin"

    .line 492
    const-string v5, "com.chinatelecom.bestpayplugin.RechargeMainActivity"

    .line 490
    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .local v1, "compontent":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 495
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 498
    :try_start_20
    iget-object v4, p0, Lcom/bestpay/plugin/Plugin$6;->val$context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    .line 499
    const/16 v5, 0x3e9

    .line 498
    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2a

    .line 504
    :goto_29
    return-void

    .line 500
    :catch_2a
    move-exception v2

    .line 501
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Plugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lunch error message:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method
