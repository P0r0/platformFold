.class public final Lcom/ltayx/pay/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    .line 14
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/ltayx/pay/f;->a:[B

    .line 15
    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lcom/ltayx/pay/f;->b:[C

    move v1, v0

    .line 18
    :goto_16
    const/16 v2, 0x80

    if-lt v1, v2, :cond_50

    .line 21
    const/16 v1, 0x5a

    :goto_1c
    const/16 v2, 0x41

    if-ge v1, v2, :cond_58

    .line 24
    const/16 v1, 0x7a

    :goto_22
    const/16 v2, 0x61

    if-ge v1, v2, :cond_62

    .line 28
    const/16 v1, 0x39

    :goto_28
    const/16 v2, 0x30

    if-ge v1, v2, :cond_6e

    .line 32
    sget-object v1, Lcom/ltayx/pay/f;->a:[B

    aput-byte v7, v1, v5

    .line 33
    sget-object v1, Lcom/ltayx/pay/f;->a:[B

    aput-byte v8, v1, v6

    move v1, v0

    .line 35
    :goto_35
    const/16 v2, 0x19

    if-le v1, v2, :cond_7a

    .line 39
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_3d
    const/16 v3, 0x33

    if-le v2, v3, :cond_84

    .line 43
    const/16 v1, 0x34

    :goto_43
    const/16 v2, 0x3d

    if-le v1, v2, :cond_90

    .line 46
    sget-object v0, Lcom/ltayx/pay/f;->b:[C

    aput-char v5, v0, v7

    .line 47
    sget-object v0, Lcom/ltayx/pay/f;->b:[C

    aput-char v6, v0, v8

    .line 49
    return-void

    .line 19
    :cond_50
    sget-object v2, Lcom/ltayx/pay/f;->a:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 22
    :cond_58
    sget-object v2, Lcom/ltayx/pay/f;->a:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 21
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 25
    :cond_62
    sget-object v2, Lcom/ltayx/pay/f;->a:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 24
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    .line 29
    :cond_6e
    sget-object v2, Lcom/ltayx/pay/f;->a:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 28
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 36
    :cond_7a
    sget-object v2, Lcom/ltayx/pay/f;->b:[C

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 40
    :cond_84
    sget-object v3, Lcom/ltayx/pay/f;->b:[C

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 39
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 44
    :cond_90
    sget-object v2, Lcom/ltayx/pay/f;->b:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_43
.end method

.method private static a([C)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 259
    if-nez p0, :cond_4

    .line 271
    :cond_3
    return v1

    .line 265
    :cond_4
    array-length v3, p0

    move v2, v1

    .line 266
    :goto_6
    if-ge v2, v3, :cond_3

    .line 267
    aget-char v0, p0, v2

    invoke-static {v0}, Lcom/ltayx/pay/f;->a(C)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 268
    add-int/lit8 v0, v1, 0x1

    aget-char v4, p0, v2

    aput-char v4, p0, v1

    .line 266
    :goto_16
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_6

    :cond_1b
    move v0, v1

    goto :goto_16
.end method

.method public static a([B)Ljava/lang/String;
    .registers 16

    .prologue
    const/16 v14, 0x3d

    const/4 v2, 0x0

    .line 71
    if-nez p0, :cond_7

    .line 72
    const/4 v0, 0x0

    .line 151
    :goto_6
    return-object v0

    .line 75
    :cond_7
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    .line 76
    if-nez v0, :cond_f

    .line 77
    const-string v0, ""

    goto :goto_6

    .line 80
    :cond_f
    rem-int/lit8 v7, v0, 0x18

    .line 81
    div-int/lit8 v1, v0, 0x18

    .line 82
    if-eqz v7, :cond_4f

    add-int/lit8 v0, v1, 0x1

    .line 85
    :goto_17
    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [C

    move v4, v2

    move v6, v2

    .line 95
    :goto_1d
    if-lt v4, v1, :cond_51

    .line 124
    const/16 v0, 0x8

    if-ne v7, v0, :cond_c4

    .line 125
    aget-byte v0, p0, v2

    .line 126
    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    .line 131
    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_bd

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 132
    :goto_2f
    add-int/lit8 v2, v6, 0x1

    sget-object v3, Lcom/ltayx/pay/f;->b:[C

    aget-char v0, v3, v0

    aput-char v0, v8, v6

    .line 133
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/ltayx/pay/f;->b:[C

    shl-int/lit8 v1, v1, 0x4

    aget-char v1, v3, v1

    aput-char v1, v8, v2

    .line 134
    add-int/lit8 v1, v0, 0x1

    aput-char v14, v8, v0

    .line 135
    add-int/lit8 v0, v1, 0x1

    aput-char v14, v8, v1

    .line 151
    :cond_49
    :goto_49
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    goto :goto_6

    :cond_4f
    move v0, v1

    .line 82
    goto :goto_17

    .line 96
    :cond_51
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    .line 97
    add-int/lit8 v3, v0, 0x1

    aget-byte v9, p0, v0

    .line 98
    add-int/lit8 v5, v3, 0x1

    aget-byte v10, p0, v3

    .line 104
    and-int/lit8 v0, v9, 0xf

    int-to-byte v11, v0

    .line 105
    and-int/lit8 v0, v2, 0x3

    int-to-byte v12, v0

    .line 107
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_a9

    shr-int/lit8 v0, v2, 0x2

    int-to-byte v0, v0

    move v3, v0

    .line 108
    :goto_6b
    and-int/lit8 v0, v9, -0x80

    if-nez v0, :cond_b0

    shr-int/lit8 v0, v9, 0x4

    int-to-byte v0, v0

    move v2, v0

    .line 109
    :goto_73
    and-int/lit8 v0, v10, -0x80

    if-nez v0, :cond_b7

    shr-int/lit8 v0, v10, 0x6

    int-to-byte v0, v0

    .line 117
    :goto_7a
    add-int/lit8 v9, v6, 0x1

    sget-object v13, Lcom/ltayx/pay/f;->b:[C

    aget-char v3, v13, v3

    aput-char v3, v8, v6

    .line 118
    add-int/lit8 v3, v9, 0x1

    sget-object v6, Lcom/ltayx/pay/f;->b:[C

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v2, v12

    aget-char v2, v6, v2

    aput-char v2, v8, v9

    .line 119
    add-int/lit8 v6, v3, 0x1

    sget-object v2, Lcom/ltayx/pay/f;->b:[C

    shl-int/lit8 v9, v11, 0x2

    or-int/2addr v0, v9

    aget-char v0, v2, v0

    aput-char v0, v8, v3

    .line 120
    add-int/lit8 v2, v6, 0x1

    sget-object v0, Lcom/ltayx/pay/f;->b:[C

    and-int/lit8 v3, v10, 0x3f

    aget-char v0, v0, v3

    aput-char v0, v8, v6

    .line 95
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v6, v2

    move v2, v5

    goto/16 :goto_1d

    .line 107
    :cond_a9
    shr-int/lit8 v0, v2, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v3, v0

    goto :goto_6b

    .line 108
    :cond_b0
    shr-int/lit8 v0, v9, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    move v2, v0

    goto :goto_73

    .line 109
    :cond_b7
    shr-int/lit8 v0, v10, 0x6

    xor-int/lit16 v0, v0, 0xfc

    int-to-byte v0, v0

    goto :goto_7a

    .line 131
    :cond_bd
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    goto/16 :goto_2f

    .line 136
    :cond_c4
    const/16 v0, 0x10

    if-ne v7, v0, :cond_49

    .line 137
    aget-byte v0, p0, v2

    .line 138
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v1

    .line 139
    and-int/lit8 v1, v2, 0xf

    int-to-byte v3, v1

    .line 140
    and-int/lit8 v1, v0, 0x3

    int-to-byte v4, v1

    .line 142
    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_106

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    move v1, v0

    .line 143
    :goto_dc
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_10d

    shr-int/lit8 v0, v2, 0x4

    int-to-byte v0, v0

    .line 145
    :goto_e3
    add-int/lit8 v2, v6, 0x1

    sget-object v5, Lcom/ltayx/pay/f;->b:[C

    aget-char v1, v5, v1

    aput-char v1, v8, v6

    .line 146
    add-int/lit8 v1, v2, 0x1

    sget-object v5, Lcom/ltayx/pay/f;->b:[C

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    aget-char v0, v5, v0

    aput-char v0, v8, v2

    .line 147
    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/ltayx/pay/f;->b:[C

    shl-int/lit8 v3, v3, 0x2

    aget-char v2, v2, v3

    aput-char v2, v8, v1

    .line 148
    add-int/lit8 v1, v0, 0x1

    aput-char v14, v8, v0

    goto/16 :goto_49

    .line 142
    :cond_106
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v1, v0

    goto :goto_dc

    .line 143
    :cond_10d
    shr-int/lit8 v0, v2, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    goto :goto_e3
.end method

.method private static a(C)Z
    .registers 2

    .prologue
    .line 52
    const/16 v0, 0x20

    if-eq p0, v0, :cond_12

    const/16 v0, 0xd

    if-eq p0, v0, :cond_12

    const/16 v0, 0xa

    if-eq p0, v0, :cond_12

    const/16 v0, 0x9

    if-eq p0, v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 15

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 162
    if-nez p0, :cond_5

    .line 249
    :cond_4
    :goto_4
    return-object v0

    .line 166
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 168
    invoke-static {v6}, Lcom/ltayx/pay/f;->a([C)I

    move-result v1

    .line 170
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_4

    .line 174
    div-int/lit8 v7, v1, 0x4

    .line 176
    if-nez v7, :cond_18

    .line 177
    new-array v0, v3, [B

    goto :goto_4

    .line 187
    :cond_18
    mul-int/lit8 v1, v7, 0x3

    new-array v1, v1, [B

    move v2, v3

    move v4, v3

    move v5, v3

    .line 189
    :goto_1f
    add-int/lit8 v8, v7, -0x1

    if-lt v5, v8, :cond_77

    .line 207
    add-int/lit8 v7, v2, 0x1

    aget-char v2, v6, v2

    invoke-static {v2}, Lcom/ltayx/pay/f;->c(C)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v8, v7, 0x1

    aget-char v7, v6, v7

    invoke-static {v7}, Lcom/ltayx/pay/f;->c(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 211
    sget-object v9, Lcom/ltayx/pay/f;->a:[B

    aget-byte v2, v9, v2

    .line 212
    sget-object v9, Lcom/ltayx/pay/f;->a:[B

    aget-byte v7, v9, v7

    .line 214
    add-int/lit8 v9, v8, 0x1

    aget-char v8, v6, v8

    .line 215
    add-int/lit8 v10, v9, 0x1

    aget-char v6, v6, v9

    .line 216
    invoke-static {v8}, Lcom/ltayx/pay/f;->c(C)Z

    move-result v9

    if-eqz v9, :cond_53

    invoke-static {v6}, Lcom/ltayx/pay/f;->c(C)Z

    move-result v9

    if-nez v9, :cond_10a

    .line 217
    :cond_53
    invoke-static {v8}, Lcom/ltayx/pay/f;->b(C)Z

    move-result v9

    if-eqz v9, :cond_d3

    invoke-static {v6}, Lcom/ltayx/pay/f;->b(C)Z

    move-result v9

    if-eqz v9, :cond_d3

    .line 218
    and-int/lit8 v6, v7, 0xf

    if-nez v6, :cond_4

    .line 222
    mul-int/lit8 v0, v5, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 223
    mul-int/lit8 v5, v5, 0x3

    invoke-static {v1, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    shl-int/lit8 v1, v2, 0x2

    shr-int/lit8 v2, v7, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    goto :goto_4

    .line 191
    :cond_77
    add-int/lit8 v8, v2, 0x1

    aget-char v9, v6, v2

    invoke-static {v9}, Lcom/ltayx/pay/f;->c(C)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v8, 0x1

    aget-char v8, v6, v8

    invoke-static {v8}, Lcom/ltayx/pay/f;->c(C)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 192
    add-int/lit8 v10, v2, 0x1

    aget-char v11, v6, v2

    invoke-static {v11}, Lcom/ltayx/pay/f;->c(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 193
    add-int/lit8 v2, v10, 0x1

    aget-char v10, v6, v10

    invoke-static {v10}, Lcom/ltayx/pay/f;->c(C)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 197
    sget-object v12, Lcom/ltayx/pay/f;->a:[B

    aget-byte v9, v12, v9

    .line 198
    sget-object v12, Lcom/ltayx/pay/f;->a:[B

    aget-byte v8, v12, v8

    .line 199
    sget-object v12, Lcom/ltayx/pay/f;->a:[B

    aget-byte v11, v12, v11

    .line 200
    sget-object v12, Lcom/ltayx/pay/f;->a:[B

    aget-byte v10, v12, v10

    .line 202
    add-int/lit8 v12, v4, 0x1

    shl-int/lit8 v9, v9, 0x2

    shr-int/lit8 v13, v8, 0x4

    or-int/2addr v9, v13

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    .line 203
    add-int/lit8 v9, v12, 0x1

    and-int/lit8 v4, v8, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v8, v11, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v1, v12

    .line 204
    add-int/lit8 v4, v9, 0x1

    shl-int/lit8 v8, v11, 0x6

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v1, v9

    .line 189
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1f

    .line 226
    :cond_d3
    invoke-static {v8}, Lcom/ltayx/pay/f;->b(C)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v6}, Lcom/ltayx/pay/f;->b(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 227
    sget-object v6, Lcom/ltayx/pay/f;->a:[B

    aget-byte v6, v6, v8

    .line 228
    and-int/lit8 v8, v6, 0x3

    if-nez v8, :cond_4

    .line 232
    mul-int/lit8 v0, v5, 0x3

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 233
    mul-int/lit8 v5, v5, 0x3

    invoke-static {v1, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    add-int/lit8 v1, v4, 0x1

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v3, v7, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 235
    and-int/lit8 v2, v7, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v6, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_4

    .line 241
    :cond_10a
    sget-object v0, Lcom/ltayx/pay/f;->a:[B

    aget-byte v0, v0, v8

    .line 242
    sget-object v3, Lcom/ltayx/pay/f;->a:[B

    aget-byte v3, v3, v6

    .line 243
    add-int/lit8 v5, v4, 0x1

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v6, v7, 0x4

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 244
    add-int/lit8 v2, v5, 0x1

    and-int/lit8 v4, v7, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v6, v0, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    .line 245
    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    move-object v0, v1

    .line 249
    goto/16 :goto_4
.end method

.method private static b(C)Z
    .registers 2

    .prologue
    .line 56
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static c(C)Z
    .registers 3

    .prologue
    .line 60
    const/16 v0, 0x80

    if-ge p0, v0, :cond_d

    sget-object v0, Lcom/ltayx/pay/f;->a:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
