.class public final Lcom/chinaMobile/udata/charge/mini/b;
.super Ljava/lang/Object;


# static fields
.field private static final b:[C


# instance fields
.field private a:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/chinaMobile/udata/charge/mini/b;->b:[C

    return-void

    :array_a
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;[B)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_12

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    :goto_b
    return v0

    :cond_c
    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    array-length v0, p1

    goto :goto_b
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 8

    const/16 v4, 0x39

    new-array v1, v4, [B

    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/chinaMobile/udata/charge/mini/b;->a:Ljava/io/PrintStream;

    :goto_b
    invoke-static {p1, v1}, Lcom/chinaMobile/udata/charge/mini/b;->a(Ljava/io/InputStream;[B)I

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v2, :cond_25

    add-int/lit8 v3, v0, 0x3

    if-gt v3, v2, :cond_1f

    const/4 v3, 0x3

    invoke-static {p2, v1, v0, v3}, Lcom/chinaMobile/udata/charge/mini/b;->a(Ljava/io/OutputStream;[BII)V

    :goto_1c
    add-int/lit8 v0, v0, 0x3

    goto :goto_12

    :cond_1f
    sub-int v3, v2, v0

    invoke-static {p2, v1, v0, v3}, Lcom/chinaMobile/udata/charge/mini/b;->a(Ljava/io/OutputStream;[BII)V

    goto :goto_1c

    :cond_25
    if-lt v2, v4, :cond_2d

    iget-object v0, p0, Lcom/chinaMobile/udata/charge/mini/b;->a:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    goto :goto_b

    :cond_2d
    return-void
.end method

.method private static a(Ljava/io/OutputStream;[BII)V
    .registers 9

    const/16 v4, 0x3d

    const/4 v0, 0x1

    if-ne p3, v0, :cond_24

    aget-byte v0, p1, p2

    sget-object v1, Lcom/chinaMobile/udata/charge/mini/b;->b:[C

    ushr-int/lit8 v2, v0, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    sget-object v1, Lcom/chinaMobile/udata/charge/mini/b;->b:[C

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x30

    aget-char v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    :goto_23
    return-void

    :cond_24
    const/4 v0, 0x2

    if-ne p3, v0, :cond_57

    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    sget-object v2, Lcom/chinaMobile/udata/charge/mini/b;->b:[C

    ushr-int/lit8 v3, v0, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/chinaMobile/udata/charge/mini/b;->b:[C

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x30

    ushr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    add-int/2addr v0, v3

    aget-char v0, v2, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    sget-object v0, Lcom/chinaMobile/udata/charge/mini/b;->b:[C

    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3c

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    goto :goto_23

    :cond_57
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    sget-object v3, Lcom/chinaMobile/udata/charge/mini/b;->b:[C

    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v3, Lcom/chinaMobile/udata/charge/mini/b;->b:[C

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x30

    ushr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    add-int/2addr v0, v4

    aget-char v0, v3, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    sget-object v0, Lcom/chinaMobile/udata/charge/mini/b;->b:[C

    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3c

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/2addr v1, v3

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    sget-object v0, Lcom/chinaMobile/udata/charge/mini/b;->b:[C

    and-int/lit8 v1, v2, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_23
.end method


# virtual methods
.method public final a([B)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_a
    invoke-direct {p0, v1, v0}, Lcom/chinaMobile/udata/charge/mini/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const-string v1, "8859_1"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_14

    move-result-object v0

    return-object v0

    :catch_14
    move-exception v0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "CharacterEncoder.encode internal error"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
