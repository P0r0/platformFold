.class public Lcom/youju/statistics/b/d;
.super Lcom/youju/statistics/b/n;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:[Lcom/youju/statistics/c/a/n;

.field private c:[B

.field private d:[B

.field private e:Lcom/youju/statistics/c/a/k;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/youju/statistics/c/g;

.field private i:Landroid/content/Context;

.field private j:Lcom/youju/statistics/c/c/d;

.field private k:Lcom/youju/statistics/c/d/b;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youju/statistics/c/d/b;[Lcom/youju/statistics/c/a/n;)V
    .registers 6

    invoke-direct {p0}, Lcom/youju/statistics/b/n;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/youju/statistics/b/d;->a:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/b/d;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youju/statistics/b/d;->g:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/youju/statistics/b/d;->l:I

    iput-object p1, p0, Lcom/youju/statistics/b/d;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/youju/statistics/c/g;->a(Landroid/content/Context;)Lcom/youju/statistics/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/b/d;->h:Lcom/youju/statistics/c/g;

    iget-object v0, p0, Lcom/youju/statistics/b/d;->h:Lcom/youju/statistics/c/g;

    invoke-virtual {v0}, Lcom/youju/statistics/c/g;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/b/d;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/youju/statistics/c/c/c;->a(Landroid/content/Context;)Lcom/youju/statistics/c/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/c/c;->c()Lcom/youju/statistics/c/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/b/d;->j:Lcom/youju/statistics/c/c/d;

    iput-object p3, p0, Lcom/youju/statistics/b/d;->b:[Lcom/youju/statistics/c/a/n;

    iput-object p2, p0, Lcom/youju/statistics/b/d;->k:Lcom/youju/statistics/c/d/b;

    invoke-direct {p0}, Lcom/youju/statistics/b/d;->c()V

    return-void
.end method

.method private a(I)I
    .registers 6

    iget-object v0, p0, Lcom/youju/statistics/b/d;->d:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/youju/statistics/b/d;->d:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/youju/statistics/b/d;->c:[B

    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p1

    return v0
.end method

.method private a(Lcom/youju/statistics/c/a/k;I)I
    .registers 7

    const-string v0, "UploadDataMaker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appendEventDataPackages"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--- total package size ( N ) =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/youju/statistics/c/a/k;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/youju/statistics/c/a/k;->a()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/youju/statistics/b/d;->c:[B

    invoke-static {v0, v2, v3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, p2, v1

    return v0
.end method

.method private a(Lcom/youju/statistics/c/a/k;)V
    .registers 6

    invoke-direct {p0}, Lcom/youju/statistics/b/d;->d()I

    move-result v0

    iput v0, p0, Lcom/youju/statistics/b/d;->l:I

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/youju/statistics/b/d;->c:[B

    const-string v1, "UploadDataMaker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appendAllData"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "totalLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youju/statistics/b/d;->b(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/youju/statistics/b/d;->a(Lcom/youju/statistics/c/a/k;I)I

    iget-object v0, p0, Lcom/youju/statistics/b/d;->c:[B

    invoke-static {v0}, Lcom/youju/statistics/a/i;->b([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/b/d;->c:[B

    iget-object v0, p0, Lcom/youju/statistics/b/d;->c:[B

    invoke-static {v0}, Lcom/youju/statistics/a/b;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/b/d;->c:[B

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/b/d;->h:Lcom/youju/statistics/c/g;

    invoke-virtual {v0}, Lcom/youju/statistics/c/g;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/youju/statistics/a/n;->b(J)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private a([B)Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/youju/statistics/b/d;->i:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/youju/statistics/b/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_9
    return v0

    :cond_a
    invoke-static {p1}, Lcom/youju/statistics/a/k;->a([B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youju/statistics/b/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v0, 0x0

    goto :goto_9

    :cond_18
    iput-object v1, p0, Lcom/youju/statistics/b/d;->f:Ljava/lang/String;

    goto :goto_9
.end method

.method private b(I)I
    .registers 3

    iget-boolean v0, p0, Lcom/youju/statistics/b/d;->g:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/youju/statistics/b/d;->a(I)I

    move-result p1

    :cond_8
    return p1
.end method

.method private b(Lcom/youju/statistics/c/a/k;I)V
    .registers 8

    const-string v0, "UploadDataMaker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataFromAllTables"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "maxSizeCanUpload = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p2, :cond_25

    :cond_24
    return-void

    :cond_25
    iget-object v1, p0, Lcom/youju/statistics/b/d;->b:[Lcom/youju/statistics/c/a/n;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_29
    if-ge v0, v2, :cond_24

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/youju/statistics/b/d;->a:Ljava/util/HashMap;

    invoke-interface {v3, p1, p2, v4}, Lcom/youju/statistics/c/a/c;->a(Lcom/youju/statistics/c/a/k;ILjava/util/HashMap;)I

    move-result v3

    sub-int/2addr p2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_29
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/b/d;->a:Ljava/util/HashMap;

    const-string v1, "activity"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/youju/statistics/b/d;->a:Ljava/util/HashMap;

    const-string v1, "session"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/youju/statistics/b/d;->a:Ljava/util/HashMap;

    const-string v1, "app_event"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/youju/statistics/b/d;->a:Ljava/util/HashMap;

    const-string v1, "error_report"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private d()I
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/youju/statistics/b/d;->e()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/youju/statistics/b/d;->e:Lcom/youju/statistics/c/a/k;

    invoke-interface {v1}, Lcom/youju/statistics/c/a/k;->a()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private e()I
    .registers 2

    iget-boolean v0, p0, Lcom/youju/statistics/b/d;->g:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/youju/statistics/b/d;->d:[B

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private f()I
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/b/d;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/a/j;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/youju/statistics/b/d;->j:Lcom/youju/statistics/c/c/d;

    invoke-virtual {v0}, Lcom/youju/statistics/c/c/d;->d()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/youju/statistics/b/d;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/a/j;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/youju/statistics/b/d;->j:Lcom/youju/statistics/c/c/d;

    invoke-virtual {v0}, Lcom/youju/statistics/c/c/d;->b()I

    move-result v0

    goto :goto_e

    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private g()I
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/b/d;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/a/j;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/youju/statistics/b/d;->h:Lcom/youju/statistics/c/g;

    invoke-virtual {v0}, Lcom/youju/statistics/c/g;->a()I

    move-result v0

    iget-object v1, p0, Lcom/youju/statistics/b/d;->j:Lcom/youju/statistics/c/c/d;

    invoke-virtual {v1}, Lcom/youju/statistics/c/c/d;->e()I

    move-result v1

    sub-int v0, v1, v0

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/youju/statistics/b/d;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/a/j;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/youju/statistics/b/d;->j:Lcom/youju/statistics/c/c/d;

    invoke-virtual {v0}, Lcom/youju/statistics/c/c/d;->c()I

    move-result v0

    goto :goto_16

    :cond_26
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private h()V
    .registers 5

    invoke-direct {p0}, Lcom/youju/statistics/b/d;->g()I

    move-result v0

    invoke-direct {p0}, Lcom/youju/statistics/b/d;->e()I

    move-result v1

    sub-int/2addr v0, v1

    const-string v1, "UploadDataMaker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareEventData"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxSizeCanUpload = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/youju/statistics/b/d;->i:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/youju/statistics/b/d;->g:Z

    invoke-static {v1, v0, v2}, Lcom/youju/statistics/c/a/b;->a(Landroid/content/Context;IZ)Lcom/youju/statistics/c/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/youju/statistics/b/d;->e:Lcom/youju/statistics/c/a/k;

    iget-object v1, p0, Lcom/youju/statistics/b/d;->e:Lcom/youju/statistics/c/a/k;

    invoke-interface {v1}, Lcom/youju/statistics/c/a/k;->d()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/youju/statistics/b/d;->e:Lcom/youju/statistics/c/a/k;

    invoke-direct {p0, v1, v0}, Lcom/youju/statistics/b/d;->b(Lcom/youju/statistics/c/a/k;I)V

    return-void
.end method

.method private i()Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/youju/statistics/b/d;->e:Lcom/youju/statistics/c/a/k;

    invoke-interface {v1}, Lcom/youju/statistics/c/a/k;->c()I

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "UploadDataMaker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSuitableData"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event count is 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_27
    return v0

    :cond_28
    iget-object v1, p0, Lcom/youju/statistics/b/d;->i:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/youju/statistics/b/d;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p0}, Lcom/youju/statistics/b/d;->d()I

    move-result v2

    invoke-direct {p0}, Lcom/youju/statistics/b/d;->f()I

    move-result v3

    if-ge v2, v3, :cond_67

    if-nez v1, :cond_67

    const-string v1, "UploadDataMaker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSuitableData"

    invoke-static {v5}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " totalLength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " minSizeCanUpload = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :cond_67
    const/4 v0, 0x1

    goto :goto_27
.end method

.method private j()V
    .registers 6

    iget-object v0, p0, Lcom/youju/statistics/b/d;->k:Lcom/youju/statistics/c/d/b;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/youju/statistics/b/d;->g:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/youju/statistics/b/d;->k:Lcom/youju/statistics/c/d/b;

    iget-object v1, p0, Lcom/youju/statistics/b/d;->c:[B

    iget v2, p0, Lcom/youju/statistics/b/d;->l:I

    iget-object v3, p0, Lcom/youju/statistics/b/d;->a:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/youju/statistics/b/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/youju/statistics/c/d/b;->a([BILjava/util/HashMap;Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/youju/statistics/b/d;->k:Lcom/youju/statistics/c/d/b;

    iget-object v1, p0, Lcom/youju/statistics/b/d;->c:[B

    iget v2, p0, Lcom/youju/statistics/b/d;->l:I

    iget-object v3, p0, Lcom/youju/statistics/b/d;->a:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/youju/statistics/c/d/b;->a([BILjava/util/HashMap;Ljava/lang/String;)V

    goto :goto_15
.end method

.method private k()V
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/b/d;->k:Lcom/youju/statistics/c/d/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/youju/statistics/b/d;->k:Lcom/youju/statistics/c/d/b;

    invoke-virtual {v0}, Lcom/youju/statistics/c/d/b;->a()V

    :cond_9
    return-void
.end method

.method private l()I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/youju/statistics/b/d;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/youju/statistics/c/e/c;->b(Landroid/content/Context;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/youju/statistics/b/d;->d:[B

    iget-object v1, p0, Lcom/youju/statistics/b/d;->d:[B

    invoke-direct {p0, v1}, Lcom/youju/statistics/b/d;->a([B)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youju/statistics/b/d;->g:Z

    const-string v0, "UploadDataMaker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preparePublicInfo"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " public info changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/youju/statistics/c/e/b;

    iget-object v3, p0, Lcom/youju/statistics/b/d;->i:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/youju/statistics/c/e/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youju/statistics/b/d;->d:[B

    array-length v0, v0

    :goto_40
    return v0

    :cond_41
    iput-boolean v0, p0, Lcom/youju/statistics/b/d;->g:Z

    goto :goto_40
.end method

.method private m()V
    .registers 2

    invoke-static {}, Lcom/youju/statistics/a/n;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/n;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/youju/statistics/b/d;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->e(Landroid/content/Context;)V

    :cond_f
    return-void
.end method

.method private n()V
    .registers 2

    invoke-static {}, Lcom/youju/statistics/a/n;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/n;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/youju/statistics/b/d;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->d(Landroid/content/Context;)V

    :cond_f
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lcom/youju/statistics/b/d;->n()V

    invoke-direct {p0}, Lcom/youju/statistics/b/d;->m()V

    invoke-direct {p0}, Lcom/youju/statistics/b/d;->l()I

    invoke-direct {p0}, Lcom/youju/statistics/b/d;->h()V

    invoke-direct {p0}, Lcom/youju/statistics/b/d;->i()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/youju/statistics/b/d;->e:Lcom/youju/statistics/c/a/k;

    invoke-direct {p0, v0}, Lcom/youju/statistics/b/d;->a(Lcom/youju/statistics/c/a/k;)V

    invoke-direct {p0}, Lcom/youju/statistics/b/d;->j()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1f
    invoke-direct {p0}, Lcom/youju/statistics/b/d;->k()V

    goto :goto_1a
.end method

.method protected b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youju/statistics/b/d;->i:Landroid/content/Context;

    iput-object v0, p0, Lcom/youju/statistics/b/d;->j:Lcom/youju/statistics/c/c/d;

    iput-object v0, p0, Lcom/youju/statistics/b/d;->c:[B

    iput-object v0, p0, Lcom/youju/statistics/b/d;->k:Lcom/youju/statistics/c/d/b;

    iput-object v0, p0, Lcom/youju/statistics/b/d;->h:Lcom/youju/statistics/c/g;

    return-void
.end method
