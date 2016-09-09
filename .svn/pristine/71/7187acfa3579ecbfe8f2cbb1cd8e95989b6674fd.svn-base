.class Lcom/baidu/mtjstatsdk/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 66
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/bd;->b:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/bd;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bd;->b:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bd;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Landroid/content/Context;)Z

    move-result v0

    .line 72
    if-eqz v0, :cond_b

    .line 80
    :goto_a
    return-void

    .line 76
    :cond_b
    invoke-static {}, Lcom/baidu/mtjstatsdk/BPlusType;->type()Lcom/baidu/mtjstatsdk/BPlusType;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bd;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/BPlusType;->startBPlusAnalyze(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_a

    .line 77
    :catch_15
    move-exception v0

    goto :goto_a
.end method
