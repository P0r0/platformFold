.class public final Lcom/bestpay/encrypt/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final BASELENGTH:I = 0x80

.field private static final EIGHTBIT:I = 0x8

.field private static final FOURBYTE:I = 0x4

.field private static final LOOKUPLENGTH:I = 0x40

.field private static final PAD:C = '='

.field private static final SIGN:I = -0x80

.field private static final SIXTEENBIT:I = 0x10

.field private static final TWENTYFOURBITGROUP:I = 0x18

.field private static final base64Alphabet:[B

.field private static final fDebug:Z

.field private static final lookUpBase64Alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0x80

    const/16 v7, 0x3f

    const/16 v6, 0x3e

    const/16 v5, 0x2f

    const/16 v4, 0x2b

    .line 26
    new-array v2, v8, [B

    sput-object v2, Lcom/bestpay/encrypt/Base64;->base64Alphabet:[B

    .line 27
    const/16 v2, 0x40

    new-array v2, v2, [C

    sput-object v2, Lcom/bestpay/encrypt/Base64;->lookUpBase64Alphabet:[C

    .line 30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    if-lt v0, v8, :cond_4d

    .line 33
    const/16 v0, 0x5a

    :goto_19
    const/16 v2, 0x41

    if-ge v0, v2, :cond_55

    .line 36
    const/16 v0, 0x7a

    :goto_1f
    const/16 v2, 0x61

    if-ge v0, v2, :cond_5f

    .line 40
    const/16 v0, 0x39

    :goto_25
    const/16 v2, 0x30

    if-ge v0, v2, :cond_6b

    .line 44
    sget-object v2, Lcom/bestpay/encrypt/Base64;->base64Alphabet:[B

    aput-byte v6, v2, v4

    .line 45
    sget-object v2, Lcom/bestpay/encrypt/Base64;->base64Alphabet:[B

    aput-byte v7, v2, v5

    .line 47
    const/4 v0, 0x0

    :goto_32
    const/16 v2, 0x19

    if-le v0, v2, :cond_77

    .line 51
    const/16 v0, 0x1a

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_39
    const/16 v2, 0x33

    if-le v0, v2, :cond_81

    .line 55
    const/16 v0, 0x34

    const/4 v1, 0x0

    :goto_40
    const/16 v2, 0x3d

    if-le v0, v2, :cond_8d

    .line 58
    sget-object v2, Lcom/bestpay/encrypt/Base64;->lookUpBase64Alphabet:[C

    aput-char v4, v2, v6

    .line 59
    sget-object v2, Lcom/bestpay/encrypt/Base64;->lookUpBase64Alphabet:[C

    aput-char v5, v2, v7

    .line 61
    return-void

    .line 31
    .end local v1    # "j":I
    :cond_4d
    sget-object v2, Lcom/bestpay/encrypt/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 34
    :cond_55
    sget-object v2, Lcom/bestpay/encrypt/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 33
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 37
    :cond_5f
    sget-object v2, Lcom/bestpay/encrypt/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 36
    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    .line 41
    :cond_6b
    sget-object v2, Lcom/bestpay/encrypt/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 40
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 48
    :cond_77
    sget-object v2, Lcom/bestpay/encrypt/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v0, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 52
    .restart local v1    # "j":I
    :cond_81
    sget-object v2, Lcom/bestpay/encrypt/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x61

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 56
    :cond_8d
    sget-object v2, Lcom/bestpay/encrypt/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_40
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 26
    .param p0, "encoded"    # Ljava/lang/String;

    .prologue
    .line 174
    if-nez p0, :cond_5

    .line 175
    const/16 v21, 0x0

    .line 261
    :goto_4
    return-object v21

    .line 178
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 180
    .local v8, "base64Data":[C
    invoke-static {v8}, Lcom/bestpay/encrypt/Base64;->removeWhiteSpace([C)I

    move-result v19

    .line 182
    .local v19, "len":I
    rem-int/lit8 v22, v19, 0x4

    if-eqz v22, :cond_14

    .line 183
    const/16 v21, 0x0

    goto :goto_4

    .line 186
    :cond_14
    div-int/lit8 v20, v19, 0x4

    .line 188
    .local v20, "numberQuadruple":I
    if-nez v20, :cond_21

    .line 189
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    goto :goto_4

    .line 192
    :cond_21
    const/4 v15, 0x0

    .line 193
    .local v15, "decodedData":[B
    const/4 v4, 0x0

    .local v4, "b1":B
    const/4 v5, 0x0

    .local v5, "b2":B
    const/4 v6, 0x0

    .local v6, "b3":B
    const/4 v7, 0x0

    .line 194
    .local v7, "b4":B
    const/4 v9, 0x0

    .local v9, "d1":C
    const/4 v10, 0x0

    .local v10, "d2":C
    const/4 v11, 0x0

    .local v11, "d3":C
    const/4 v12, 0x0

    .line 196
    .local v12, "d4":C
    const/16 v18, 0x0

    .line 197
    .local v18, "i":I
    const/16 v16, 0x0

    .line 198
    .local v16, "encodedIndex":I
    const/4 v13, 0x0

    .line 199
    .local v13, "dataIndex":I
    mul-int/lit8 v22, v20, 0x3

    move/from16 v0, v22

    new-array v15, v0, [B

    move v14, v13

    .end local v13    # "dataIndex":I
    .local v14, "dataIndex":I
    move/from16 v17, v16

    .line 201
    .end local v16    # "encodedIndex":I
    .local v17, "encodedIndex":I
    :goto_38
    add-int/lit8 v22, v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-lt v0, v1, :cond_58

    .line 219
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    aget-char v9, v8, v14

    invoke-static {v9}, Lcom/bestpay/encrypt/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_55

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    aget-char v10, v8, v13

    invoke-static {v10}, Lcom/bestpay/encrypt/Base64;->isData(C)Z

    move-result v22

    if-nez v22, :cond_c9

    move v13, v14

    .line 220
    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    :cond_55
    const/16 v21, 0x0

    goto :goto_4

    .line 203
    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    :cond_58
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    aget-char v9, v8, v14

    invoke-static {v9}, Lcom/bestpay/encrypt/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_81

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    aget-char v10, v8, v13

    invoke-static {v10}, Lcom/bestpay/encrypt/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_80

    .line 204
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    aget-char v11, v8, v14

    invoke-static {v11}, Lcom/bestpay/encrypt/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_81

    .line 205
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    aget-char v12, v8, v13

    invoke-static {v12}, Lcom/bestpay/encrypt/Base64;->isData(C)Z

    move-result v22

    if-nez v22, :cond_84

    :cond_80
    move v13, v14

    .line 206
    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    :cond_81
    const/16 v21, 0x0

    goto :goto_4

    .line 209
    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    :cond_84
    sget-object v22, Lcom/bestpay/encrypt/Base64;->base64Alphabet:[B

    aget-byte v4, v22, v9

    .line 210
    sget-object v22, Lcom/bestpay/encrypt/Base64;->base64Alphabet:[B

    aget-byte v5, v22, v10

    .line 211
    sget-object v22, Lcom/bestpay/encrypt/Base64;->base64Alphabet:[B

    aget-byte v6, v22, v11

    .line 212
    sget-object v22, Lcom/bestpay/encrypt/Base64;->base64Alphabet:[B

    aget-byte v7, v22, v12

    .line 214
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    .line 215
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "encodedIndex":I
    .restart local v17    # "encodedIndex":I
    and-int/lit8 v22, v5, 0xf

    shl-int/lit8 v22, v22, 0x4

    shr-int/lit8 v23, v6, 0x2

    and-int/lit8 v23, v23, 0xf

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v16

    .line 216
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v6, 0x6

    or-int v22, v22, v7

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    .line 201
    add-int/lit8 v18, v18, 0x1

    move/from16 v17, v16

    .end local v16    # "encodedIndex":I
    .restart local v17    # "encodedIndex":I
    goto/16 :goto_38

    .line 223
    :cond_c9
    sget-object v22, Lcom/bestpay/encrypt/Base64;->base64Alphabet:[B

    aget-byte v4, v22, v9

    .line 224
    sget-object v22, Lcom/bestpay/encrypt/Base64;->base64Alphabet:[B

    aget-byte v5, v22, v10

    .line 226
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    aget-char v11, v8, v14

    .line 227
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    aget-char v12, v8, v13

    .line 228
    invoke-static {v11}, Lcom/bestpay/encrypt/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_e5

    invoke-static {v12}, Lcom/bestpay/encrypt/Base64;->isData(C)Z

    move-result v22

    if-nez v22, :cond_17c

    .line 229
    :cond_e5
    invoke-static {v11}, Lcom/bestpay/encrypt/Base64;->isPad(C)Z

    move-result v22

    if-eqz v22, :cond_123

    invoke-static {v12}, Lcom/bestpay/encrypt/Base64;->isPad(C)Z

    move-result v22

    if-eqz v22, :cond_123

    .line 230
    and-int/lit8 v22, v5, 0xf

    if-eqz v22, :cond_f9

    .line 232
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 234
    :cond_f9
    mul-int/lit8 v22, v18, 0x3

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 235
    .local v21, "tmp":[B
    const/16 v22, 0x0

    const/16 v23, 0x0

    mul-int/lit8 v24, v18, 0x3

    move/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v17

    goto/16 :goto_4

    .line 238
    .end local v21    # "tmp":[B
    :cond_123
    invoke-static {v11}, Lcom/bestpay/encrypt/Base64;->isPad(C)Z

    move-result v22

    if-nez v22, :cond_178

    invoke-static {v12}, Lcom/bestpay/encrypt/Base64;->isPad(C)Z

    move-result v22

    if-eqz v22, :cond_178

    .line 239
    sget-object v22, Lcom/bestpay/encrypt/Base64;->base64Alphabet:[B

    aget-byte v6, v22, v11

    .line 240
    and-int/lit8 v22, v6, 0x3

    if-eqz v22, :cond_13b

    .line 242
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 244
    :cond_13b
    mul-int/lit8 v22, v18, 0x3

    add-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 245
    .restart local v21    # "tmp":[B
    const/16 v22, 0x0

    const/16 v23, 0x0

    mul-int/lit8 v24, v18, 0x3

    move/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v17

    .line 247
    and-int/lit8 v22, v5, 0xf

    shl-int/lit8 v22, v22, 0x4

    shr-int/lit8 v23, v6, 0x2

    and-int/lit8 v23, v23, 0xf

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v16

    goto/16 :goto_4

    .line 250
    .end local v16    # "encodedIndex":I
    .end local v21    # "tmp":[B
    .restart local v17    # "encodedIndex":I
    :cond_178
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 253
    :cond_17c
    sget-object v22, Lcom/bestpay/encrypt/Base64;->base64Alphabet:[B

    aget-byte v6, v22, v11

    .line 254
    sget-object v22, Lcom/bestpay/encrypt/Base64;->base64Alphabet:[B

    aget-byte v7, v22, v12

    .line 255
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    .line 256
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "encodedIndex":I
    .restart local v17    # "encodedIndex":I
    and-int/lit8 v22, v5, 0xf

    shl-int/lit8 v22, v22, 0x4

    shr-int/lit8 v23, v6, 0x2

    and-int/lit8 v23, v23, 0xf

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v16

    .line 257
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v6, 0x6

    or-int v22, v22, v7

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    move-object/from16 v21, v15

    .line 261
    goto/16 :goto_4
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 22
    .param p0, "binaryData"    # [B

    .prologue
    .line 83
    if-nez p0, :cond_5

    .line 84
    const/16 v19, 0x0

    .line 163
    :goto_4
    return-object v19

    .line 87
    :cond_5
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v13, v19, 0x8

    .line 88
    .local v13, "lengthDataBits":I
    if-nez v13, :cond_11

    .line 89
    const-string v19, ""

    goto :goto_4

    .line 92
    :cond_11
    rem-int/lit8 v9, v13, 0x18

    .line 93
    .local v9, "fewerThan24bits":I
    div-int/lit8 v15, v13, 0x18

    .line 94
    .local v15, "numberTriplets":I
    if-eqz v9, :cond_6b

    add-int/lit8 v14, v15, 0x1

    .line 95
    .local v14, "numberQuartet":I
    :goto_19
    const/4 v6, 0x0

    .line 97
    .local v6, "encodedData":[C
    mul-int/lit8 v19, v14, 0x4

    move/from16 v0, v19

    new-array v6, v0, [C

    .line 99
    const/4 v11, 0x0

    .local v11, "k":B
    const/4 v12, 0x0

    .local v12, "l":B
    const/4 v1, 0x0

    .local v1, "b1":B
    const/4 v2, 0x0

    .local v2, "b2":B
    const/4 v3, 0x0

    .line 101
    .local v3, "b3":B
    const/4 v7, 0x0

    .line 102
    .local v7, "encodedIndex":I
    const/4 v4, 0x0

    .line 107
    .local v4, "dataIndex":I
    const/4 v10, 0x0

    .local v10, "i":I
    move v5, v4

    .end local v4    # "dataIndex":I
    .local v5, "dataIndex":I
    move v8, v7

    .end local v7    # "encodedIndex":I
    .local v8, "encodedIndex":I
    :goto_2a
    if-lt v10, v15, :cond_6d

    .line 136
    const/16 v19, 0x8

    move/from16 v0, v19

    if-ne v9, v0, :cond_10c

    .line 137
    aget-byte v1, p0, v5

    .line 138
    and-int/lit8 v19, v1, 0x3

    move/from16 v0, v19

    int-to-byte v11, v0

    .line 143
    and-int/lit8 v19, v1, -0x80

    if-nez v19, :cond_fd

    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 144
    .local v16, "val1":B
    :goto_44
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    sget-object v19, Lcom/bestpay/encrypt/Base64;->lookUpBase64Alphabet:[C

    aget-char v19, v19, v16

    aput-char v19, v6, v8

    .line 145
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    sget-object v19, Lcom/bestpay/encrypt/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v11, 0x4

    aget-char v19, v19, v20

    aput-char v19, v6, v7

    .line 146
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    const/16 v19, 0x3d

    aput-char v19, v6, v8

    .line 147
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    const/16 v19, 0x3d

    aput-char v19, v6, v7

    move v7, v8

    .line 163
    .end local v8    # "encodedIndex":I
    .end local v16    # "val1":B
    .restart local v7    # "encodedIndex":I
    :goto_63
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    goto :goto_4

    .end local v1    # "b1":B
    .end local v2    # "b2":B
    .end local v3    # "b3":B
    .end local v5    # "dataIndex":I
    .end local v6    # "encodedData":[C
    .end local v7    # "encodedIndex":I
    .end local v10    # "i":I
    .end local v11    # "k":B
    .end local v12    # "l":B
    .end local v14    # "numberQuartet":I
    :cond_6b
    move v14, v15

    .line 94
    goto :goto_19

    .line 108
    .restart local v1    # "b1":B
    .restart local v2    # "b2":B
    .restart local v3    # "b3":B
    .restart local v5    # "dataIndex":I
    .restart local v6    # "encodedData":[C
    .restart local v8    # "encodedIndex":I
    .restart local v10    # "i":I
    .restart local v11    # "k":B
    .restart local v12    # "l":B
    .restart local v14    # "numberQuartet":I
    :cond_6d
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dataIndex":I
    .restart local v4    # "dataIndex":I
    aget-byte v1, p0, v5

    .line 109
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "dataIndex":I
    .restart local v5    # "dataIndex":I
    aget-byte v2, p0, v4

    .line 110
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dataIndex":I
    .restart local v4    # "dataIndex":I
    aget-byte v3, p0, v5

    .line 116
    and-int/lit8 v19, v2, 0xf

    move/from16 v0, v19

    int-to-byte v12, v0

    .line 117
    and-int/lit8 v19, v1, 0x3

    move/from16 v0, v19

    int-to-byte v11, v0

    .line 119
    and-int/lit8 v19, v1, -0x80

    if-nez v19, :cond_d3

    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 120
    .restart local v16    # "val1":B
    :goto_8e
    and-int/lit8 v19, v2, -0x80

    if-nez v19, :cond_e1

    shr-int/lit8 v19, v2, 0x4

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 121
    .local v17, "val2":B
    :goto_99
    and-int/lit8 v19, v3, -0x80

    if-nez v19, :cond_ef

    shr-int/lit8 v19, v3, 0x6

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v18, v0

    .line 129
    .local v18, "val3":B
    :goto_a4
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    sget-object v19, Lcom/bestpay/encrypt/Base64;->lookUpBase64Alphabet:[C

    aget-char v19, v19, v16

    aput-char v19, v6, v8

    .line 130
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    sget-object v19, Lcom/bestpay/encrypt/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v11, 0x4

    or-int v20, v20, v17

    aget-char v19, v19, v20

    aput-char v19, v6, v7

    .line 131
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    sget-object v19, Lcom/bestpay/encrypt/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v12, 0x2

    or-int v20, v20, v18

    aget-char v19, v19, v20

    aput-char v19, v6, v8

    .line 132
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    sget-object v19, Lcom/bestpay/encrypt/Base64;->lookUpBase64Alphabet:[C

    and-int/lit8 v20, v3, 0x3f

    aget-char v19, v19, v20

    aput-char v19, v6, v7

    .line 107
    add-int/lit8 v10, v10, 0x1

    move v5, v4

    .end local v4    # "dataIndex":I
    .restart local v5    # "dataIndex":I
    goto/16 :goto_2a

    .line 119
    .end local v5    # "dataIndex":I
    .end local v16    # "val1":B
    .end local v17    # "val2":B
    .end local v18    # "val3":B
    .restart local v4    # "dataIndex":I
    :cond_d3
    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    goto :goto_8e

    .line 120
    .restart local v16    # "val1":B
    :cond_e1
    shr-int/lit8 v19, v2, 0x4

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v17, v0

    goto :goto_99

    .line 121
    .restart local v17    # "val2":B
    :cond_ef
    shr-int/lit8 v19, v3, 0x6

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xfc

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v18, v0

    goto :goto_a4

    .line 143
    .end local v4    # "dataIndex":I
    .end local v16    # "val1":B
    .end local v17    # "val2":B
    .restart local v5    # "dataIndex":I
    :cond_fd
    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    goto/16 :goto_44

    .line 148
    :cond_10c
    const/16 v19, 0x10

    move/from16 v0, v19

    if-ne v9, v0, :cond_15c

    .line 149
    aget-byte v1, p0, v5

    .line 150
    add-int/lit8 v19, v5, 0x1

    aget-byte v2, p0, v19

    .line 151
    and-int/lit8 v19, v2, 0xf

    move/from16 v0, v19

    int-to-byte v12, v0

    .line 152
    and-int/lit8 v19, v1, 0x3

    move/from16 v0, v19

    int-to-byte v11, v0

    .line 154
    and-int/lit8 v19, v1, -0x80

    if-nez v19, :cond_15f

    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 155
    .restart local v16    # "val1":B
    :goto_12d
    and-int/lit8 v19, v2, -0x80

    if-nez v19, :cond_16d

    shr-int/lit8 v19, v2, 0x4

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 157
    .restart local v17    # "val2":B
    :goto_138
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    sget-object v19, Lcom/bestpay/encrypt/Base64;->lookUpBase64Alphabet:[C

    aget-char v19, v19, v16

    aput-char v19, v6, v8

    .line 158
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    sget-object v19, Lcom/bestpay/encrypt/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v11, 0x4

    or-int v20, v20, v17

    aget-char v19, v19, v20

    aput-char v19, v6, v7

    .line 159
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    sget-object v19, Lcom/bestpay/encrypt/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v12, 0x2

    aget-char v19, v19, v20

    aput-char v19, v6, v8

    .line 160
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    const/16 v19, 0x3d

    aput-char v19, v6, v7

    .end local v16    # "val1":B
    .end local v17    # "val2":B
    :cond_15c
    move v7, v8

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    goto/16 :goto_63

    .line 154
    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    :cond_15f
    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    goto :goto_12d

    .line 155
    .restart local v16    # "val1":B
    :cond_16d
    shr-int/lit8 v19, v2, 0x4

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v17, v0

    goto :goto_138
.end method

.method private static isData(C)Z
    .registers 3
    .param p0, "octect"    # C

    .prologue
    .line 72
    const/16 v0, 0x80

    if-ge p0, v0, :cond_d

    sget-object v0, Lcom/bestpay/encrypt/Base64;->base64Alphabet:[B

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

.method private static isPad(C)Z
    .registers 2
    .param p0, "octect"    # C

    .prologue
    .line 68
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isWhiteSpace(C)Z
    .registers 2
    .param p0, "octect"    # C

    .prologue
    .line 64
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

.method public static main([Ljava/lang/String;)V
    .registers 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 291
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u6211\u662f\u5f20\u9e4f\u98de\uff0c\u4f60\u597d\u554a\uff01"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/bestpay/encrypt/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/String;

    const-string v2, "5oiR5piv5byg6bmP6aOe77yM5L2g5aW95ZWK77yB"

    invoke-static {v2}, Lcom/bestpay/encrypt/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/String;

    const-string v2, "MTExMTExMQ=="

    invoke-static {v2}, Lcom/bestpay/encrypt/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method private static removeWhiteSpace([C)I
    .registers 6
    .param p0, "data"    # [C

    .prologue
    .line 271
    if-nez p0, :cond_4

    .line 272
    const/4 v3, 0x0

    .line 283
    :cond_3
    return v3

    .line 276
    :cond_4
    const/4 v2, 0x0

    .line 277
    .local v2, "newSize":I
    array-length v1, p0

    .line 278
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v3, v2

    .end local v2    # "newSize":I
    .local v3, "newSize":I
    :goto_8
    if-ge v0, v1, :cond_3

    .line 279
    aget-char v4, p0, v0

    invoke-static {v4}, Lcom/bestpay/encrypt/Base64;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 280
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "newSize":I
    .restart local v2    # "newSize":I
    aget-char v4, p0, v0

    aput-char v4, p0, v3

    .line 278
    :goto_18
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2    # "newSize":I
    .restart local v3    # "newSize":I
    goto :goto_8

    :cond_1c
    move v2, v3

    .end local v3    # "newSize":I
    .restart local v2    # "newSize":I
    goto :goto_18
.end method
