.class public Lcom/youju/statistics/c/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/youju/statistics/c/a/k;


# instance fields
.field private a:Lcom/youju/statistics/c/a/a;

.field private b:[B

.field private c:[B

.field private d:[B

.field private e:[B

.field private f:Ljava/io/ByteArrayOutputStream;

.field private g:I

.field private h:I

.field private i:[B

.field private j:I


# direct methods
.method private constructor <init>(Lcom/youju/statistics/c/a/a;)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/youju/statistics/c/a/g;->d:[B

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/youju/statistics/c/a/g;->f:Ljava/io/ByteArrayOutputStream;

    iput v3, p0, Lcom/youju/statistics/c/a/g;->g:I

    iput v3, p0, Lcom/youju/statistics/c/a/g;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youju/statistics/c/a/g;->i:[B

    iput v3, p0, Lcom/youju/statistics/c/a/g;->j:I

    iput-object p1, p0, Lcom/youju/statistics/c/a/g;->a:Lcom/youju/statistics/c/a/a;

    invoke-virtual {p1}, Lcom/youju/statistics/c/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/c/a/g;->b:[B

    invoke-virtual {p1}, Lcom/youju/statistics/c/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/c/a/g;->c:[B

    invoke-virtual {p1}, Lcom/youju/statistics/c/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/c/a/g;->d:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Lcom/youju/statistics/c/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/c/a/g;->e:[B

    return-void
.end method

.method protected static a(Lcom/youju/statistics/c/a/a;I)Lcom/youju/statistics/c/a/g;
    .registers 3

    new-instance v0, Lcom/youju/statistics/c/a/g;

    invoke-direct {v0, p0}, Lcom/youju/statistics/c/a/g;-><init>(Lcom/youju/statistics/c/a/a;)V

    invoke-direct {v0, p1}, Lcom/youju/statistics/c/a/g;->a(I)V

    return-object v0
.end method

.method public static a(Lcom/youju/statistics/c/a/a;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youju/statistics/c/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/youju/statistics/c/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/youju/statistics/c/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/youju/statistics/c/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .registers 4

    invoke-direct {p0}, Lcom/youju/statistics/c/a/g;->b()I

    move-result v0

    iput v0, p0, Lcom/youju/statistics/c/a/g;->j:I

    iget v0, p0, Lcom/youju/statistics/c/a/g;->j:I

    if-le v0, p1, :cond_12

    new-instance v0, Lcom/youju/statistics/d/h;

    const-string v1, "append event reached max size"

    invoke-direct {v0, v1}, Lcom/youju/statistics/d/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/youju/statistics/c/a/g;->f:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/youju/statistics/c/a/g;->c:[B

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lcom/youju/statistics/c/a/g;->f:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/youju/statistics/c/a/g;->c:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/youju/statistics/c/a/g;->f:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/youju/statistics/c/a/g;->b:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/youju/statistics/c/a/g;->f:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/youju/statistics/c/a/g;->d:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/youju/statistics/c/a/g;->f:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/youju/statistics/c/a/g;->e:[B

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lcom/youju/statistics/c/a/g;->f:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/youju/statistics/c/a/g;->e:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/youju/statistics/c/a/g;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iput v0, p0, Lcom/youju/statistics/c/a/g;->g:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/youju/statistics/a/l;->a(II)[B

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/c/a/g;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method private b()I
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/c/a/g;->c:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/youju/statistics/c/a/g;->b:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/youju/statistics/c/a/g;->e:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private e()V
    .registers 6

    const/4 v0, 0x2

    iget v1, p0, Lcom/youju/statistics/c/a/g;->h:I

    invoke-static {v1, v0}, Lcom/youju/statistics/a/l;->a(II)[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/youju/statistics/c/a/g;->i:[B

    iget v4, p0, Lcom/youju/statistics/c/a/g;->g:I

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public a(Lcom/youju/statistics/c/a/d;I)I
    .registers 6

    invoke-virtual {p1}, Lcom/youju/statistics/c/a/d;->g()[B

    move-result-object v1

    array-length v0, v1

    if-le v0, p2, :cond_f

    new-instance v0, Lcom/youju/statistics/d/h;

    const-string v1, "append event reached max size"

    invoke-direct {v0, v1}, Lcom/youju/statistics/d/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/youju/statistics/c/a/g;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v1, p0, Lcom/youju/statistics/c/a/g;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/youju/statistics/c/a/g;->h:I
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1a} :catch_1b

    :goto_1a
    return v0

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public a()[B
    .registers 2

    iget v0, p0, Lcom/youju/statistics/c/a/g;->h:I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/youju/statistics/c/a/g;->i:[B

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/youju/statistics/c/a/g;->i:[B

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lcom/youju/statistics/c/a/g;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/c/a/g;->i:[B

    invoke-direct {p0}, Lcom/youju/statistics/c/a/g;->e()V

    iget-object v0, p0, Lcom/youju/statistics/c/a/g;->i:[B

    goto :goto_7
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/youju/statistics/c/a/g;->h:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/youju/statistics/c/a/g;->j:I

    return v0
.end method
