.class final enum Lcom/baidu/mtjstatsdk/aw;
.super Lcom/baidu/mtjstatsdk/BPlusType;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/mtjstatsdk/BPlusType;-><init>(Ljava/lang/String;IILcom/baidu/mtjstatsdk/av;)V

    return-void
.end method


# virtual methods
.method public startBPlusAnalyze(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/aj;->a(Landroid/content/Context;)Lcom/baidu/bplus/IBPStretegyController;

    move-result-object v1

    .line 38
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/aj;->a(Z)V

    .line 39
    const-string v2, "M"

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/aj;->a(Ljava/lang/String;)V

    .line 41
    invoke-interface {v1, v0}, Lcom/baidu/bplus/IBPStretegyController;->startDataAnynalyze(Landroid/content/Context;)V

    .line 42
    return-void
.end method
