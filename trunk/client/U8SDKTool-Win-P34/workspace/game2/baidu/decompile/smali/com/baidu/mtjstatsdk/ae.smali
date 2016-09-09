.class abstract Lcom/baidu/mtjstatsdk/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/mtjstatsdk/aq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/baidu/mtjstatsdk/ap;

    invoke-direct {v0, p1}, Lcom/baidu/mtjstatsdk/ap;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v1, Lcom/baidu/mtjstatsdk/aq;

    invoke-direct {v1, v0, p2}, Lcom/baidu/mtjstatsdk/aq;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/ae;->a:Lcom/baidu/mtjstatsdk/aq;

    .line 22
    const-string v1, ".confd"

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/ap;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_1a

    .line 24
    invoke-direct {p0, p3}, Lcom/baidu/mtjstatsdk/ae;->a(Ljava/lang/String;)V

    .line 26
    :cond_1a
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ae;->a:Lcom/baidu/mtjstatsdk/aq;

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/aq;->a(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/ContentValues;)J
    .registers 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ae;->a:Lcom/baidu/mtjstatsdk/aq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mtjstatsdk/aq;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 82
    return-wide v0
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method protected a(Ljava/lang/String;II)Landroid/database/Cursor;
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ae;->a:Lcom/baidu/mtjstatsdk/aq;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mtjstatsdk/aq;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    .line 70
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ae;->a:Lcom/baidu/mtjstatsdk/aq;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " desc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mtjstatsdk/aq;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 71
    return-object v0
.end method

.method public abstract a(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mtjstatsdk/ac;",
            ">;"
        }
    .end annotation
.end method

.method public declared-synchronized a()Z
    .registers 2

    .prologue
    .line 33
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ae;->a:Lcom/baidu/mtjstatsdk/aq;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/aq;->a()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract a(J)Z
.end method

.method public declared-synchronized b()V
    .registers 2

    .prologue
    .line 37
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ae;->a:Lcom/baidu/mtjstatsdk/aq;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/aq;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 38
    monitor-exit p0

    return-void

    .line 37
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b(J)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 105
    .line 108
    const-string v2, "_id=? "

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    new-array v4, v1, [Ljava/lang/String;

    aput-object v3, v4, v0

    .line 112
    iget-object v3, p0, Lcom/baidu/mtjstatsdk/ae;->a:Lcom/baidu/mtjstatsdk/aq;

    invoke-virtual {v3, v2, v4}, Lcom/baidu/mtjstatsdk/aq;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 113
    if-nez v2, :cond_24

    .line 117
    :goto_23
    return v0

    :cond_24
    move v0, v1

    goto :goto_23
.end method

.method protected c()I
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ae;->a:Lcom/baidu/mtjstatsdk/aq;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/aq;->b()I

    move-result v0

    return v0
.end method
