.class public Lcom/baidu/mtjstatsdk/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mtjstatsdk/g;


# direct methods
.method public constructor <init>(Lcom/baidu/mtjstatsdk/g;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/i;->a:Lcom/baidu/mtjstatsdk/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .registers 11

    .prologue
    const-wide/16 v6, 0x0

    .line 131
    const/4 v0, 0x0

    .line 133
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 134
    cmp-long v1, v2, v6

    if-lez v1, :cond_12

    .line 135
    const/4 v0, 0x1

    .line 140
    :cond_11
    :goto_11
    return v0

    .line 136
    :cond_12
    cmp-long v1, v2, v6

    if-gez v1, :cond_11

    .line 137
    const/4 v0, -0x1

    goto :goto_11
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 127
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mtjstatsdk/i;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
