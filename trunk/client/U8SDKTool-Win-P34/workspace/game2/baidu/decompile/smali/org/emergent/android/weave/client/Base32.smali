.class public Lorg/emergent/android/weave/client/Base32;
.super Ljava/lang/Object;
.source "Base32.java"


# static fields
.field private static final base32Chars:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

.field private static final base32Lookup:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/16 v0, 0x50

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/emergent/android/weave/client/Base32;->base32Lookup:[I

    return-void

    :array_a
    .array-data 4
        0xff
        0xff
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0xff
        0xff
        0xff
        0xff
        0xff
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 9
    .param p0, "base32"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    div-int/lit8 v6, v6, 0x8

    new-array v0, v6, [B

    .line 172
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "index":I
    const/4 v5, 0x0

    .local v5, "offset":I
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_3f

    .line 173
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v4, v6, -0x30

    .line 175
    .local v4, "lookup":I
    if-ltz v4, :cond_20

    sget-object v6, Lorg/emergent/android/weave/client/Base32;->base32Lookup:[I

    array-length v6, v6

    if-lt v4, v6, :cond_23

    .line 172
    :cond_20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 178
    :cond_23
    sget-object v6, Lorg/emergent/android/weave/client/Base32;->base32Lookup:[I

    aget v1, v6, v4

    .line 180
    .local v1, "digit":I
    const/16 v6, 0xff

    if-eq v1, v6, :cond_20

    .line 183
    const/4 v6, 0x3

    if-gt v3, v6, :cond_4b

    .line 184
    add-int/lit8 v6, v3, 0x5

    rem-int/lit8 v3, v6, 0x8

    .line 185
    if-nez v3, :cond_40

    .line 186
    aget-byte v6, v0, v5

    or-int/2addr v6, v1

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 187
    add-int/lit8 v5, v5, 0x1

    .line 188
    array-length v6, v0

    if-lt v5, v6, :cond_20

    .line 203
    .end local v1    # "digit":I
    .end local v4    # "lookup":I
    :cond_3f
    return-object v0

    .line 191
    .restart local v1    # "digit":I
    .restart local v4    # "lookup":I
    :cond_40
    aget-byte v6, v0, v5

    rsub-int/lit8 v7, v3, 0x8

    shl-int v7, v1, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    goto :goto_20

    .line 194
    :cond_4b
    add-int/lit8 v6, v3, 0x5

    rem-int/lit8 v3, v6, 0x8

    .line 195
    aget-byte v6, v0, v5

    ushr-int v7, v1, v3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 196
    add-int/lit8 v5, v5, 0x1

    .line 197
    array-length v6, v0

    if-ge v5, v6, :cond_3f

    .line 200
    aget-byte v6, v0, v5

    rsub-int/lit8 v7, v3, 0x8

    shl-int v7, v1, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    goto :goto_20
.end method

.method public static decodeModified(Ljava/lang/String;)[B
    .registers 4
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 124
    const/16 v0, 0x38

    const/16 v1, 0x4c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x39

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/emergent/android/weave/client/Base32;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)[B
    .registers 3
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p0}, Lorg/emergent/android/weave/client/Base32;->encodeOriginal([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "lower":Ljava/lang/String;
    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public static encodeOriginal([B)Ljava/lang/String;
    .registers 9
    .param p0, "bytes"    # [B

    .prologue
    .line 134
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "index":I
    const/4 v2, 0x0

    .line 136
    .local v2, "digit":I
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v6, p0

    add-int/lit8 v6, v6, 0x7

    mul-int/lit8 v6, v6, 0x8

    div-int/lit8 v6, v6, 0x5

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 137
    .local v0, "base32":Ljava/lang/StringBuffer;
    :goto_f
    array-length v6, p0

    if-ge v3, v6, :cond_64

    .line 139
    aget-byte v6, p0, v3

    if-ltz v6, :cond_45

    aget-byte v1, p0, v3

    .line 141
    .local v1, "currByte":I
    :goto_18
    const/4 v6, 0x3

    if-le v4, v6, :cond_53

    .line 142
    add-int/lit8 v6, v3, 0x1

    array-length v7, p0

    if-ge v6, v7, :cond_51

    .line 143
    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p0, v6

    if-ltz v6, :cond_4a

    add-int/lit8 v6, v3, 0x1

    aget-byte v5, p0, v6

    .line 147
    .local v5, "nextByte":I
    :goto_2a
    const/16 v6, 0xff

    shr-int/2addr v6, v4

    and-int v2, v1, v6

    .line 148
    add-int/lit8 v6, v4, 0x5

    rem-int/lit8 v4, v6, 0x8

    .line 149
    shl-int/2addr v2, v4

    .line 150
    rsub-int/lit8 v6, v4, 0x8

    shr-int v6, v5, v6

    or-int/2addr v2, v6

    .line 151
    add-int/lit8 v3, v3, 0x1

    .line 158
    .end local v5    # "nextByte":I
    :cond_3b
    :goto_3b
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 139
    .end local v1    # "currByte":I
    :cond_45
    aget-byte v6, p0, v3

    add-int/lit16 v1, v6, 0x100

    goto :goto_18

    .line 143
    .restart local v1    # "currByte":I
    :cond_4a
    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p0, v6

    add-int/lit16 v5, v6, 0x100

    goto :goto_2a

    .line 145
    :cond_51
    const/4 v5, 0x0

    .restart local v5    # "nextByte":I
    goto :goto_2a

    .line 153
    .end local v5    # "nextByte":I
    :cond_53
    add-int/lit8 v6, v4, 0x5

    rsub-int/lit8 v6, v6, 0x8

    shr-int v6, v1, v6

    and-int/lit8 v2, v6, 0x1f

    .line 154
    add-int/lit8 v6, v4, 0x5

    rem-int/lit8 v4, v6, 0x8

    .line 155
    if-nez v4, :cond_3b

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 160
    .end local v1    # "currByte":I
    :cond_64
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
