.class public Lcom/baidu/mtjstatsdk/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;


# direct methods
.method public constructor <init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 68
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/bq;->c:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/bq;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/bq;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 72
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->instance()Lcom/baidu/mtjstatsdk/game/BDGStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bq;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getAccountIDWithAppKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 74
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bq;->c:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bq;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/bq;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->setAccountId(Ljava/lang/String;)V

    .line 76
    :cond_1f
    return-void
.end method
