.class public Lcom/baidu/mtjstatsdk/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;


# direct methods
.method public constructor <init>(Lcom/baidu/mtjstatsdk/game/BDGameLogSender;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 51
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/cg;->c:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/cg;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/cg;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/cg;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move v0, v1

    .line 60
    :goto_14
    if-eqz v2, :cond_4a

    array-length v3, v2

    if-ge v0, v3, :cond_4a

    .line 61
    aget-object v3, v2, v0

    .line 62
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "senddata_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/mtjstatsdk/cg;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 63
    iget-object v4, p0, Lcom/baidu/mtjstatsdk/cg;->c:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    iget-object v5, p0, Lcom/baidu/mtjstatsdk/cg;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/mtjstatsdk/cg;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v6, v3, v1}, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 67
    :cond_4a
    return-void
.end method
