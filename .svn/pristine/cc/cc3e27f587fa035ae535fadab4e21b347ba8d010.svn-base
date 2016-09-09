.class public Lcom/youju/statistics/c/e/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:[B


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/youju/statistics/c/e/a;->a:I

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/youju/statistics/c/e/a;->b:[B

    return-void
.end method


# virtual methods
.method public a(B)V
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/e/a;->b:[B

    iget v1, p0, Lcom/youju/statistics/c/e/a;->a:I

    aput-byte p1, v0, v1

    iget v0, p0, Lcom/youju/statistics/c/e/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youju/statistics/c/e/a;->a:I

    return-void
.end method

.method public a([B)V
    .registers 6

    array-length v0, p1

    iget-object v1, p0, Lcom/youju/statistics/c/e/a;->b:[B

    iget v2, p0, Lcom/youju/statistics/c/e/a;->a:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    iget v1, p0, Lcom/youju/statistics/c/e/a;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/youju/statistics/c/e/a;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/youju/statistics/c/e/a;->b:[B

    iget v3, p0, Lcom/youju/statistics/c/e/a;->a:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/youju/statistics/c/e/a;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/youju/statistics/c/e/a;->a:I

    return-void
.end method

.method public a([BI)V
    .registers 7

    const/4 v3, 0x0

    array-length v0, p1

    if-ge v0, p2, :cond_11

    iget-object v1, p0, Lcom/youju/statistics/c/e/a;->b:[B

    iget v2, p0, Lcom/youju/statistics/c/e/a;->a:I

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_b
    iget v0, p0, Lcom/youju/statistics/c/e/a;->a:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/youju/statistics/c/e/a;->a:I

    return-void

    :cond_11
    iget-object v0, p0, Lcom/youju/statistics/c/e/a;->b:[B

    iget v1, p0, Lcom/youju/statistics/c/e/a;->a:I

    invoke-static {p1, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b
.end method

.method public a()[B
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/e/a;->b:[B

    return-object v0
.end method
