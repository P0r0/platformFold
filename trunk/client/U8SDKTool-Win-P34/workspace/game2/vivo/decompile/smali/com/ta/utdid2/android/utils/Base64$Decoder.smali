.class Lcom/ta/utdid2/android/utils/Base64$Decoder;
.super Lcom/ta/utdid2/android/utils/Base64$Coder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/android/utils/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Decoder"
.end annotation


# static fields
.field private static final DECODE:[I

.field private static final DECODE_WEBSAFE:[I


# instance fields
.field private final alphabet:[I

.field private state:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x100

    .line 192
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->DECODE:[I

    .line 214
    new-array v0, v1, [I

    fill-array-data v0, :array_216

    sput-object v0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->DECODE_WEBSAFE:[I

    return-void

    .line 192
    nop

    :array_12
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
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
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 214
    :array_216
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
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
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-direct {p0}, Lcom/ta/utdid2/android/utils/Base64$Coder;-><init>()V

    .line 249
    iput-object p2, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->output:[B

    .line 251
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_13

    sget-object v0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->DECODE:[I

    :goto_c
    iput-object v0, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->alphabet:[I

    .line 252
    iput v1, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->state:I

    .line 253
    iput v1, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->value:I

    .line 254
    return-void

    .line 251
    :cond_13
    sget-object v0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->DECODE_WEBSAFE:[I

    goto :goto_c
.end method


# virtual methods
.method public process([BIIZ)Z
    .registers 14

    .prologue
    .line 271
    iget v0, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 272
    const/4 v0, 0x0

    .line 445
    :goto_6
    return v0

    .line 275
    :cond_7
    add-int v4, p3, p2

    .line 282
    iget v2, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->state:I

    .line 283
    iget v1, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->value:I

    .line 284
    const/4 v0, 0x0

    .line 285
    iget-object v5, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->output:[B

    .line 286
    iget-object v6, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->alphabet:[I

    move v3, v2

    move v2, p2

    .line 288
    :goto_14
    if-ge v2, v4, :cond_108

    .line 303
    if-nez v3, :cond_5d

    .line 307
    :goto_18
    add-int/lit8 v7, v2, 0x4

    if-gt v7, v4, :cond_5b

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v6, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr v1, v7

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v1, v7

    add-int/lit8 v7, v2, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    or-int/2addr v1, v7

    if-ltz v1, :cond_5b

    .line 308
    add-int/lit8 v7, v0, 0x2

    int-to-byte v8, v1

    aput-byte v8, v5, v7

    .line 309
    add-int/lit8 v7, v0, 0x1

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 310
    shr-int/lit8 v7, v1, 0x10

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    .line 311
    add-int/lit8 v0, v0, 0x3

    .line 312
    add-int/lit8 v2, v2, 0x4

    goto :goto_18

    .line 314
    :cond_5b
    if-ge v2, v4, :cond_108

    .line 315
    :cond_5d
    add-int/lit8 p2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    .line 325
    packed-switch v3, :pswitch_data_142

    :cond_68
    move v2, p2

    .line 399
    goto :goto_14

    .line 327
    :pswitch_6a
    if-ltz v2, :cond_72

    .line 329
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    move v2, p2

    goto :goto_14

    .line 330
    :cond_72
    const/4 v7, -0x1

    if-eq v2, v7, :cond_68

    .line 331
    const/4 v0, 0x6

    iput v0, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->state:I

    .line 332
    const/4 v0, 0x0

    goto :goto_6

    .line 337
    :pswitch_7a
    if-ltz v2, :cond_84

    .line 338
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 339
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, p2

    goto :goto_14

    .line 340
    :cond_84
    const/4 v7, -0x1

    if-eq v2, v7, :cond_68

    .line 341
    const/4 v0, 0x6

    iput v0, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->state:I

    .line 342
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 347
    :pswitch_8d
    if-ltz v2, :cond_98

    .line 348
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 349
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, p2

    goto/16 :goto_14

    .line 350
    :cond_98
    const/4 v7, -0x2

    if-ne v2, v7, :cond_a8

    .line 353
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x4

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 354
    const/4 v0, 0x4

    move v3, v0

    move v0, v2

    move v2, p2

    goto/16 :goto_14

    .line 355
    :cond_a8
    const/4 v7, -0x1

    if-eq v2, v7, :cond_68

    .line 356
    const/4 v0, 0x6

    iput v0, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->state:I

    .line 357
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 362
    :pswitch_b1
    if-ltz v2, :cond_ce

    .line 364
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 365
    add-int/lit8 v2, v0, 0x2

    int-to-byte v3, v1

    aput-byte v3, v5, v2

    .line 366
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 367
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 368
    add-int/lit8 v0, v0, 0x3

    .line 369
    const/4 v2, 0x0

    move v3, v2

    move v2, p2

    goto/16 :goto_14

    .line 370
    :cond_ce
    const/4 v7, -0x2

    if-ne v2, v7, :cond_e4

    .line 373
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x2

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 374
    shr-int/lit8 v2, v1, 0xa

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 375
    add-int/lit8 v0, v0, 0x2

    .line 376
    const/4 v2, 0x5

    move v3, v2

    move v2, p2

    goto/16 :goto_14

    .line 377
    :cond_e4
    const/4 v7, -0x1

    if-eq v2, v7, :cond_68

    .line 378
    const/4 v0, 0x6

    iput v0, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->state:I

    .line 379
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 384
    :pswitch_ed
    const/4 v7, -0x2

    if-ne v2, v7, :cond_f6

    .line 385
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, p2

    goto/16 :goto_14

    .line 386
    :cond_f6
    const/4 v7, -0x1

    if-eq v2, v7, :cond_68

    .line 387
    const/4 v0, 0x6

    iput v0, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->state:I

    .line 388
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 393
    :pswitch_ff
    const/4 v7, -0x1

    if-eq v2, v7, :cond_68

    .line 394
    const/4 v0, 0x6

    iput v0, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->state:I

    .line 395
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_108
    move v2, v1

    .line 401
    if-nez p4, :cond_114

    .line 404
    iput v3, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->state:I

    .line 405
    iput v2, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->value:I

    .line 406
    iput v0, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->op:I

    .line 407
    const/4 v0, 0x1

    goto/16 :goto_6

    .line 413
    :cond_114
    packed-switch v3, :pswitch_data_152

    .line 443
    :goto_117
    :pswitch_117
    iput v3, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->state:I

    .line 444
    iput v0, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->op:I

    .line 445
    const/4 v0, 0x1

    goto/16 :goto_6

    .line 420
    :pswitch_11e
    const/4 v0, 0x6

    iput v0, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->state:I

    .line 421
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 425
    :pswitch_124
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    move v0, v1

    .line 426
    goto :goto_117

    .line 430
    :pswitch_12d
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v4, v2, 0xa

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    .line 431
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    goto :goto_117

    .line 435
    :pswitch_13c
    const/4 v0, 0x6

    iput v0, p0, Lcom/ta/utdid2/android/utils/Base64$Decoder;->state:I

    .line 436
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 325
    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_7a
        :pswitch_8d
        :pswitch_b1
        :pswitch_ed
        :pswitch_ff
    .end packed-switch

    .line 413
    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_117
        :pswitch_11e
        :pswitch_124
        :pswitch_12d
        :pswitch_13c
    .end packed-switch
.end method
