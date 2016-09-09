.class Lcom/baidu/mtjstatsdk/al;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/al;->a:Landroid/content/Context;

    .line 232
    iput-object p2, p0, Lcom/baidu/mtjstatsdk/al;->b:Ljava/io/File;

    .line 233
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 238
    :try_start_0
    sget-boolean v0, Lcom/baidu/mtjstatsdk/k;->b:Z

    if-eqz v0, :cond_3a

    const/4 v0, 0x3

    .line 239
    :goto_5
    const-string v1, "BPlus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start version check in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/al;->sleep(J)V

    .line 241
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/al;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/al;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/ak;->a(Landroid/content/Context;Ljava/io/File;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_3d

    .line 246
    :goto_30
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/al;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/ak;->b(Landroid/content/Context;)V

    .line 247
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/ak;->a(Z)Z

    .line 248
    return-void

    .line 238
    :cond_3a
    const/16 v0, 0xa

    goto :goto_5

    .line 242
    :catch_3d
    move-exception v0

    .line 243
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_30
.end method
