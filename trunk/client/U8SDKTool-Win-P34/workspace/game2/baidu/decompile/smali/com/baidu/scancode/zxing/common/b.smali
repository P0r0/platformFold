.class public final Lcom/baidu/scancode/zxing/common/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:[I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p1, v0, :cond_8

    if-ge p2, v0, :cond_10

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput p1, p0, Lcom/baidu/scancode/zxing/common/b;->a:I

    iput p2, p0, Lcom/baidu/scancode/zxing/common/b;->b:I

    add-int/lit8 v0, p1, 0x1f

    div-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/baidu/scancode/zxing/common/b;->c:I

    iget v0, p0, Lcom/baidu/scancode/zxing/common/b;->c:I

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/baidu/scancode/zxing/common/b;->d:[I

    return-void
.end method

.method private constructor <init>(III[I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/scancode/zxing/common/b;->a:I

    iput p2, p0, Lcom/baidu/scancode/zxing/common/b;->b:I

    iput p3, p0, Lcom/baidu/scancode/zxing/common/b;->c:I

    iput-object p4, p0, Lcom/baidu/scancode/zxing/common/b;->d:[I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/baidu/scancode/zxing/common/b;->a:I

    return v0
.end method

.method public a(IIII)V
    .registers 14

    const/4 v8, 0x1

    if-ltz p2, :cond_5

    if-gez p1, :cond_d

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Left and top must be nonnegative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-lt p4, v8, :cond_11

    if-ge p3, v8, :cond_19

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height and width must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    add-int v1, p1, p3

    add-int v2, p2, p4

    iget v0, p0, Lcom/baidu/scancode/zxing/common/b;->b:I

    if-gt v2, v0, :cond_25

    iget v0, p0, Lcom/baidu/scancode/zxing/common/b;->a:I

    if-le v1, v0, :cond_2f

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The region must fit inside the matrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    add-int/lit8 p2, p2, 0x1

    :cond_2f
    if-ge p2, v2, :cond_49

    iget v0, p0, Lcom/baidu/scancode/zxing/common/b;->c:I

    mul-int v3, p2, v0

    move v0, p1

    :goto_36
    if-ge v0, v1, :cond_2d

    iget-object v4, p0, Lcom/baidu/scancode/zxing/common/b;->d:[I

    div-int/lit8 v5, v0, 0x20

    add-int/2addr v5, v3

    aget v6, v4, v5

    and-int/lit8 v7, v0, 0x1f

    shl-int v7, v8, v7

    or-int/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_49
    return-void
.end method

.method public a(II)Z
    .registers 5

    iget v0, p0, Lcom/baidu/scancode/zxing/common/b;->c:I

    mul-int/2addr v0, p2

    div-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/baidu/scancode/zxing/common/b;->d:[I

    aget v0, v1, v0

    and-int/lit8 v1, p1, 0x1f

    ushr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/baidu/scancode/zxing/common/b;->b:I

    return v0
.end method

.method public c()Lcom/baidu/scancode/zxing/common/b;
    .registers 6

    new-instance v1, Lcom/baidu/scancode/zxing/common/b;

    iget v2, p0, Lcom/baidu/scancode/zxing/common/b;->a:I

    iget v3, p0, Lcom/baidu/scancode/zxing/common/b;->b:I

    iget v4, p0, Lcom/baidu/scancode/zxing/common/b;->c:I

    iget-object v0, p0, Lcom/baidu/scancode/zxing/common/b;->d:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/baidu/scancode/zxing/common/b;-><init>(III[I)V

    return-object v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/common/b;->c()Lcom/baidu/scancode/zxing/common/b;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/baidu/scancode/zxing/common/b;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/baidu/scancode/zxing/common/b;

    iget v1, p0, Lcom/baidu/scancode/zxing/common/b;->a:I

    iget v2, p1, Lcom/baidu/scancode/zxing/common/b;->a:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/baidu/scancode/zxing/common/b;->b:I

    iget v2, p1, Lcom/baidu/scancode/zxing/common/b;->b:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/baidu/scancode/zxing/common/b;->c:I

    iget v2, p1, Lcom/baidu/scancode/zxing/common/b;->c:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/baidu/scancode/zxing/common/b;->d:[I

    iget-object v2, p1, Lcom/baidu/scancode/zxing/common/b;->d:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/baidu/scancode/zxing/common/b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/baidu/scancode/zxing/common/b;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/baidu/scancode/zxing/common/b;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/baidu/scancode/zxing/common/b;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/baidu/scancode/zxing/common/b;->d:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/baidu/scancode/zxing/common/b;->b:I

    iget v2, p0, Lcom/baidu/scancode/zxing/common/b;->a:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    :goto_e
    iget v2, p0, Lcom/baidu/scancode/zxing/common/b;->b:I

    if-ge v0, v2, :cond_30

    move v2, v1

    :goto_13
    iget v3, p0, Lcom/baidu/scancode/zxing/common/b;->a:I

    if-ge v2, v3, :cond_28

    invoke-virtual {p0, v2, v0}, Lcom/baidu/scancode/zxing/common/b;->a(II)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "X "

    :goto_1f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_25
    const-string v3, "  "

    goto :goto_1f

    :cond_28
    const/16 v2, 0xa

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
