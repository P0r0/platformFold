.class final enum Lcom/baidu/mtjstatsdk/av;
.super Lcom/baidu/mtjstatsdk/BPlusType;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/mtjstatsdk/BPlusType;-><init>(Ljava/lang/String;IILcom/baidu/mtjstatsdk/av;)V

    return-void
.end method


# virtual methods
.method public startBPlusAnalyze(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 16
    :try_start_0
    const-string v0, "com.baidu.bplus.service.BPlusService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 17
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    invoke-static {}, Lcom/baidu/mtjstatsdk/aj;->a()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/baidu/mtjstatsdk/aj;->b()Ljava/lang/String;

    move-result-object v2

    .line 21
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 22
    const-string v0, "MS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_20

    .line 28
    :goto_1f
    return-void

    .line 25
    :catch_20
    move-exception v0

    goto :goto_1f
.end method
