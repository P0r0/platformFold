.class public final Lcom/baidu/scancode/zxing/qrcode/decoder/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;,
        Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;
    }
.end annotation


# static fields
.field private static final a:[Lcom/baidu/scancode/zxing/qrcode/decoder/a;


# instance fields
.field private final b:I

.field private final c:[I

.field private final d:[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;->d()[Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    move-result-object v0

    sput-object v0, Lcom/baidu/scancode/zxing/qrcode/decoder/a;->a:[Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    return-void
.end method

.method private varargs constructor <init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V
    .registers 11

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/scancode/zxing/qrcode/decoder/a;->b:I

    iput-object p2, p0, Lcom/baidu/scancode/zxing/qrcode/decoder/a;->c:[I

    iput-object p3, p0, Lcom/baidu/scancode/zxing/qrcode/decoder/a;->d:[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;->a()I

    move-result v2

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;->d()[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_18
    if-ge v0, v4, :cond_2a

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;->a()I

    move-result v6

    invoke-virtual {v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;->b()I

    move-result v5

    add-int/2addr v5, v2

    mul-int/2addr v5, v6

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2a
    iput v1, p0, Lcom/baidu/scancode/zxing/qrcode/decoder/a;->e:I

    return-void
.end method

.method public static a(I)Lcom/baidu/scancode/zxing/qrcode/decoder/a;
    .registers 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/16 v0, 0x28

    if-le p0, v0, :cond_d

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_d
    sget-object v0, Lcom/baidu/scancode/zxing/qrcode/decoder/a;->a:[Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static d()[Lcom/baidu/scancode/zxing/qrcode/decoder/a;
    .registers 14

    const/16 v0, 0x28

    new-array v0, v0, [Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/4 v1, 0x0

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-array v4, v4, [I

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v8, 0x7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0xa

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0xd

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x11

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x9

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/4 v3, 0x2

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1818

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0xa

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x22

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x10

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x1c

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x16

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/4 v3, 0x3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1820

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0xf

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x37

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x16

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/4 v3, 0x4

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1828

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x14

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x50

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x20

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x10

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x9

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/4 v3, 0x5

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1830

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x6c

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x2b

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x12

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/4 v3, 0x6

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1838

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x44

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x10

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x1b

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/4 v3, 0x7

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_1840

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x14

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x4e

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x1f

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x12

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x8

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_184a

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x61

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x26

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x27

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x12

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x9

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_1854

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x3

    const/16 v13, 0x24

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x25

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x14

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0xa

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_185e

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x12

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x44

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x45

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x2b

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x6

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x6

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0xb

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_1868

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x14

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x51

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x32

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x33

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x3

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x8

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0xc

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_1872

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x5c

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x5d

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x6

    const/16 v13, 0x24

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x25

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x6

    const/16 v13, 0x15

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x7

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0xd

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_187c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x8

    const/16 v13, 0x25

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x26

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x8

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x15

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xc

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0xe

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_1886

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x3

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x28

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x5

    const/16 v13, 0x29

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x14

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xb

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x5

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xb

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x5

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0xf

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_1892

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x5

    const/16 v13, 0x57

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x58

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x5

    const/16 v13, 0x29

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x5

    const/16 v13, 0x2a

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x5

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x7

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xb

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x7

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x10

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_189e

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x5

    const/16 v13, 0x62

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x63

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x7

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x3

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xf

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x3

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xd

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x11

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_18aa

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x5

    const/16 v13, 0x6c

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xa

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xf

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x11

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x12

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_18b6

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x5

    const/16 v13, 0x78

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x9

    const/16 v13, 0x2b

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x11

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x13

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x13

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_18c2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x3

    const/16 v13, 0x71

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x72

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x3

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xb

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x11

    const/16 v13, 0x15

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x9

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x10

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x14

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_18ce

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x3

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x5

    const/16 v13, 0x6c

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x3

    const/16 v13, 0x29

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xd

    const/16 v13, 0x2a

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xf

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x5

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xf

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xa

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x15

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_18da

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x11

    const/16 v13, 0x2a

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x11

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x6

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x13

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x6

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x16

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_18e8

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x6f

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x7

    const/16 v13, 0x70

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x11

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x7

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x10

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x22

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x17

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_18f6

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x5

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xe

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xb

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xe

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x10

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xe

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x18

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_1904

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x6

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x6

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xe

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xb

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x10

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x1e

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x19

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_1912

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x8

    const/16 v13, 0x6a

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x8

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xd

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x7

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x16

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x16

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xd

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x1a

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_1920

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xa

    const/16 v13, 0x72

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x13

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x1c

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x6

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x21

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x1b

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_192e

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x8

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x7b

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x16

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x3

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x8

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x1a

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xc

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x1c

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x1c

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_193c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x3

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xa

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x3

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x17

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x1f

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xb

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x1f

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x1d

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_194c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x7

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x7

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x15

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x7

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x25

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x13

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x1a

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x1e

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_195c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x5

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xa

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x13

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xa

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xf

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x19

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x17

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x19

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x1f

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_196c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xd

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x3

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x1d

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x2a

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x17

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x1c

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x20

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_197c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x11

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xa

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x17

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xa

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x23

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x13

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x23

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x21

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_198c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x11

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xe

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x15

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x1d

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x13

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xb

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x2e

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x22

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_199c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xd

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x6

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xe

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x17

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x2c

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x7

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x3b

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x1

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x23

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_19ac

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xc

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x7

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xc

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x1a

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x27

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xe

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x16

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x29

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x24

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_19be

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x6

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xe

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x6

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x22

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x2e

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xa

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x2

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x40

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x25

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_19d0

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x11

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x7b

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x1d

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xe

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x31

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xa

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x18

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x2e

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x26

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_19e2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x12

    const/16 v13, 0x7b

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xd

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x20

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x30

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xe

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x2a

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x20

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x27

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_19f4

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x14

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x4

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x28

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x7

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x2b

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x16

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0xa

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x43

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/baidu/scancode/zxing/qrcode/decoder/a;

    const/16 v3, 0x28

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_1a06

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/4 v6, 0x0

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x13

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v12, 0x6

    const/16 v13, 0x77

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x12

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x1f

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x22

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x22

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/4 v10, 0x0

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x14

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;

    const/16 v12, 0x3d

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;-><init>(I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$a;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/scancode/zxing/qrcode/decoder/a;-><init>(I[I[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;)V

    aput-object v2, v0, v1

    return-object v0

    nop

    :array_1818
    .array-data 4
        0x6
        0x12
    .end array-data

    :array_1820
    .array-data 4
        0x6
        0x16
    .end array-data

    :array_1828
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_1830
    .array-data 4
        0x6
        0x1e
    .end array-data

    :array_1838
    .array-data 4
        0x6
        0x22
    .end array-data

    :array_1840
    .array-data 4
        0x6
        0x16
        0x26
    .end array-data

    :array_184a
    .array-data 4
        0x6
        0x18
        0x2a
    .end array-data

    :array_1854
    .array-data 4
        0x6
        0x1a
        0x2e
    .end array-data

    :array_185e
    .array-data 4
        0x6
        0x1c
        0x32
    .end array-data

    :array_1868
    .array-data 4
        0x6
        0x1e
        0x36
    .end array-data

    :array_1872
    .array-data 4
        0x6
        0x20
        0x3a
    .end array-data

    :array_187c
    .array-data 4
        0x6
        0x22
        0x3e
    .end array-data

    :array_1886
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
    .end array-data

    :array_1892
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
    .end array-data

    :array_189e
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
    .end array-data

    :array_18aa
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
    .end array-data

    :array_18b6
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
    .end array-data

    :array_18c2
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
    .end array-data

    :array_18ce
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
    .end array-data

    :array_18da
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
    .end array-data

    :array_18e8
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
    .end array-data

    :array_18f6
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
    .end array-data

    :array_1904
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
    .end array-data

    :array_1912
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
    .end array-data

    :array_1920
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
    .end array-data

    :array_192e
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
    .end array-data

    :array_193c
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
    .end array-data

    :array_194c
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
    .end array-data

    :array_195c
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
    .end array-data

    :array_196c
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
    .end array-data

    :array_197c
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
    .end array-data

    :array_198c
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
    .end array-data

    :array_199c
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
    .end array-data

    :array_19ac
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_19be
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_19d0
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_19e2
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_19f4
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_1a06
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/baidu/scancode/zxing/qrcode/decoder/a;->b:I

    return v0
.end method

.method public a(Lcom/baidu/scancode/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;
    .registers 4

    iget-object v0, p0, Lcom/baidu/scancode/zxing/qrcode/decoder/a;->d:[Lcom/baidu/scancode/zxing/qrcode/decoder/a$b;

    invoke-virtual {p1}, Lcom/baidu/scancode/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/baidu/scancode/zxing/qrcode/decoder/a;->e:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/baidu/scancode/zxing/qrcode/decoder/a;->b:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/baidu/scancode/zxing/qrcode/decoder/a;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method