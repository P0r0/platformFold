.class final Lcom/baidu/mtjstatsdk/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field c:Ljava/lang/String;

.field d:Lcom/baidu/mtjstatsdk/be;

.field final synthetic e:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 258
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/bf;->e:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-boolean v1, p0, Lcom/baidu/mtjstatsdk/bf;->a:Z

    .line 254
    iput-boolean v1, p0, Lcom/baidu/mtjstatsdk/bf;->b:Z

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/bf;->c:Ljava/lang/String;

    .line 259
    iput-object p3, p0, Lcom/baidu/mtjstatsdk/bf;->c:Ljava/lang/String;

    .line 260
    iput-boolean v1, p0, Lcom/baidu/mtjstatsdk/bf;->a:Z

    .line 261
    iput-boolean v1, p0, Lcom/baidu/mtjstatsdk/bf;->b:Z

    .line 262
    new-instance v0, Lcom/baidu/mtjstatsdk/be;

    invoke-direct {v0, p1, p2, p3}, Lcom/baidu/mtjstatsdk/be;-><init>(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/bf;->d:Lcom/baidu/mtjstatsdk/be;

    .line 263
    return-void
.end method
