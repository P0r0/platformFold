.class public Lcom/nearme/platform/opensdk/pay/download/util/MarketDownloadHelper;
.super Ljava/lang/Object;
.source "MarketDownloadHelper.java"


# static fields
.field public static final EXTRA_KEY_PRODUCTDETAIL_START_WITH_DOWNLOAD:Ljava/lang/String; = "extra.key.productdetail_start_with_download"

.field public static final LAUNCH_EXTAR_GO_BACK_TO_LAUNCHER_APP:Ljava/lang/String; = "go_back_to_launcher_app"

.field public static final PRODUCT_INTENT_FROM_OUT_DETAIL_SEARCH:I = 0x646


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jumpMarketItemDetail(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 38
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "oppomarket://details?packagename="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 39
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 40
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 42
    const-string v0, "out_intent_from"

    const/16 v2, 0x646

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    const/high16 v0, 0x10800000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    const-string v0, "extra.key.productdetail_start_with_download"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    const-string v0, "go_back_to_launcher_app"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 47
    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_4c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4c

    .line 49
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d

    .line 54
    :cond_4c
    :goto_4c
    return-void

    .line 52
    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c
.end method
