.class public final Lcom/baidu/scancode/zxing/common/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/baidu/scancode/zxing/common/c;

.field public static final b:Lcom/baidu/scancode/zxing/common/c;

.field public static final c:Lcom/baidu/scancode/zxing/common/c;

.field public static final d:Lcom/baidu/scancode/zxing/common/c;

.field public static final e:Lcom/baidu/scancode/zxing/common/c;

.field public static final f:Lcom/baidu/scancode/zxing/common/c;

.field public static final g:Lcom/baidu/scancode/zxing/common/c;

.field public static final h:Lcom/baidu/scancode/zxing/common/c;


# instance fields
.field private final i:[I

.field private final j:[I

.field private final k:Lcom/baidu/scancode/zxing/common/d;

.field private final l:Lcom/baidu/scancode/zxing/common/d;

.field private final m:I

.field private final n:I

.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x100

    const/4 v3, 0x1

    new-instance v0, Lcom/baidu/scancode/zxing/common/c;

    const/16 v1, 0x1069

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/scancode/zxing/common/c;-><init>(III)V

    sput-object v0, Lcom/baidu/scancode/zxing/common/c;->a:Lcom/baidu/scancode/zxing/common/c;

    new-instance v0, Lcom/baidu/scancode/zxing/common/c;

    const/16 v1, 0x409

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/scancode/zxing/common/c;-><init>(III)V

    sput-object v0, Lcom/baidu/scancode/zxing/common/c;->b:Lcom/baidu/scancode/zxing/common/c;

    new-instance v0, Lcom/baidu/scancode/zxing/common/c;

    const/16 v1, 0x43

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/scancode/zxing/common/c;-><init>(III)V

    sput-object v0, Lcom/baidu/scancode/zxing/common/c;->c:Lcom/baidu/scancode/zxing/common/c;

    new-instance v0, Lcom/baidu/scancode/zxing/common/c;

    const/16 v1, 0x13

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/scancode/zxing/common/c;-><init>(III)V

    sput-object v0, Lcom/baidu/scancode/zxing/common/c;->d:Lcom/baidu/scancode/zxing/common/c;

    new-instance v0, Lcom/baidu/scancode/zxing/common/c;

    const/16 v1, 0x11d

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lcom/baidu/scancode/zxing/common/c;-><init>(III)V

    sput-object v0, Lcom/baidu/scancode/zxing/common/c;->e:Lcom/baidu/scancode/zxing/common/c;

    new-instance v0, Lcom/baidu/scancode/zxing/common/c;

    const/16 v1, 0x12d

    invoke-direct {v0, v1, v4, v3}, Lcom/baidu/scancode/zxing/common/c;-><init>(III)V

    sput-object v0, Lcom/baidu/scancode/zxing/common/c;->f:Lcom/baidu/scancode/zxing/common/c;

    sget-object v0, Lcom/baidu/scancode/zxing/common/c;->f:Lcom/baidu/scancode/zxing/common/c;

    sput-object v0, Lcom/baidu/scancode/zxing/common/c;->g:Lcom/baidu/scancode/zxing/common/c;

    sget-object v0, Lcom/baidu/scancode/zxing/common/c;->c:Lcom/baidu/scancode/zxing/common/c;

    sput-object v0, Lcom/baidu/scancode/zxing/common/c;->h:Lcom/baidu/scancode/zxing/common/c;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 9

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/scancode/zxing/common/c;->n:I

    iput p2, p0, Lcom/baidu/scancode/zxing/common/c;->m:I

    iput p3, p0, Lcom/baidu/scancode/zxing/common/c;->o:I

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/baidu/scancode/zxing/common/c;->i:[I

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/baidu/scancode/zxing/common/c;->j:[I

    move v2, v1

    move v0, v3

    :goto_15
    if-ge v2, p2, :cond_26

    iget-object v4, p0, Lcom/baidu/scancode/zxing/common/c;->i:[I

    aput v0, v4, v2

    mul-int/lit8 v0, v0, 0x2

    if-lt v0, p2, :cond_23

    xor-int/2addr v0, p1

    add-int/lit8 v4, p2, -0x1

    and-int/2addr v0, v4

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_26
    move v0, v1

    :goto_27
    add-int/lit8 v2, p2, -0x1

    if-ge v0, v2, :cond_36

    iget-object v2, p0, Lcom/baidu/scancode/zxing/common/c;->j:[I

    iget-object v4, p0, Lcom/baidu/scancode/zxing/common/c;->i:[I

    aget v4, v4, v0

    aput v0, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_36
    new-instance v0, Lcom/baidu/scancode/zxing/common/d;

    new-array v2, v3, [I

    aput v1, v2, v1

    invoke-direct {v0, p0, v2}, Lcom/baidu/scancode/zxing/common/d;-><init>(Lcom/baidu/scancode/zxing/common/c;[I)V

    iput-object v0, p0, Lcom/baidu/scancode/zxing/common/c;->k:Lcom/baidu/scancode/zxing/common/d;

    new-instance v0, Lcom/baidu/scancode/zxing/common/d;

    new-array v2, v3, [I

    aput v3, v2, v1

    invoke-direct {v0, p0, v2}, Lcom/baidu/scancode/zxing/common/d;-><init>(Lcom/baidu/scancode/zxing/common/c;[I)V

    iput-object v0, p0, Lcom/baidu/scancode/zxing/common/c;->l:Lcom/baidu/scancode/zxing/common/d;

    return-void
.end method

.method static b(II)I
    .registers 3

    xor-int v0, p0, p1

    return v0
.end method


# virtual methods
.method a(I)I
    .registers 3

    iget-object v0, p0, Lcom/baidu/scancode/zxing/common/c;->i:[I

    aget v0, v0, p1

    return v0
.end method

.method a()Lcom/baidu/scancode/zxing/common/d;
    .registers 2

    iget-object v0, p0, Lcom/baidu/scancode/zxing/common/c;->k:Lcom/baidu/scancode/zxing/common/d;

    return-object v0
.end method

.method a(II)Lcom/baidu/scancode/zxing/common/d;
    .registers 5

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    if-nez p2, :cond_d

    iget-object v0, p0, Lcom/baidu/scancode/zxing/common/c;->k:Lcom/baidu/scancode/zxing/common/d;

    :goto_c
    return-object v0

    :cond_d
    add-int/lit8 v0, p1, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x0

    aput p2, v1, v0

    new-instance v0, Lcom/baidu/scancode/zxing/common/d;

    invoke-direct {v0, p0, v1}, Lcom/baidu/scancode/zxing/common/d;-><init>(Lcom/baidu/scancode/zxing/common/c;[I)V

    goto :goto_c
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/baidu/scancode/zxing/common/c;->o:I

    return v0
.end method

.method b(I)I
    .registers 3

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/baidu/scancode/zxing/common/c;->j:[I

    aget v0, v0, p1

    return v0
.end method

.method c(I)I
    .registers 5

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/baidu/scancode/zxing/common/c;->i:[I

    iget v1, p0, Lcom/baidu/scancode/zxing/common/c;->m:I

    iget-object v2, p0, Lcom/baidu/scancode/zxing/common/c;->j:[I

    aget v2, v2, p1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method c(II)I
    .registers 6

    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/baidu/scancode/zxing/common/c;->i:[I

    iget-object v1, p0, Lcom/baidu/scancode/zxing/common/c;->j:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/baidu/scancode/zxing/common/c;->j:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/scancode/zxing/common/c;->m:I

    add-int/lit8 v2, v2, -0x1

    rem-int/2addr v1, v2

    aget v0, v0, v1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GF(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/scancode/zxing/common/c;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/scancode/zxing/common/c;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
