.class Lcom/baidu/mtjstatsdk/as;
.super Lcom/baidu/mtjstatsdk/ae;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 19
    const-string v0, "app_change"

    const-string v1, "Create table if not exists app_change(_id Integer primary key AUTOINCREMENT,time VARCHAR(50),content TEXT);"

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/mtjstatsdk/ae;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method private a(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mtjstatsdk/ac;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    if-nez p1, :cond_8

    .line 109
    :cond_7
    return-object v0

    .line 92
    :cond_8
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_7

    .line 96
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 97
    const-string v2, "time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 98
    const-string v3, "content"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 100
    :goto_20
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 101
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 102
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 103
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 105
    new-instance v8, Lcom/baidu/mtjstatsdk/ac;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/baidu/mtjstatsdk/ac;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)J
    .registers 5

    .prologue
    .line 63
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 64
    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "content"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/baidu/mtjstatsdk/as;->a(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 68
    return-wide v0
.end method

.method public a(II)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mtjstatsdk/ac;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    const-string v0, "time"

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/mtjstatsdk/as;->a(Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object v0

    .line 36
    invoke-direct {p0, v0}, Lcom/baidu/mtjstatsdk/as;->a(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v1

    .line 37
    if-eqz v0, :cond_f

    .line 38
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_f
    return-object v1
.end method

.method public a(J)Z
    .registers 4

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/baidu/mtjstatsdk/as;->b(J)Z

    move-result v0

    return v0
.end method
