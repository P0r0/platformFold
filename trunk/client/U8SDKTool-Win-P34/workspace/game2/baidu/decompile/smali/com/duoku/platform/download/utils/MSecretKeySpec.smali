.class public Lcom/duoku/platform/download/utils/MSecretKeySpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/spec/KeySpec;
.implements Ljavax/crypto/SecretKey;


# static fields
.field private static final serialVersionUID:J = 0x5b470b66e230614dL


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final key:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p1, :cond_e

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 66
    array-length v1, v0

    if-nez v1, :cond_1d

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1d
    if-nez p2, :cond_27

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "algorithm == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_27
    iput-object p2, p0, Lcom/duoku/platform/download/utils/MSecretKeySpec;->algorithm:Ljava/lang/String;

    .line 76
    array-length v1, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/duoku/platform/download/utils/MSecretKeySpec;->key:[B

    .line 77
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/MSecretKeySpec;->getKey(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/download/utils/MSecretKeySpec;->key:[B

    array-length v0, v0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    return-void
.end method

.method public constructor <init>([BIILjava/lang/String;)V
    .registers 7

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    if-nez p1, :cond_d

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_d
    array-length v0, p1

    if-nez v0, :cond_18

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_18
    if-ltz p3, :cond_1c

    if-gez p2, :cond_24

    .line 124
    :cond_1c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "len < 0 || offset < 0"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_24
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_30

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_30
    if-nez p4, :cond_3a

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "algorithm == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_3a
    iput-object p4, p0, Lcom/duoku/platform/download/utils/MSecretKeySpec;->algorithm:Ljava/lang/String;

    .line 135
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MSecretKeySpec;->key:[B

    .line 136
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MSecretKeySpec;->key:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_e

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_e
    array-length v0, p1

    if-nez v0, :cond_19

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_19
    if-nez p2, :cond_23

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "algorithm == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_23
    iput-object p2, p0, Lcom/duoku/platform/download/utils/MSecretKeySpec;->algorithm:Ljava/lang/String;

    .line 52
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MSecretKeySpec;->key:[B

    .line 53
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MSecretKeySpec;->key:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    return-void
.end method

.method private getKey(Ljava/lang/String;)[B
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 89
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 199
    if-ne p1, p0, :cond_5

    .line 208
    :cond_4
    :goto_4
    return v0

    .line 203
    :cond_5
    instance-of v2, p1, Ljavax/crypto/spec/SecretKeySpec;

    if-nez v2, :cond_b

    move v0, v1

    .line 205
    goto :goto_4

    .line 207
    :cond_b
    check-cast p1, Lcom/duoku/platform/download/utils/MSecretKeySpec;

    .line 208
    iget-object v2, p0, Lcom/duoku/platform/download/utils/MSecretKeySpec;->algorithm:Ljava/lang/String;

    iget-object v3, p1, Lcom/duoku/platform/download/utils/MSecretKeySpec;->algorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/duoku/platform/download/utils/MSecretKeySpec;->key:[B

    iget-object v3, p1, Lcom/duoku/platform/download/utils/MSecretKeySpec;->key:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MSecretKeySpec;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 166
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MSecretKeySpec;->key:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 167
    iget-object v1, p0, Lcom/duoku/platform/download/utils/MSecretKeySpec;->key:[B

    iget-object v2, p0, Lcom/duoku/platform/download/utils/MSecretKeySpec;->key:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    const-string v0, "RAW"

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 179
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MSecretKeySpec;->algorithm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 180
    iget-object v2, p0, Lcom/duoku/platform/download/utils/MSecretKeySpec;->key:[B

    array-length v3, v2

    const/4 v0, 0x0

    :goto_a
    if-lt v0, v3, :cond_d

    .line 184
    return v1

    .line 180
    :cond_d
    aget-byte v4, v2, v0

    .line 182
    add-int/2addr v1, v4

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method
