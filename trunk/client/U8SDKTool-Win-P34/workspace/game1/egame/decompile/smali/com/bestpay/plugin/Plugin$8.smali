.class Lcom/bestpay/plugin/Plugin$8;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/plugin/Plugin;->userClientRecharge(Landroid/content/Context;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/bestpay/plugin/Plugin$8;->val$phoneNum:Ljava/lang/String;

    iput-object p2, p0, Lcom/bestpay/plugin/Plugin$8;->val$context:Landroid/content/Context;

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 540
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 541
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "RECHARGEPARAMS"

    iget-object v3, p0, Lcom/bestpay/plugin/Plugin$8;->val$phoneNum:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 543
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 544
    new-instance v2, Landroid/content/ComponentName;

    .line 545
    const-string v3, "com.chinatelecom.bestpayplugin"

    .line 546
    const-string v4, "com.chinatelecom.bestpayplugin.RechargeLoginActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 548
    :try_start_20
    iget-object v2, p0, Lcom/bestpay/plugin/Plugin$8;->val$context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    .line 549
    const/16 v3, 0x3ea

    .line 548
    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2a

    .line 552
    :goto_29
    return-void

    .line 550
    :catch_2a
    move-exception v2

    goto :goto_29
.end method
