.class public Lcom/youju/statistics/c/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/youju/statistics/c/a/k;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/io/ByteArrayOutputStream;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/youju/statistics/c/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private d:[B

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/youju/statistics/c/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/c/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/youju/statistics/c/a/b;->b:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youju/statistics/c/a/b;->c:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youju/statistics/c/a/b;->d:[B

    iput v1, p0, Lcom/youju/statistics/c/a/b;->e:I

    iput v1, p0, Lcom/youju/statistics/c/a/b;->f:I

    return-void
.end method

.method private a(Landroid/content/Context;Z)I
    .registers 4

    invoke-static {p1, p2}, Lcom/youju/statistics/c/e/c;->a(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;IZ)Lcom/youju/statistics/c/a/b;
    .registers 4

    new-instance v0, Lcom/youju/statistics/c/a/b;

    invoke-direct {v0}, Lcom/youju/statistics/c/a/b;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/youju/statistics/c/a/b;->b(Landroid/content/Context;IZ)V

    return-object v0
.end method

.method private a([B)V
    .registers 6

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/youju/statistics/c/a/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {v0, v3}, Lcom/youju/statistics/a/l;->a(II)[B

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/youju/statistics/c/a/b;->e:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public a(Lcom/youju/statistics/c/a/d;I)I
    .registers 8

    invoke-static {p1}, Lcom/youju/statistics/c/a/a;->a(Lcom/youju/statistics/c/a/d;)Lcom/youju/statistics/c/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/c/a/g;->a(Lcom/youju/statistics/c/a/a;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/youju/statistics/c/a/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryAppendOneRecord"

    invoke-static {v4}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " eventsSubPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/youju/statistics/c/a/b;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v0, p0, Lcom/youju/statistics/c/a/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youju/statistics/c/a/g;

    invoke-virtual {v0, p1, p2}, Lcom/youju/statistics/c/a/g;->a(Lcom/youju/statistics/c/a/d;I)I

    move-result v0

    :goto_3e
    return v0

    :cond_3f
    :try_start_3f
    invoke-static {v0, p2}, Lcom/youju/statistics/c/a/g;->a(Lcom/youju/statistics/c/a/a;I)Lcom/youju/statistics/c/a/g;

    move-result-object v0

    iget-object v2, p0, Lcom/youju/statistics/c/a/b;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/youju/statistics/c/a/g;->d()I

    move-result v1

    invoke-virtual {v0, p1, p2}, Lcom/youju/statistics/c/a/g;->a(Lcom/youju/statistics/c/a/d;I)I
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_4f} :catch_52

    move-result v0

    add-int/2addr v0, v1

    goto :goto_3e

    :catch_52
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_3e
.end method

.method public a()[B
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/a/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/youju/statistics/c/a/b;->d:[B

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/youju/statistics/c/a/b;->d:[B

    goto :goto_b

    :cond_13
    invoke-virtual {p0}, Lcom/youju/statistics/c/a/b;->b()V

    iget-object v0, p0, Lcom/youju/statistics/c/a/b;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youju/statistics/c/a/b;->a([B)V

    iput-object v0, p0, Lcom/youju/statistics/c/a/b;->d:[B

    iget-object v0, p0, Lcom/youju/statistics/c/a/b;->d:[B

    goto :goto_b
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/a/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youju/statistics/c/a/g;

    invoke-virtual {v0}, Lcom/youju/statistics/c/a/g;->a()[B

    move-result-object v0

    :try_start_20
    iget-object v2, p0, Lcom/youju/statistics/c/a/b;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_a

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :cond_2b
    return-void
.end method

.method public b(Landroid/content/Context;IZ)V
    .registers 6

    invoke-direct {p0, p1, p3}, Lcom/youju/statistics/c/a/b;->a(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/youju/statistics/c/a/b;->f:I

    iget v0, p0, Lcom/youju/statistics/c/a/b;->f:I

    if-ge p2, v0, :cond_12

    new-instance v0, Lcom/youju/statistics/d/h;

    const-string v1, "write header reached max size "

    invoke-direct {v0, v1}, Lcom/youju/statistics/d/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/youju/statistics/c/a/b;->b:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-static {p1, p3, v1}, Lcom/youju/statistics/c/e/c;->a(Landroid/content/Context;ZI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v0, p0, Lcom/youju/statistics/c/a/b;->f:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/youju/statistics/c/a/b;->e:I

    return-void
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/a/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/youju/statistics/c/a/b;->f:I

    return v0
.end method
