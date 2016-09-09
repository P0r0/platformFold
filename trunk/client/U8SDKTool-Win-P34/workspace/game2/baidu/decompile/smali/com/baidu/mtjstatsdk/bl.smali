.class Lcom/baidu/mtjstatsdk/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/mtjstatsdk/bk;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/bk;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 106
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/bl;->c:Lcom/baidu/mtjstatsdk/bk;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/bl;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/bl;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 112
    invoke-static {}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->instance()Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bl;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->checkLoadCacheFinished(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    return-void
.end method
