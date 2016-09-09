.class public Lmobisocial/crypto/Curve25519;
.super Ljava/lang/Object;
.source "Curve25519.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/crypto/Curve25519$long10;
    }
.end annotation


# static fields
.field private static final BASE_2Y:Lmobisocial/crypto/Curve25519$long10;

.field private static final BASE_R2Y:Lmobisocial/crypto/Curve25519$long10;

.field public static final KEY_SIZE:I = 0x20

.field public static final ORDER:[B

.field private static final ORDER_TIMES_8:[B

.field private static final P25:I = 0x1ffffff

.field private static final P26:I = 0x3ffffff

.field public static final PRIME:[B

.field public static final ZERO:[B


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .prologue
    .line 22
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_6e

    sput-object v0, Lmobisocial/crypto/Curve25519;->ZERO:[B

    .line 25
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_82

    sput-object v0, Lmobisocial/crypto/Curve25519;->PRIME:[B

    .line 28
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_96

    sput-object v0, Lmobisocial/crypto/Curve25519;->ORDER:[B

    .line 865
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_aa

    sput-object v0, Lmobisocial/crypto/Curve25519;->ORDER_TIMES_8:[B

    .line 868
    new-instance v1, Lmobisocial/crypto/Curve25519$long10;

    const-wide/32 v2, 0x262583b

    const-wide/32 v4, 0x11d2ec0

    const-wide/32 v6, 0x3937585

    const-wide/32 v8, 0x192839

    const-wide/32 v10, 0x36e1594

    const-wide/32 v12, 0x16e5d66

    const-wide/32 v14, 0x122d388

    const-wide/32 v16, 0x52c7f8

    const-wide/32 v18, 0x3c8ebef

    const-wide/32 v20, 0xfa8f32

    invoke-direct/range {v1 .. v21}, Lmobisocial/crypto/Curve25519$long10;-><init>(JJJJJJJJJJ)V

    sput-object v1, Lmobisocial/crypto/Curve25519;->BASE_2Y:Lmobisocial/crypto/Curve25519$long10;

    .line 870
    new-instance v1, Lmobisocial/crypto/Curve25519$long10;

    const-wide/16 v2, 0x1670

    const-wide/32 v4, 0x7c8650

    const-wide/32 v6, 0x491a6d

    const-wide/32 v8, 0xd24229

    const-wide/32 v10, 0x221359e

    const-wide/32 v12, 0xbf5d19

    const-wide/32 v14, 0x2ed3a0b

    const-wide/32 v16, 0x1ca7caf

    const-wide/32 v18, 0x2637055

    const-wide/32 v20, 0x5f00d4

    invoke-direct/range {v1 .. v21}, Lmobisocial/crypto/Curve25519$long10;-><init>(JJJJJJJJJJ)V

    sput-object v1, Lmobisocial/crypto/Curve25519;->BASE_R2Y:Lmobisocial/crypto/Curve25519$long10;

    return-void

    .line 22
    :array_6e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 25
    :array_82
    .array-data 1
        -0x13t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x7ft
    .end array-data

    .line 28
    :array_96
    .array-data 1
        -0x13t
        -0x2dt
        -0xbt
        0x5ct
        0x1at
        0x63t
        0x12t
        0x58t
        -0x2at
        -0x64t
        -0x9t
        -0x5et
        -0x22t
        -0x7t
        -0x22t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
    .end array-data

    .line 865
    :array_aa
    .array-data 1
        0x68t
        -0x61t
        -0x52t
        -0x19t
        -0x2et
        0x18t
        -0x6dt
        -0x40t
        -0x4et
        -0x1at
        -0x44t
        0x17t
        -0xbt
        -0x32t
        -0x9t
        -0x5at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x80t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    return-void
.end method

.method private static final add(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V
    .registers 7
    .param p0, "xy"    # Lmobisocial/crypto/Curve25519$long10;
    .param p1, "x"    # Lmobisocial/crypto/Curve25519$long10;
    .param p2, "y"    # Lmobisocial/crypto/Curve25519$long10;

    .prologue
    .line 469
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_0:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_0:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .line 470
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_1:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_1:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_1:J

    .line 471
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_2:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_2:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_2:J

    .line 472
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_3:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_3:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_3:J

    .line 473
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_4:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_4:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_4:J

    .line 474
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_5:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_5:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_5:J

    .line 475
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_6:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_6:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_6:J

    .line 476
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_7:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_7:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_7:J

    .line 477
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_8:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_8:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_8:J

    .line 478
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_9:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_9:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    .line 479
    return-void
.end method

.method public static final clamp([B)V
    .registers 3
    .param p0, "k"    # [B

    .prologue
    const/16 v1, 0x1f

    .line 36
    aget-byte v0, p0, v1

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    .line 37
    aget-byte v0, p0, v1

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    .line 38
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xf8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 39
    return-void
.end method

.method private static final core([B[B[B[B)V
    .registers 38
    .param p0, "Px"    # [B
    .param p1, "s"    # [B
    .param p2, "k"    # [B
    .param p3, "Gx"    # [B

    .prologue
    .line 783
    new-instance v10, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v10}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    .local v10, "dx":Lmobisocial/crypto/Curve25519$long10;
    new-instance v4, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v4}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    .local v4, "t1":Lmobisocial/crypto/Curve25519$long10;
    new-instance v5, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v5}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    .local v5, "t2":Lmobisocial/crypto/Curve25519$long10;
    new-instance v6, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v6}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    .local v6, "t3":Lmobisocial/crypto/Curve25519$long10;
    new-instance v7, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v7}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    .line 784
    .local v7, "t4":Lmobisocial/crypto/Curve25519$long10;
    const/4 v11, 0x2

    new-array v0, v11, [Lmobisocial/crypto/Curve25519$long10;

    move-object/from16 v32, v0

    const/4 v11, 0x0

    new-instance v12, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v12}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v12, v32, v11

    const/4 v11, 0x1

    new-instance v12, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v12}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v12, v32, v11

    .local v32, "x":[Lmobisocial/crypto/Curve25519$long10;
    const/4 v11, 0x2

    new-array v0, v11, [Lmobisocial/crypto/Curve25519$long10;

    move-object/from16 v33, v0

    const/4 v11, 0x0

    new-instance v12, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v12}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v12, v33, v11

    const/4 v11, 0x1

    new-instance v12, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v12}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v12, v33, v11

    .line 787
    .local v33, "z":[Lmobisocial/crypto/Curve25519$long10;
    if-eqz p3, :cond_a8

    .line 788
    move-object/from16 v0, p3

    invoke-static {v10, v0}, Lmobisocial/crypto/Curve25519;->unpack(Lmobisocial/crypto/Curve25519$long10;[B)V

    .line 792
    :goto_4a
    const/4 v11, 0x0

    aget-object v11, v32, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lmobisocial/crypto/Curve25519;->set(Lmobisocial/crypto/Curve25519$long10;I)V

    .line 793
    const/4 v11, 0x0

    aget-object v11, v33, v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lmobisocial/crypto/Curve25519;->set(Lmobisocial/crypto/Curve25519$long10;I)V

    .line 795
    const/4 v11, 0x1

    aget-object v11, v32, v11

    invoke-static {v11, v10}, Lmobisocial/crypto/Curve25519;->cpy(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 796
    const/4 v11, 0x1

    aget-object v11, v33, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lmobisocial/crypto/Curve25519;->set(Lmobisocial/crypto/Curve25519$long10;I)V

    .line 797
    const/16 v25, 0x20

    .local v25, "i":I
    move/from16 v26, v25

    .end local v25    # "i":I
    .local v26, "i":I
    :goto_69
    add-int/lit8 v25, v26, -0x1

    .end local v26    # "i":I
    .restart local v25    # "i":I
    if-eqz v26, :cond_ae

    .line 798
    if-nez v25, :cond_71

    .line 799
    const/16 v25, 0x0

    .line 801
    :cond_71
    const/16 v27, 0x8

    .local v27, "j":I
    move/from16 v28, v27

    .end local v27    # "j":I
    .local v28, "j":I
    :goto_75
    add-int/lit8 v27, v28, -0x1

    .end local v28    # "j":I
    .restart local v27    # "j":I
    if-eqz v28, :cond_158

    .line 803
    aget-byte v11, p2, v25

    and-int/lit16 v11, v11, 0xff

    shr-int v11, v11, v27

    and-int/lit8 v24, v11, 0x1

    .line 804
    .local v24, "bit1":I
    aget-byte v11, p2, v25

    and-int/lit16 v11, v11, 0xff

    xor-int/lit8 v11, v11, -0x1

    shr-int v11, v11, v27

    and-int/lit8 v23, v11, 0x1

    .line 805
    .local v23, "bit0":I
    aget-object v8, v32, v23

    .line 806
    .local v8, "ax":Lmobisocial/crypto/Curve25519$long10;
    aget-object v9, v33, v23

    .line 807
    .local v9, "az":Lmobisocial/crypto/Curve25519$long10;
    aget-object v15, v32, v24

    .line 808
    .local v15, "bx":Lmobisocial/crypto/Curve25519$long10;
    aget-object v16, v33, v24

    .line 811
    .local v16, "bz":Lmobisocial/crypto/Curve25519$long10;
    invoke-static {v4, v5, v8, v9}, Lmobisocial/crypto/Curve25519;->mont_prep(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 812
    move-object/from16 v0, v16

    invoke-static {v6, v7, v15, v0}, Lmobisocial/crypto/Curve25519;->mont_prep(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 813
    invoke-static/range {v4 .. v10}, Lmobisocial/crypto/Curve25519;->mont_add(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 814
    invoke-static/range {v11 .. v16}, Lmobisocial/crypto/Curve25519;->mont_dbl(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    move/from16 v28, v27

    .line 815
    .end local v27    # "j":I
    .restart local v28    # "j":I
    goto :goto_75

    .line 790
    .end local v8    # "ax":Lmobisocial/crypto/Curve25519$long10;
    .end local v9    # "az":Lmobisocial/crypto/Curve25519$long10;
    .end local v15    # "bx":Lmobisocial/crypto/Curve25519$long10;
    .end local v16    # "bz":Lmobisocial/crypto/Curve25519$long10;
    .end local v23    # "bit0":I
    .end local v24    # "bit1":I
    .end local v25    # "i":I
    .end local v28    # "j":I
    :cond_a8
    const/16 v11, 0x9

    invoke-static {v10, v11}, Lmobisocial/crypto/Curve25519;->set(Lmobisocial/crypto/Curve25519$long10;I)V

    goto :goto_4a

    .line 817
    .restart local v25    # "i":I
    :cond_ae
    const/4 v11, 0x0

    aget-object v11, v33, v11

    const/4 v12, 0x0

    invoke-static {v4, v11, v12}, Lmobisocial/crypto/Curve25519;->recip(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;I)V

    .line 818
    const/4 v11, 0x0

    aget-object v11, v32, v11

    invoke-static {v10, v11, v4}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 819
    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lmobisocial/crypto/Curve25519;->pack(Lmobisocial/crypto/Curve25519$long10;[B)V

    .line 821
    if-eqz p1, :cond_147

    .line 822
    invoke-static {v5, v4, v10}, Lmobisocial/crypto/Curve25519;->x_to_y2(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 824
    const/4 v11, 0x1

    aget-object v11, v33, v11

    const/4 v12, 0x0

    invoke-static {v6, v11, v12}, Lmobisocial/crypto/Curve25519;->recip(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;I)V

    .line 826
    const/4 v11, 0x1

    aget-object v11, v32, v11

    invoke-static {v5, v11, v6}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 828
    invoke-static {v5, v5, v10}, Lmobisocial/crypto/Curve25519;->add(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 830
    iget-wide v12, v5, Lmobisocial/crypto/Curve25519$long10;->_0:J

    const-wide/32 v18, 0x76d0f

    add-long v12, v12, v18

    iput-wide v12, v5, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .line 832
    iget-wide v12, v10, Lmobisocial/crypto/Curve25519$long10;->_0:J

    const-wide/16 v18, 0x9

    sub-long v12, v12, v18

    iput-wide v12, v10, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .line 834
    invoke-static {v6, v10}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 836
    invoke-static {v10, v5, v6}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 838
    invoke-static {v10, v10, v4}, Lmobisocial/crypto/Curve25519;->sub(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 840
    iget-wide v12, v10, Lmobisocial/crypto/Curve25519$long10;->_0:J

    const-wide/32 v18, 0x25981c8

    sub-long v12, v12, v18

    iput-wide v12, v10, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .line 842
    sget-object v11, Lmobisocial/crypto/Curve25519;->BASE_R2Y:Lmobisocial/crypto/Curve25519$long10;

    invoke-static {v4, v10, v11}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 844
    invoke-static {v4}, Lmobisocial/crypto/Curve25519;->is_negative(Lmobisocial/crypto/Curve25519$long10;)I

    move-result v11

    if-eqz v11, :cond_148

    .line 846
    invoke-static/range {p1 .. p2}, Lmobisocial/crypto/Curve25519;->cpy32([B[B)V

    .line 854
    :goto_106
    const/16 v11, 0x20

    new-array v0, v11, [B

    move-object/from16 v29, v0

    .line 855
    .local v29, "temp1":[B
    const/16 v11, 0x40

    new-array v0, v11, [B

    move-object/from16 v30, v0

    .line 856
    .local v30, "temp2":[B
    const/16 v11, 0x40

    new-array v0, v11, [B

    move-object/from16 v31, v0

    .line 857
    .local v31, "temp3":[B
    sget-object v11, Lmobisocial/crypto/Curve25519;->ORDER:[B

    move-object/from16 v0, v29

    invoke-static {v0, v11}, Lmobisocial/crypto/Curve25519;->cpy32([B[B)V

    .line 858
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lmobisocial/crypto/Curve25519;->egcd32([B[B[B[B)[B

    move-result-object v11

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lmobisocial/crypto/Curve25519;->cpy32([B[B)V

    .line 859
    const/16 v11, 0x1f

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_147

    .line 860
    const/16 v19, 0x0

    sget-object v20, Lmobisocial/crypto/Curve25519;->ORDER:[B

    const/16 v21, 0x20

    const/16 v22, 0x1

    move-object/from16 v17, p1

    move-object/from16 v18, p1

    invoke-static/range {v17 .. v22}, Lmobisocial/crypto/Curve25519;->mula_small([B[BI[BII)I

    .line 862
    .end local v29    # "temp1":[B
    .end local v30    # "temp2":[B
    .end local v31    # "temp3":[B
    :cond_147
    return-void

    .line 849
    :cond_148
    sget-object v18, Lmobisocial/crypto/Curve25519;->ORDER_TIMES_8:[B

    const/16 v19, 0x0

    const/16 v21, 0x20

    const/16 v22, -0x1

    move-object/from16 v17, p1

    move-object/from16 v20, p2

    invoke-static/range {v17 .. v22}, Lmobisocial/crypto/Curve25519;->mula_small([B[BI[BII)I

    goto :goto_106

    .restart local v27    # "j":I
    :cond_158
    move/from16 v26, v25

    .end local v25    # "i":I
    .restart local v26    # "i":I
    goto/16 :goto_69
.end method

.method private static final cpy(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V
    .registers 4
    .param p0, "out"    # Lmobisocial/crypto/Curve25519$long10;
    .param p1, "in"    # Lmobisocial/crypto/Curve25519$long10;

    .prologue
    .line 439
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_0:J

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .line 440
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_1:J

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_1:J

    .line 441
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_2:J

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_2:J

    .line 442
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_3:J

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_3:J

    .line 443
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_4:J

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_4:J

    .line 444
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_5:J

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_5:J

    .line 445
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_6:J

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_6:J

    .line 446
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_7:J

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_7:J

    .line 447
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_8:J

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_8:J

    .line 448
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_9:J

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    .line 449
    return-void
.end method

.method private static final cpy32([B[B)V
    .registers 4
    .param p0, "d"    # [B
    .param p1, "s"    # [B

    .prologue
    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x20

    if-ge v0, v1, :cond_c

    aget-byte v1, p1, v0

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    :cond_c
    return-void
.end method

.method public static final curve([B[B[B)V
    .registers 4
    .param p0, "Z"    # [B
    .param p1, "k"    # [B
    .param p2, "P"    # [B

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lmobisocial/crypto/Curve25519;->core([B[B[B[B)V

    .line 61
    return-void
.end method

.method private static final divmod([B[BI[BI)V
    .registers 15
    .param p0, "q"    # [B
    .param p1, "r"    # [B
    .param p2, "n"    # I
    .param p3, "d"    # [B
    .param p4, "t"    # I

    .prologue
    .line 302
    const/4 v8, 0x0

    .line 303
    .local v8, "rn":I
    add-int/lit8 v0, p4, -0x1

    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v6, v0, 0x8

    .line 304
    .local v6, "dt":I
    const/4 v0, 0x1

    if-le p4, v0, :cond_60

    .line 305
    add-int/lit8 v0, p4, -0x2

    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v6, v0

    move v7, p2

    .line 307
    .end local p2    # "n":I
    .local v7, "n":I
    :goto_14
    add-int/lit8 p2, v7, -0x1

    .end local v7    # "n":I
    .restart local p2    # "n":I
    if-lt v7, p4, :cond_5a

    .line 308
    shl-int/lit8 v0, v8, 0x10

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int v9, v0, v1

    .line 309
    .local v9, "z":I
    if-lez p2, :cond_2b

    .line 310
    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v9, v0

    .line 312
    :cond_2b
    div-int/2addr v9, v6

    .line 313
    sub-int v0, p2, p4

    add-int/lit8 v2, v0, 0x1

    neg-int v5, v9

    move-object v0, p1

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lmobisocial/crypto/Curve25519;->mula_small([B[BI[BII)I

    move-result v0

    add-int/2addr v8, v0

    .line 314
    sub-int v0, p2, p4

    add-int/lit8 v0, v0, 0x1

    add-int v1, v9, v8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 316
    sub-int v0, p2, p4

    add-int/lit8 v2, v0, 0x1

    neg-int v5, v8

    move-object v0, p1

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lmobisocial/crypto/Curve25519;->mula_small([B[BI[BII)I

    .line 317
    aget-byte v0, p1, p2

    and-int/lit16 v8, v0, 0xff

    .line 318
    const/4 v0, 0x0

    aput-byte v0, p1, p2

    move v7, p2

    .line 319
    .end local p2    # "n":I
    .restart local v7    # "n":I
    goto :goto_14

    .line 320
    .end local v7    # "n":I
    .end local v9    # "z":I
    .restart local p2    # "n":I
    :cond_5a
    add-int/lit8 v0, p4, -0x1

    int-to-byte v1, v8

    aput-byte v1, p1, v0

    .line 321
    return-void

    :cond_60
    move v7, p2

    .end local p2    # "n":I
    .restart local v7    # "n":I
    goto :goto_14
.end method

.method private static final egcd32([B[B[B[B)[B
    .registers 13
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .param p2, "a"    # [B
    .param p3, "b"    # [B

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/16 v6, 0x20

    .line 334
    const/16 v1, 0x20

    .line 335
    .local v1, "bn":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v6, :cond_10

    aput-byte v8, p1, v2

    aput-byte v8, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 336
    :cond_10
    const/4 v5, 0x1

    aput-byte v5, p0, v8

    .line 337
    invoke-static {p2, v6}, Lmobisocial/crypto/Curve25519;->numsize([BI)I

    move-result v0

    .line 338
    .local v0, "an":I
    if-nez v0, :cond_1a

    .line 353
    .end local p1    # "y":[B
    :cond_19
    :goto_19
    return-object p1

    .line 341
    .restart local p1    # "y":[B
    :cond_1a
    new-array v4, v6, [B

    .line 343
    .local v4, "temp":[B
    :goto_1c
    sub-int v5, v1, v0

    add-int/lit8 v3, v5, 0x1

    .line 344
    .local v3, "qn":I
    invoke-static {v4, p3, v1, p2, v0}, Lmobisocial/crypto/Curve25519;->divmod([B[BI[BI)V

    .line 345
    invoke-static {p3, v1}, Lmobisocial/crypto/Curve25519;->numsize([BI)I

    move-result v1

    .line 346
    if-nez v1, :cond_2b

    move-object p1, p0

    .line 347
    goto :goto_19

    .line 348
    :cond_2b
    invoke-static {p1, p0, v4, v3, v7}, Lmobisocial/crypto/Curve25519;->mula32([B[B[BII)I

    .line 349
    sub-int v5, v0, v1

    add-int/lit8 v3, v5, 0x1

    .line 350
    invoke-static {v4, p2, v0, p3, v1}, Lmobisocial/crypto/Curve25519;->divmod([B[BI[BI)V

    .line 351
    invoke-static {p2, v0}, Lmobisocial/crypto/Curve25519;->numsize([BI)I

    move-result v0

    .line 352
    if-eqz v0, :cond_19

    .line 354
    invoke-static {p0, p1, v4, v3, v7}, Lmobisocial/crypto/Curve25519;->mula32([B[B[BII)I

    goto :goto_1c
.end method

.method private static final is_negative(Lmobisocial/crypto/Curve25519$long10;)I
    .registers 7
    .param p0, "x"    # Lmobisocial/crypto/Curve25519$long10;

    .prologue
    .line 710
    invoke-static {p0}, Lmobisocial/crypto/Curve25519;->is_overflow(Lmobisocial/crypto/Curve25519$long10;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_18

    :cond_e
    const/4 v0, 0x1

    :goto_f
    int-to-long v0, v0

    iget-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_0:J

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static final is_overflow(Lmobisocial/crypto/Curve25519$long10;)Z
    .registers 7
    .param p0, "x"    # Lmobisocial/crypto/Curve25519$long10;

    .prologue
    const-wide/32 v4, 0x1ffffff

    .line 381
    iget-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_0:J

    const-wide/32 v2, 0x3ffffec

    cmp-long v0, v0, v2

    if-lez v0, :cond_30

    iget-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_1:J

    iget-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_3:J

    and-long/2addr v0, v2

    iget-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_5:J

    and-long/2addr v0, v2

    iget-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_7:J

    and-long/2addr v0, v2

    iget-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_30

    iget-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_2:J

    iget-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_4:J

    and-long/2addr v0, v2

    iget-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_6:J

    and-long/2addr v0, v2

    iget-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_8:J

    and-long/2addr v0, v2

    const-wide/32 v2, 0x3ffffff

    cmp-long v0, v0, v2

    if-eqz v0, :cond_36

    :cond_30
    iget-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_38

    :cond_36
    const/4 v0, 0x1

    :goto_37
    return v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public static final keygen([B[B[B)V
    .registers 4
    .param p0, "P"    # [B
    .param p1, "s"    # [B
    .param p2, "k"    # [B

    .prologue
    .line 50
    invoke-static {p2}, Lmobisocial/crypto/Curve25519;->clamp([B)V

    .line 51
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmobisocial/crypto/Curve25519;->core([B[B[B[B)V

    .line 52
    return-void
.end method

.method private static final mont_add(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V
    .registers 7
    .param p0, "t1"    # Lmobisocial/crypto/Curve25519$long10;
    .param p1, "t2"    # Lmobisocial/crypto/Curve25519$long10;
    .param p2, "t3"    # Lmobisocial/crypto/Curve25519$long10;
    .param p3, "t4"    # Lmobisocial/crypto/Curve25519$long10;
    .param p4, "ax"    # Lmobisocial/crypto/Curve25519$long10;
    .param p5, "az"    # Lmobisocial/crypto/Curve25519$long10;
    .param p6, "dx"    # Lmobisocial/crypto/Curve25519$long10;

    .prologue
    .line 748
    invoke-static {p4, p1, p2}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 749
    invoke-static {p5, p0, p3}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 750
    invoke-static {p0, p4, p5}, Lmobisocial/crypto/Curve25519;->add(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 751
    invoke-static {p1, p4, p5}, Lmobisocial/crypto/Curve25519;->sub(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 752
    invoke-static {p4, p0}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 753
    invoke-static {p0, p1}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 754
    invoke-static {p5, p0, p6}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 755
    return-void
.end method

.method private static final mont_dbl(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V
    .registers 8
    .param p0, "t1"    # Lmobisocial/crypto/Curve25519$long10;
    .param p1, "t2"    # Lmobisocial/crypto/Curve25519$long10;
    .param p2, "t3"    # Lmobisocial/crypto/Curve25519$long10;
    .param p3, "t4"    # Lmobisocial/crypto/Curve25519$long10;
    .param p4, "bx"    # Lmobisocial/crypto/Curve25519$long10;
    .param p5, "bz"    # Lmobisocial/crypto/Curve25519$long10;

    .prologue
    .line 762
    invoke-static {p0, p2}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 763
    invoke-static {p1, p3}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 764
    invoke-static {p4, p0, p1}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 765
    invoke-static {p1, p0, p1}, Lmobisocial/crypto/Curve25519;->sub(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 766
    const-wide/32 v0, 0x1db41

    invoke-static {p5, p1, v0, v1}, Lmobisocial/crypto/Curve25519;->mul_small(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;J)Lmobisocial/crypto/Curve25519$long10;

    .line 767
    invoke-static {p0, p0, p5}, Lmobisocial/crypto/Curve25519;->add(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 768
    invoke-static {p5, p0, p1}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 769
    return-void
.end method

.method private static final mont_prep(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V
    .registers 4
    .param p0, "t1"    # Lmobisocial/crypto/Curve25519$long10;
    .param p1, "t2"    # Lmobisocial/crypto/Curve25519$long10;
    .param p2, "ax"    # Lmobisocial/crypto/Curve25519$long10;
    .param p3, "az"    # Lmobisocial/crypto/Curve25519$long10;

    .prologue
    .line 737
    invoke-static {p0, p2, p3}, Lmobisocial/crypto/Curve25519;->add(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 738
    invoke-static {p1, p2, p3}, Lmobisocial/crypto/Curve25519;->sub(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 739
    return-void
.end method

.method private static final mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;
    .registers 57
    .param p0, "xy"    # Lmobisocial/crypto/Curve25519$long10;
    .param p1, "x"    # Lmobisocial/crypto/Curve25519$long10;
    .param p2, "y"    # Lmobisocial/crypto/Curve25519$long10;

    .prologue
    .line 532
    move-object/from16 v0, p1

    iget-wide v6, v0, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .local v6, "x_0":J
    move-object/from16 v0, p1

    iget-wide v8, v0, Lmobisocial/crypto/Curve25519$long10;->_1:J

    .local v8, "x_1":J
    move-object/from16 v0, p1

    iget-wide v10, v0, Lmobisocial/crypto/Curve25519$long10;->_2:J

    .local v10, "x_2":J
    move-object/from16 v0, p1

    iget-wide v12, v0, Lmobisocial/crypto/Curve25519$long10;->_3:J

    .local v12, "x_3":J
    move-object/from16 v0, p1

    iget-wide v14, v0, Lmobisocial/crypto/Curve25519$long10;->_4:J

    .local v14, "x_4":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_5:J

    move-wide/from16 v16, v0

    .local v16, "x_5":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_6:J

    move-wide/from16 v18, v0

    .local v18, "x_6":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_7:J

    move-wide/from16 v20, v0

    .local v20, "x_7":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_8:J

    move-wide/from16 v22, v0

    .local v22, "x_8":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    move-wide/from16 v24, v0

    .line 533
    .local v24, "x_9":J
    move-object/from16 v0, p2

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_0:J

    move-wide/from16 v26, v0

    .local v26, "y_0":J
    move-object/from16 v0, p2

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_1:J

    move-wide/from16 v28, v0

    .local v28, "y_1":J
    move-object/from16 v0, p2

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_2:J

    move-wide/from16 v30, v0

    .local v30, "y_2":J
    move-object/from16 v0, p2

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_3:J

    move-wide/from16 v32, v0

    .local v32, "y_3":J
    move-object/from16 v0, p2

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_4:J

    move-wide/from16 v34, v0

    .local v34, "y_4":J
    move-object/from16 v0, p2

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_5:J

    move-wide/from16 v36, v0

    .local v36, "y_5":J
    move-object/from16 v0, p2

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_6:J

    move-wide/from16 v38, v0

    .local v38, "y_6":J
    move-object/from16 v0, p2

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_7:J

    move-wide/from16 v40, v0

    .local v40, "y_7":J
    move-object/from16 v0, p2

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_8:J

    move-wide/from16 v42, v0

    .local v42, "y_8":J
    move-object/from16 v0, p2

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    move-wide/from16 v44, v0

    .line 535
    .local v44, "y_9":J
    mul-long v46, v6, v42

    mul-long v48, v10, v38

    add-long v46, v46, v48

    mul-long v48, v14, v34

    add-long v46, v46, v48

    mul-long v48, v18, v30

    add-long v46, v46, v48

    mul-long v48, v22, v26

    add-long v46, v46, v48

    const-wide/16 v48, 0x2

    mul-long v50, v8, v40

    mul-long v52, v12, v36

    add-long v50, v50, v52

    mul-long v52, v16, v32

    add-long v50, v50, v52

    mul-long v52, v20, v28

    add-long v50, v50, v52

    mul-long v48, v48, v50

    add-long v46, v46, v48

    const-wide/16 v48, 0x26

    mul-long v50, v24, v44

    mul-long v48, v48, v50

    add-long v4, v46, v48

    .line 536
    .local v4, "t":J
    const-wide/32 v46, 0x3ffffff

    and-long v46, v46, v4

    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_8:J

    .line 537
    const/16 v46, 0x1a

    shr-long v46, v4, v46

    mul-long v48, v6, v44

    add-long v46, v46, v48

    mul-long v48, v8, v42

    add-long v46, v46, v48

    mul-long v48, v10, v40

    add-long v46, v46, v48

    mul-long v48, v12, v38

    add-long v46, v46, v48

    mul-long v48, v14, v36

    add-long v46, v46, v48

    mul-long v48, v16, v34

    add-long v46, v46, v48

    mul-long v48, v18, v32

    add-long v46, v46, v48

    mul-long v48, v20, v30

    add-long v46, v46, v48

    mul-long v48, v22, v28

    add-long v46, v46, v48

    mul-long v48, v24, v26

    add-long v4, v46, v48

    .line 538
    const-wide/32 v46, 0x1ffffff

    and-long v46, v46, v4

    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_9:J

    .line 539
    mul-long v46, v6, v26

    const-wide/16 v48, 0x13

    const/16 v50, 0x19

    shr-long v50, v4, v50

    mul-long v52, v10, v42

    add-long v50, v50, v52

    mul-long v52, v14, v38

    add-long v50, v50, v52

    mul-long v52, v18, v34

    add-long v50, v50, v52

    mul-long v52, v22, v30

    add-long v50, v50, v52

    mul-long v48, v48, v50

    add-long v46, v46, v48

    const-wide/16 v48, 0x26

    mul-long v50, v8, v44

    mul-long v52, v12, v40

    add-long v50, v50, v52

    mul-long v52, v16, v36

    add-long v50, v50, v52

    mul-long v52, v20, v32

    add-long v50, v50, v52

    mul-long v52, v24, v28

    add-long v50, v50, v52

    mul-long v48, v48, v50

    add-long v4, v46, v48

    .line 540
    const-wide/32 v46, 0x3ffffff

    and-long v46, v46, v4

    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .line 541
    const/16 v46, 0x1a

    shr-long v46, v4, v46

    mul-long v48, v6, v28

    add-long v46, v46, v48

    mul-long v48, v8, v26

    add-long v46, v46, v48

    const-wide/16 v48, 0x13

    mul-long v50, v10, v44

    mul-long v52, v12, v42

    add-long v50, v50, v52

    mul-long v52, v14, v40

    add-long v50, v50, v52

    mul-long v52, v16, v38

    add-long v50, v50, v52

    mul-long v52, v18, v36

    add-long v50, v50, v52

    mul-long v52, v20, v34

    add-long v50, v50, v52

    mul-long v52, v22, v32

    add-long v50, v50, v52

    mul-long v52, v24, v30

    add-long v50, v50, v52

    mul-long v48, v48, v50

    add-long v4, v46, v48

    .line 542
    const-wide/32 v46, 0x1ffffff

    and-long v46, v46, v4

    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_1:J

    .line 543
    const/16 v46, 0x19

    shr-long v46, v4, v46

    mul-long v48, v6, v30

    add-long v46, v46, v48

    mul-long v48, v10, v26

    add-long v46, v46, v48

    const-wide/16 v48, 0x13

    mul-long v50, v14, v42

    mul-long v52, v18, v38

    add-long v50, v50, v52

    mul-long v52, v22, v34

    add-long v50, v50, v52

    mul-long v48, v48, v50

    add-long v46, v46, v48

    const-wide/16 v48, 0x2

    mul-long v50, v8, v28

    mul-long v48, v48, v50

    add-long v46, v46, v48

    const-wide/16 v48, 0x26

    mul-long v50, v12, v44

    mul-long v52, v16, v40

    add-long v50, v50, v52

    mul-long v52, v20, v36

    add-long v50, v50, v52

    mul-long v52, v24, v32

    add-long v50, v50, v52

    mul-long v48, v48, v50

    add-long v4, v46, v48

    .line 544
    const-wide/32 v46, 0x3ffffff

    and-long v46, v46, v4

    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_2:J

    .line 545
    const/16 v46, 0x1a

    shr-long v46, v4, v46

    mul-long v48, v6, v32

    add-long v46, v46, v48

    mul-long v48, v8, v30

    add-long v46, v46, v48

    mul-long v48, v10, v28

    add-long v46, v46, v48

    mul-long v48, v12, v26

    add-long v46, v46, v48

    const-wide/16 v48, 0x13

    mul-long v50, v14, v44

    mul-long v52, v16, v42

    add-long v50, v50, v52

    mul-long v52, v18, v40

    add-long v50, v50, v52

    mul-long v52, v20, v38

    add-long v50, v50, v52

    mul-long v52, v22, v36

    add-long v50, v50, v52

    mul-long v52, v24, v34

    add-long v50, v50, v52

    mul-long v48, v48, v50

    add-long v4, v46, v48

    .line 546
    const-wide/32 v46, 0x1ffffff

    and-long v46, v46, v4

    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_3:J

    .line 547
    const/16 v46, 0x19

    shr-long v46, v4, v46

    mul-long v48, v6, v34

    add-long v46, v46, v48

    mul-long v48, v10, v30

    add-long v46, v46, v48

    mul-long v48, v14, v26

    add-long v46, v46, v48

    const-wide/16 v48, 0x13

    mul-long v50, v18, v42

    mul-long v52, v22, v38

    add-long v50, v50, v52

    mul-long v48, v48, v50

    add-long v46, v46, v48

    const-wide/16 v48, 0x2

    mul-long v50, v8, v32

    mul-long v52, v12, v28

    add-long v50, v50, v52

    mul-long v48, v48, v50

    add-long v46, v46, v48

    const-wide/16 v48, 0x26

    mul-long v50, v16, v44

    mul-long v52, v20, v40

    add-long v50, v50, v52

    mul-long v52, v24, v36

    add-long v50, v50, v52

    mul-long v48, v48, v50

    add-long v4, v46, v48

    .line 548
    const-wide/32 v46, 0x3ffffff

    and-long v46, v46, v4

    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_4:J

    .line 549
    const/16 v46, 0x1a

    shr-long v46, v4, v46

    mul-long v48, v6, v36

    add-long v46, v46, v48

    mul-long v48, v8, v34

    add-long v46, v46, v48

    mul-long v48, v10, v32

    add-long v46, v46, v48

    mul-long v48, v12, v30

    add-long v46, v46, v48

    mul-long v48, v14, v28

    add-long v46, v46, v48

    mul-long v48, v16, v26

    add-long v46, v46, v48

    const-wide/16 v48, 0x13

    mul-long v50, v18, v44

    mul-long v52, v20, v42

    add-long v50, v50, v52

    mul-long v52, v22, v40

    add-long v50, v50, v52

    mul-long v52, v24, v38

    add-long v50, v50, v52

    mul-long v48, v48, v50

    add-long v4, v46, v48

    .line 550
    const-wide/32 v46, 0x1ffffff

    and-long v46, v46, v4

    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_5:J

    .line 551
    const/16 v46, 0x19

    shr-long v46, v4, v46

    mul-long v48, v6, v38

    add-long v46, v46, v48

    mul-long v48, v10, v34

    add-long v46, v46, v48

    mul-long v48, v14, v30

    add-long v46, v46, v48

    mul-long v48, v18, v26

    add-long v46, v46, v48

    const-wide/16 v48, 0x13

    mul-long v50, v22, v42

    mul-long v48, v48, v50

    add-long v46, v46, v48

    const-wide/16 v48, 0x2

    mul-long v50, v8, v36

    mul-long v52, v12, v32

    add-long v50, v50, v52

    mul-long v52, v16, v28

    add-long v50, v50, v52

    mul-long v48, v48, v50

    add-long v46, v46, v48

    const-wide/16 v48, 0x26

    mul-long v50, v20, v44

    mul-long v52, v24, v40

    add-long v50, v50, v52

    mul-long v48, v48, v50

    add-long v4, v46, v48

    .line 552
    const-wide/32 v46, 0x3ffffff

    and-long v46, v46, v4

    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_6:J

    .line 553
    const/16 v46, 0x1a

    shr-long v46, v4, v46

    mul-long v48, v6, v40

    add-long v46, v46, v48

    mul-long v48, v8, v38

    add-long v46, v46, v48

    mul-long v48, v10, v36

    add-long v46, v46, v48

    mul-long v48, v12, v34

    add-long v46, v46, v48

    mul-long v48, v14, v32

    add-long v46, v46, v48

    mul-long v48, v16, v30

    add-long v46, v46, v48

    mul-long v48, v18, v28

    add-long v46, v46, v48

    mul-long v48, v20, v26

    add-long v46, v46, v48

    const-wide/16 v48, 0x13

    mul-long v50, v22, v44

    mul-long v52, v24, v42

    add-long v50, v50, v52

    mul-long v48, v48, v50

    add-long v4, v46, v48

    .line 554
    const-wide/32 v46, 0x1ffffff

    and-long v46, v46, v4

    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_7:J

    .line 555
    const/16 v46, 0x19

    shr-long v46, v4, v46

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_8:J

    move-wide/from16 v48, v0

    add-long v4, v46, v48

    .line 556
    const-wide/32 v46, 0x3ffffff

    and-long v46, v46, v4

    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_8:J

    .line 557
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    move-wide/from16 v46, v0

    const/16 v48, 0x1a

    shr-long v48, v4, v48

    add-long v46, v46, v48

    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_9:J

    .line 558
    return-object p0
.end method

.method private static final mul_small(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;J)Lmobisocial/crypto/Curve25519$long10;
    .registers 16
    .param p0, "xy"    # Lmobisocial/crypto/Curve25519$long10;
    .param p1, "x"    # Lmobisocial/crypto/Curve25519$long10;
    .param p2, "y"    # J

    .prologue
    const-wide/32 v10, 0x1ffffff

    const/16 v7, 0x19

    const-wide/32 v8, 0x3ffffff

    const/16 v6, 0x1a

    .line 499
    iget-wide v2, p1, Lmobisocial/crypto/Curve25519$long10;->_8:J

    mul-long v0, v2, p2

    .line 500
    .local v0, "t":J
    and-long v2, v0, v8

    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_8:J

    .line 501
    shr-long v2, v0, v6

    iget-wide v4, p1, Lmobisocial/crypto/Curve25519$long10;->_9:J

    mul-long/2addr v4, p2

    add-long v0, v2, v4

    .line 502
    and-long v2, v0, v10

    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    .line 503
    const-wide/16 v2, 0x13

    shr-long v4, v0, v7

    mul-long/2addr v2, v4

    iget-wide v4, p1, Lmobisocial/crypto/Curve25519$long10;->_0:J

    mul-long/2addr v4, p2

    add-long v0, v2, v4

    .line 504
    and-long v2, v0, v8

    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .line 505
    shr-long v2, v0, v6

    iget-wide v4, p1, Lmobisocial/crypto/Curve25519$long10;->_1:J

    mul-long/2addr v4, p2

    add-long v0, v2, v4

    .line 506
    and-long v2, v0, v10

    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_1:J

    .line 507
    shr-long v2, v0, v7

    iget-wide v4, p1, Lmobisocial/crypto/Curve25519$long10;->_2:J

    mul-long/2addr v4, p2

    add-long v0, v2, v4

    .line 508
    and-long v2, v0, v8

    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_2:J

    .line 509
    shr-long v2, v0, v6

    iget-wide v4, p1, Lmobisocial/crypto/Curve25519$long10;->_3:J

    mul-long/2addr v4, p2

    add-long v0, v2, v4

    .line 510
    and-long v2, v0, v10

    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_3:J

    .line 511
    shr-long v2, v0, v7

    iget-wide v4, p1, Lmobisocial/crypto/Curve25519$long10;->_4:J

    mul-long/2addr v4, p2

    add-long v0, v2, v4

    .line 512
    and-long v2, v0, v8

    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_4:J

    .line 513
    shr-long v2, v0, v6

    iget-wide v4, p1, Lmobisocial/crypto/Curve25519$long10;->_5:J

    mul-long/2addr v4, p2

    add-long v0, v2, v4

    .line 514
    and-long v2, v0, v10

    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_5:J

    .line 515
    shr-long v2, v0, v7

    iget-wide v4, p1, Lmobisocial/crypto/Curve25519$long10;->_6:J

    mul-long/2addr v4, p2

    add-long v0, v2, v4

    .line 516
    and-long v2, v0, v8

    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_6:J

    .line 517
    shr-long v2, v0, v6

    iget-wide v4, p1, Lmobisocial/crypto/Curve25519$long10;->_7:J

    mul-long/2addr v4, p2

    add-long v0, v2, v4

    .line 518
    and-long v2, v0, v10

    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_7:J

    .line 519
    shr-long v2, v0, v7

    iget-wide v4, p0, Lmobisocial/crypto/Curve25519$long10;->_8:J

    add-long v0, v2, v4

    .line 520
    and-long v2, v0, v8

    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_8:J

    .line 521
    iget-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    shr-long v4, v0, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    .line 522
    return-object p0
.end method

.method private static final mula32([B[B[BII)I
    .registers 13
    .param p0, "p"    # [B
    .param p1, "x"    # [B
    .param p2, "y"    # [B
    .param p3, "t"    # I
    .param p4, "z"    # I

    .prologue
    const/16 v4, 0x1f

    .line 283
    const/16 v6, 0x1f

    .line 284
    .local v6, "n":I
    const/4 v7, 0x0

    .line 285
    .local v7, "w":I
    const/4 v2, 0x0

    .line 286
    .local v2, "i":I
    :goto_6
    if-ge v2, p3, :cond_2d

    .line 287
    aget-byte v0, p2, v2

    and-int/lit16 v0, v0, 0xff

    mul-int v5, p4, v0

    .local v5, "zy":I
    move-object v0, p0

    move-object v1, p0

    move-object v3, p1

    .line 288
    invoke-static/range {v0 .. v5}, Lmobisocial/crypto/Curve25519;->mula_small([B[BI[BII)I

    move-result v0

    add-int/lit8 v1, v2, 0x1f

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    mul-int/2addr v1, v5

    add-int/2addr v0, v1

    add-int/2addr v7, v0

    .line 289
    add-int/lit8 v0, v2, 0x1f

    int-to-byte v1, v7

    aput-byte v1, p0, v0

    .line 290
    shr-int/lit8 v7, v7, 0x8

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 292
    .end local v5    # "zy":I
    :cond_2d
    add-int/lit8 v0, v2, 0x1f

    add-int/lit8 v1, v2, 0x1f

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v7

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 293
    shr-int/lit8 v0, v7, 0x8

    return v0
.end method

.method private static final mula_small([B[BI[BII)I
    .registers 10
    .param p0, "p"    # [B
    .param p1, "q"    # [B
    .param p2, "m"    # I
    .param p3, "x"    # [B
    .param p4, "n"    # I
    .param p5, "z"    # I

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, "v":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, p4, :cond_1b

    .line 272
    add-int v2, v0, p2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p3, v0

    and-int/lit16 v3, v3, 0xff

    mul-int/2addr v3, p5

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 273
    add-int v2, v0, p2

    int-to-byte v3, v1

    aput-byte v3, p0, v2

    .line 274
    shr-int/lit8 v1, v1, 0x8

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 276
    :cond_1b
    return v1
.end method

.method private static final numsize([BI)I
    .registers 4
    .param p0, "x"    # [B
    .param p1, "n"    # I

    .prologue
    .line 324
    move v0, p1

    .end local p1    # "n":I
    .local v0, "n":I
    :goto_1
    add-int/lit8 p1, v0, -0x1

    .end local v0    # "n":I
    .restart local p1    # "n":I
    if-eqz v0, :cond_b

    aget-byte v1, p0, p1

    if-nez v1, :cond_b

    move v0, p1

    .end local p1    # "n":I
    .restart local v0    # "n":I
    goto :goto_1

    .line 325
    .end local v0    # "n":I
    .restart local p1    # "n":I
    :cond_b
    add-int/lit8 v1, p1, 0x1

    return v1
.end method

.method private static final pack(Lmobisocial/crypto/Curve25519$long10;[B)V
    .registers 16
    .param p0, "x"    # Lmobisocial/crypto/Curve25519$long10;
    .param p1, "m"    # [B

    .prologue
    const/4 v5, 0x0

    const/16 v13, 0x20

    const/16 v12, 0x18

    const/16 v11, 0x10

    const/16 v10, 0x8

    .line 390
    const/4 v0, 0x0

    .local v0, "ld":I
    const/4 v1, 0x0

    .line 392
    .local v1, "ud":I
    invoke-static {p0}, Lmobisocial/crypto/Curve25519;->is_overflow(Lmobisocial/crypto/Curve25519$long10;)Z

    move-result v4

    if-eqz v4, :cond_152

    const/4 v4, 0x1

    :goto_12
    iget-wide v6, p0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_155

    const/4 v6, 0x1

    :goto_1b
    sub-int v0, v4, v6

    .line 393
    const/high16 v4, -0x2000000

    mul-int v1, v0, v4

    .line 394
    mul-int/lit8 v0, v0, 0x13

    .line 395
    int-to-long v6, v0

    iget-wide v8, p0, Lmobisocial/crypto/Curve25519$long10;->_0:J

    add-long/2addr v6, v8

    iget-wide v8, p0, Lmobisocial/crypto/Curve25519$long10;->_1:J

    const/16 v4, 0x1a

    shl-long/2addr v8, v4

    add-long v2, v6, v8

    .line 396
    .local v2, "t":J
    long-to-int v4, v2

    int-to-byte v4, v4

    aput-byte v4, p1, v5

    .line 397
    const/4 v4, 0x1

    shr-long v6, v2, v10

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 398
    const/4 v4, 0x2

    shr-long v6, v2, v11

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 399
    const/4 v4, 0x3

    shr-long v6, v2, v12

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 400
    shr-long v4, v2, v13

    iget-wide v6, p0, Lmobisocial/crypto/Curve25519$long10;->_2:J

    const/16 v8, 0x13

    shl-long/2addr v6, v8

    add-long v2, v4, v6

    .line 401
    const/4 v4, 0x4

    long-to-int v5, v2

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 402
    const/4 v4, 0x5

    shr-long v6, v2, v10

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 403
    const/4 v4, 0x6

    shr-long v6, v2, v11

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 404
    const/4 v4, 0x7

    shr-long v6, v2, v12

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 405
    shr-long v4, v2, v13

    iget-wide v6, p0, Lmobisocial/crypto/Curve25519$long10;->_3:J

    const/16 v8, 0xd

    shl-long/2addr v6, v8

    add-long v2, v4, v6

    .line 406
    long-to-int v4, v2

    int-to-byte v4, v4

    aput-byte v4, p1, v10

    .line 407
    const/16 v4, 0x9

    shr-long v6, v2, v10

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 408
    const/16 v4, 0xa

    shr-long v6, v2, v11

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 409
    const/16 v4, 0xb

    shr-long v6, v2, v12

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 410
    shr-long v4, v2, v13

    iget-wide v6, p0, Lmobisocial/crypto/Curve25519$long10;->_4:J

    const/4 v8, 0x6

    shl-long/2addr v6, v8

    add-long v2, v4, v6

    .line 411
    const/16 v4, 0xc

    long-to-int v5, v2

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 412
    const/16 v4, 0xd

    shr-long v6, v2, v10

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 413
    const/16 v4, 0xe

    shr-long v6, v2, v11

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 414
    const/16 v4, 0xf

    shr-long v6, v2, v12

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 415
    shr-long v4, v2, v13

    iget-wide v6, p0, Lmobisocial/crypto/Curve25519$long10;->_5:J

    add-long/2addr v4, v6

    iget-wide v6, p0, Lmobisocial/crypto/Curve25519$long10;->_6:J

    const/16 v8, 0x19

    shl-long/2addr v6, v8

    add-long v2, v4, v6

    .line 416
    long-to-int v4, v2

    int-to-byte v4, v4

    aput-byte v4, p1, v11

    .line 417
    const/16 v4, 0x11

    shr-long v6, v2, v10

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 418
    const/16 v4, 0x12

    shr-long v6, v2, v11

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 419
    const/16 v4, 0x13

    shr-long v6, v2, v12

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 420
    shr-long v4, v2, v13

    iget-wide v6, p0, Lmobisocial/crypto/Curve25519$long10;->_7:J

    const/16 v8, 0x13

    shl-long/2addr v6, v8

    add-long v2, v4, v6

    .line 421
    const/16 v4, 0x14

    long-to-int v5, v2

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 422
    const/16 v4, 0x15

    shr-long v6, v2, v10

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 423
    const/16 v4, 0x16

    shr-long v6, v2, v11

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 424
    const/16 v4, 0x17

    shr-long v6, v2, v12

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 425
    shr-long v4, v2, v13

    iget-wide v6, p0, Lmobisocial/crypto/Curve25519$long10;->_8:J

    const/16 v8, 0xc

    shl-long/2addr v6, v8

    add-long v2, v4, v6

    .line 426
    long-to-int v4, v2

    int-to-byte v4, v4

    aput-byte v4, p1, v12

    .line 427
    const/16 v4, 0x19

    shr-long v6, v2, v10

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 428
    const/16 v4, 0x1a

    shr-long v6, v2, v11

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 429
    const/16 v4, 0x1b

    shr-long v6, v2, v12

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 430
    shr-long v4, v2, v13

    iget-wide v6, p0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    const/4 v8, 0x6

    shl-long/2addr v6, v8

    add-long v2, v4, v6

    .line 431
    const/16 v4, 0x1c

    long-to-int v5, v2

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 432
    const/16 v4, 0x1d

    shr-long v6, v2, v10

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 433
    const/16 v4, 0x1e

    shr-long v6, v2, v11

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 434
    const/16 v4, 0x1f

    shr-long v6, v2, v12

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 435
    return-void

    .end local v2    # "t":J
    :cond_152
    move v4, v5

    .line 392
    goto/16 :goto_12

    :cond_155
    move v6, v5

    goto/16 :goto_1b
.end method

.method private static final recip(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;I)V
    .registers 12
    .param p0, "y"    # Lmobisocial/crypto/Curve25519$long10;
    .param p1, "x"    # Lmobisocial/crypto/Curve25519$long10;
    .param p2, "sqrtassist"    # I

    .prologue
    const/16 v8, 0x19

    const/4 v7, 0x5

    .line 595
    new-instance v1, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v1}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    .local v1, "t0":Lmobisocial/crypto/Curve25519$long10;
    new-instance v2, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v2}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    .local v2, "t1":Lmobisocial/crypto/Curve25519$long10;
    new-instance v3, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v3}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    .local v3, "t2":Lmobisocial/crypto/Curve25519$long10;
    new-instance v4, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v4}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    .local v4, "t3":Lmobisocial/crypto/Curve25519$long10;
    new-instance v5, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v5}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    .line 598
    .local v5, "t4":Lmobisocial/crypto/Curve25519$long10;
    invoke-static {v2, p1}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 600
    invoke-static {v3, v2}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 602
    invoke-static {v1, v3}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 604
    invoke-static {v3, v1, p1}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 606
    invoke-static {v1, v3, v2}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 608
    invoke-static {v2, v1}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 610
    invoke-static {v4, v2, v3}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 613
    invoke-static {v2, v4}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 615
    invoke-static {v3, v2}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 617
    invoke-static {v2, v3}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 619
    invoke-static {v3, v2}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 621
    invoke-static {v2, v3}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 623
    invoke-static {v3, v2, v4}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 625
    invoke-static {v2, v3}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 627
    invoke-static {v4, v2}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 629
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_4a
    if-ge v0, v7, :cond_55

    .line 630
    invoke-static {v2, v4}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 631
    invoke-static {v4, v2}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 635
    :cond_55
    invoke-static {v2, v4, v3}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 637
    invoke-static {v4, v2}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 639
    invoke-static {v5, v4}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 641
    const/4 v0, 0x1

    :goto_5f
    const/16 v6, 0xa

    if-ge v0, v6, :cond_6c

    .line 642
    invoke-static {v4, v5}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 643
    invoke-static {v5, v4}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 647
    :cond_6c
    invoke-static {v4, v5, v2}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 649
    const/4 v0, 0x0

    :goto_70
    if-ge v0, v7, :cond_7b

    .line 650
    invoke-static {v2, v4}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 651
    invoke-static {v4, v2}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 655
    :cond_7b
    invoke-static {v2, v4, v3}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 657
    invoke-static {v3, v2}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 659
    invoke-static {v4, v3}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 661
    const/4 v0, 0x1

    :goto_85
    if-ge v0, v8, :cond_90

    .line 662
    invoke-static {v3, v4}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 663
    invoke-static {v4, v3}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    .line 667
    :cond_90
    invoke-static {v3, v4, v2}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 669
    invoke-static {v4, v3}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 671
    invoke-static {v5, v4}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 673
    const/4 v0, 0x1

    :goto_9a
    const/16 v6, 0x32

    if-ge v0, v6, :cond_a7

    .line 674
    invoke-static {v4, v5}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 675
    invoke-static {v5, v4}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    .line 679
    :cond_a7
    invoke-static {v4, v5, v3}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 681
    const/4 v0, 0x0

    :goto_ab
    if-ge v0, v8, :cond_b6

    .line 682
    invoke-static {v5, v4}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 683
    invoke-static {v4, v5}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 681
    add-int/lit8 v0, v0, 0x1

    goto :goto_ab

    .line 687
    :cond_b6
    invoke-static {v3, v4, v2}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 689
    invoke-static {v2, v3}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 691
    invoke-static {v3, v2}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 693
    if-eqz p2, :cond_c5

    .line 694
    invoke-static {p0, p1, v3}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 706
    :goto_c4
    return-void

    .line 697
    :cond_c5
    invoke-static {v2, v3}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 699
    invoke-static {v3, v2}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 701
    invoke-static {v2, v3}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 703
    invoke-static {p0, v2, v1}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    goto :goto_c4
.end method

.method private static final set(Lmobisocial/crypto/Curve25519$long10;I)V
    .registers 6
    .param p0, "out"    # Lmobisocial/crypto/Curve25519$long10;
    .param p1, "in"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 453
    int-to-long v0, p1

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .line 454
    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_1:J

    .line 455
    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_2:J

    .line 456
    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_3:J

    .line 457
    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_4:J

    .line 458
    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_5:J

    .line 459
    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_6:J

    .line 460
    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_7:J

    .line 461
    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_8:J

    .line 462
    iput-wide v2, p0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    .line 463
    return-void
.end method

.method public static final sign([B[B[B[B)Z
    .registers 21
    .param p0, "v"    # [B
    .param p1, "h"    # [B
    .param p2, "x"    # [B
    .param p3, "s"    # [B

    .prologue
    .line 108
    const/16 v2, 0x20

    new-array v5, v2, [B

    .local v5, "h1":[B
    const/16 v2, 0x20

    new-array v3, v2, [B

    .line 109
    .local v3, "x1":[B
    const/16 v2, 0x40

    new-array v13, v2, [B

    .line 110
    .local v13, "tmp1":[B
    const/16 v2, 0x40

    new-array v14, v2, [B

    .line 112
    .local v14, "tmp2":[B
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lmobisocial/crypto/Curve25519;->cpy32([B[B)V

    .line 113
    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lmobisocial/crypto/Curve25519;->cpy32([B[B)V

    .line 115
    const/16 v2, 0x20

    new-array v15, v2, [B

    .line 116
    .local v15, "tmp3":[B
    const/16 v2, 0x20

    sget-object v4, Lmobisocial/crypto/Curve25519;->ORDER:[B

    const/16 v6, 0x20

    invoke-static {v15, v5, v2, v4, v6}, Lmobisocial/crypto/Curve25519;->divmod([B[BI[BI)V

    .line 117
    const/16 v2, 0x20

    sget-object v4, Lmobisocial/crypto/Curve25519;->ORDER:[B

    const/16 v6, 0x20

    invoke-static {v15, v3, v2, v4, v6}, Lmobisocial/crypto/Curve25519;->divmod([B[BI[BI)V

    .line 122
    const/4 v4, 0x0

    const/16 v6, 0x20

    const/4 v7, -0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lmobisocial/crypto/Curve25519;->mula_small([B[BI[BII)I

    .line 123
    const/4 v8, 0x0

    sget-object v9, Lmobisocial/crypto/Curve25519;->ORDER:[B

    const/16 v10, 0x20

    const/4 v11, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p0

    invoke-static/range {v6 .. v11}, Lmobisocial/crypto/Curve25519;->mula_small([B[BI[BII)I

    .line 125
    const/16 v2, 0x20

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v13, v0, v1, v2, v4}, Lmobisocial/crypto/Curve25519;->mula32([B[B[BII)I

    .line 126
    const/16 v2, 0x40

    sget-object v4, Lmobisocial/crypto/Curve25519;->ORDER:[B

    const/16 v6, 0x20

    invoke-static {v14, v13, v2, v4, v6}, Lmobisocial/crypto/Curve25519;->divmod([B[BI[BI)V

    .line 127
    const/16 v16, 0x0

    .local v16, "w":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5c
    const/16 v2, 0x20

    if-ge v12, v2, :cond_69

    aget-byte v2, v13, v12

    aput-byte v2, p0, v12

    or-int v16, v16, v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_5c

    .line 128
    :cond_69
    if-eqz v16, :cond_6d

    const/4 v2, 0x1

    :goto_6c
    return v2

    :cond_6d
    const/4 v2, 0x0

    goto :goto_6c
.end method

.method private static final sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;
    .registers 36
    .param p0, "x2"    # Lmobisocial/crypto/Curve25519$long10;
    .param p1, "x"    # Lmobisocial/crypto/Curve25519$long10;

    .prologue
    .line 563
    move-object/from16 v0, p1

    iget-wide v6, v0, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .local v6, "x_0":J
    move-object/from16 v0, p1

    iget-wide v8, v0, Lmobisocial/crypto/Curve25519$long10;->_1:J

    .local v8, "x_1":J
    move-object/from16 v0, p1

    iget-wide v10, v0, Lmobisocial/crypto/Curve25519$long10;->_2:J

    .local v10, "x_2":J
    move-object/from16 v0, p1

    iget-wide v12, v0, Lmobisocial/crypto/Curve25519$long10;->_3:J

    .local v12, "x_3":J
    move-object/from16 v0, p1

    iget-wide v14, v0, Lmobisocial/crypto/Curve25519$long10;->_4:J

    .local v14, "x_4":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_5:J

    move-wide/from16 v16, v0

    .local v16, "x_5":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_6:J

    move-wide/from16 v18, v0

    .local v18, "x_6":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_7:J

    move-wide/from16 v20, v0

    .local v20, "x_7":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_8:J

    move-wide/from16 v22, v0

    .local v22, "x_8":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    move-wide/from16 v24, v0

    .line 565
    .local v24, "x_9":J
    mul-long v26, v14, v14

    const-wide/16 v28, 0x2

    mul-long v30, v6, v22

    mul-long v32, v10, v18

    add-long v30, v30, v32

    mul-long v28, v28, v30

    add-long v26, v26, v28

    const-wide/16 v28, 0x26

    mul-long v30, v24, v24

    mul-long v28, v28, v30

    add-long v26, v26, v28

    const-wide/16 v28, 0x4

    mul-long v30, v8, v20

    mul-long v32, v12, v16

    add-long v30, v30, v32

    mul-long v28, v28, v30

    add-long v4, v26, v28

    .line 566
    .local v4, "t":J
    const-wide/32 v26, 0x3ffffff

    and-long v26, v26, v4

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_8:J

    .line 567
    const/16 v26, 0x1a

    shr-long v26, v4, v26

    const-wide/16 v28, 0x2

    mul-long v30, v6, v24

    mul-long v32, v8, v22

    add-long v30, v30, v32

    mul-long v32, v10, v20

    add-long v30, v30, v32

    mul-long v32, v12, v18

    add-long v30, v30, v32

    mul-long v32, v14, v16

    add-long v30, v30, v32

    mul-long v28, v28, v30

    add-long v4, v26, v28

    .line 568
    const-wide/32 v26, 0x1ffffff

    and-long v26, v26, v4

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_9:J

    .line 569
    const-wide/16 v26, 0x13

    const/16 v28, 0x19

    shr-long v28, v4, v28

    mul-long v26, v26, v28

    mul-long v28, v6, v6

    add-long v26, v26, v28

    const-wide/16 v28, 0x26

    mul-long v30, v10, v22

    mul-long v32, v14, v18

    add-long v30, v30, v32

    mul-long v32, v16, v16

    add-long v30, v30, v32

    mul-long v28, v28, v30

    add-long v26, v26, v28

    const-wide/16 v28, 0x4c

    mul-long v30, v8, v24

    mul-long v32, v12, v20

    add-long v30, v30, v32

    mul-long v28, v28, v30

    add-long v4, v26, v28

    .line 570
    const-wide/32 v26, 0x3ffffff

    and-long v26, v26, v4

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .line 571
    const/16 v26, 0x1a

    shr-long v26, v4, v26

    const-wide/16 v28, 0x2

    mul-long v30, v6, v8

    mul-long v28, v28, v30

    add-long v26, v26, v28

    const-wide/16 v28, 0x26

    mul-long v30, v10, v24

    mul-long v32, v12, v22

    add-long v30, v30, v32

    mul-long v32, v14, v20

    add-long v30, v30, v32

    mul-long v32, v16, v18

    add-long v30, v30, v32

    mul-long v28, v28, v30

    add-long v4, v26, v28

    .line 572
    const-wide/32 v26, 0x1ffffff

    and-long v26, v26, v4

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_1:J

    .line 573
    const/16 v26, 0x19

    shr-long v26, v4, v26

    const-wide/16 v28, 0x13

    mul-long v30, v18, v18

    mul-long v28, v28, v30

    add-long v26, v26, v28

    const-wide/16 v28, 0x2

    mul-long v30, v6, v10

    mul-long v32, v8, v8

    add-long v30, v30, v32

    mul-long v28, v28, v30

    add-long v26, v26, v28

    const-wide/16 v28, 0x26

    mul-long v30, v14, v22

    mul-long v28, v28, v30

    add-long v26, v26, v28

    const-wide/16 v28, 0x4c

    mul-long v30, v12, v24

    mul-long v32, v16, v20

    add-long v30, v30, v32

    mul-long v28, v28, v30

    add-long v4, v26, v28

    .line 574
    const-wide/32 v26, 0x3ffffff

    and-long v26, v26, v4

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_2:J

    .line 575
    const/16 v26, 0x1a

    shr-long v26, v4, v26

    const-wide/16 v28, 0x2

    mul-long v30, v6, v12

    mul-long v32, v8, v10

    add-long v30, v30, v32

    mul-long v28, v28, v30

    add-long v26, v26, v28

    const-wide/16 v28, 0x26

    mul-long v30, v14, v24

    mul-long v32, v16, v22

    add-long v30, v30, v32

    mul-long v32, v18, v20

    add-long v30, v30, v32

    mul-long v28, v28, v30

    add-long v4, v26, v28

    .line 576
    const-wide/32 v26, 0x1ffffff

    and-long v26, v26, v4

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_3:J

    .line 577
    const/16 v26, 0x19

    shr-long v26, v4, v26

    mul-long v28, v10, v10

    add-long v26, v26, v28

    const-wide/16 v28, 0x2

    mul-long v30, v6, v14

    mul-long v28, v28, v30

    add-long v26, v26, v28

    const-wide/16 v28, 0x26

    mul-long v30, v18, v22

    mul-long v32, v20, v20

    add-long v30, v30, v32

    mul-long v28, v28, v30

    add-long v26, v26, v28

    const-wide/16 v28, 0x4

    mul-long v30, v8, v12

    mul-long v28, v28, v30

    add-long v26, v26, v28

    const-wide/16 v28, 0x4c

    mul-long v30, v16, v24

    mul-long v28, v28, v30

    add-long v4, v26, v28

    .line 578
    const-wide/32 v26, 0x3ffffff

    and-long v26, v26, v4

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_4:J

    .line 579
    const/16 v26, 0x1a

    shr-long v26, v4, v26

    const-wide/16 v28, 0x2

    mul-long v30, v6, v16

    mul-long v32, v8, v14

    add-long v30, v30, v32

    mul-long v32, v10, v12

    add-long v30, v30, v32

    mul-long v28, v28, v30

    add-long v26, v26, v28

    const-wide/16 v28, 0x26

    mul-long v30, v18, v24

    mul-long v32, v20, v22

    add-long v30, v30, v32

    mul-long v28, v28, v30

    add-long v4, v26, v28

    .line 580
    const-wide/32 v26, 0x1ffffff

    and-long v26, v26, v4

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_5:J

    .line 581
    const/16 v26, 0x19

    shr-long v26, v4, v26

    const-wide/16 v28, 0x13

    mul-long v30, v22, v22

    mul-long v28, v28, v30

    add-long v26, v26, v28

    const-wide/16 v28, 0x2

    mul-long v30, v6, v18

    mul-long v32, v10, v14

    add-long v30, v30, v32

    mul-long v32, v12, v12

    add-long v30, v30, v32

    mul-long v28, v28, v30

    add-long v26, v26, v28

    const-wide/16 v28, 0x4

    mul-long v30, v8, v16

    mul-long v28, v28, v30

    add-long v26, v26, v28

    const-wide/16 v28, 0x4c

    mul-long v30, v20, v24

    mul-long v28, v28, v30

    add-long v4, v26, v28

    .line 582
    const-wide/32 v26, 0x3ffffff

    and-long v26, v26, v4

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_6:J

    .line 583
    const/16 v26, 0x1a

    shr-long v26, v4, v26

    const-wide/16 v28, 0x2

    mul-long v30, v6, v20

    mul-long v32, v8, v18

    add-long v30, v30, v32

    mul-long v32, v10, v16

    add-long v30, v30, v32

    mul-long v32, v12, v14

    add-long v30, v30, v32

    mul-long v28, v28, v30

    add-long v26, v26, v28

    const-wide/16 v28, 0x26

    mul-long v30, v22, v24

    mul-long v28, v28, v30

    add-long v4, v26, v28

    .line 584
    const-wide/32 v26, 0x1ffffff

    and-long v26, v26, v4

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_7:J

    .line 585
    const/16 v26, 0x19

    shr-long v26, v4, v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_8:J

    move-wide/from16 v28, v0

    add-long v4, v26, v28

    .line 586
    const-wide/32 v26, 0x3ffffff

    and-long v26, v26, v4

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_8:J

    .line 587
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    move-wide/from16 v26, v0

    const/16 v28, 0x1a

    shr-long v28, v4, v28

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmobisocial/crypto/Curve25519$long10;->_9:J

    .line 588
    return-object p0
.end method

.method private static final sqrt(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V
    .registers 10
    .param p0, "x"    # Lmobisocial/crypto/Curve25519$long10;
    .param p1, "u"    # Lmobisocial/crypto/Curve25519$long10;

    .prologue
    .line 715
    new-instance v2, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v2}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    .local v2, "v":Lmobisocial/crypto/Curve25519$long10;
    new-instance v0, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v0}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    .local v0, "t1":Lmobisocial/crypto/Curve25519$long10;
    new-instance v1, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v1}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    .line 716
    .local v1, "t2":Lmobisocial/crypto/Curve25519$long10;
    invoke-static {v0, p1, p1}, Lmobisocial/crypto/Curve25519;->add(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 718
    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lmobisocial/crypto/Curve25519;->recip(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;I)V

    .line 720
    invoke-static {p0, v2}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 722
    invoke-static {v1, v0, p0}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 724
    iget-wide v4, v1, Lmobisocial/crypto/Curve25519$long10;->_0:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, v1, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .line 726
    invoke-static {v0, v2, v1}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 728
    invoke-static {p0, p1, v0}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 730
    return-void
.end method

.method private static final sub(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V
    .registers 7
    .param p0, "xy"    # Lmobisocial/crypto/Curve25519$long10;
    .param p1, "x"    # Lmobisocial/crypto/Curve25519$long10;
    .param p2, "y"    # Lmobisocial/crypto/Curve25519$long10;

    .prologue
    .line 482
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_0:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_0:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .line 483
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_1:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_1:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_1:J

    .line 484
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_2:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_2:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_2:J

    .line 485
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_3:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_3:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_3:J

    .line 486
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_4:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_4:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_4:J

    .line 487
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_5:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_5:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_5:J

    .line 488
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_6:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_6:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_6:J

    .line 489
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_7:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_7:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_7:J

    .line 490
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_8:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_8:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_8:J

    .line 491
    iget-wide v0, p1, Lmobisocial/crypto/Curve25519$long10;->_9:J

    iget-wide v2, p2, Lmobisocial/crypto/Curve25519$long10;->_9:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    .line 492
    return-void
.end method

.method private static final unpack(Lmobisocial/crypto/Curve25519$long10;[B)V
    .registers 9
    .param p0, "x"    # Lmobisocial/crypto/Curve25519$long10;
    .param p1, "m"    # [B

    .prologue
    const/16 v6, 0x13

    const/16 v5, 0xc

    const/16 v4, 0x9

    const/4 v3, 0x6

    const/4 v2, 0x3

    .line 367
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .line 368
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, -0x4

    shr-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x16

    or-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_1:J

    .line 369
    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, -0x8

    shr-int/lit8 v0, v0, 0x3

    const/4 v1, 0x7

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    const/16 v1, 0x8

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xd

    or-int/2addr v0, v1

    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_2:J

    .line 370
    aget-byte v0, p1, v4

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, -0x20

    shr-int/lit8 v0, v0, 0x5

    const/16 v1, 0xa

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    const/16 v1, 0xb

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xb

    or-int/2addr v0, v1

    aget-byte v1, p1, v5

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x13

    or-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_3:J

    .line 371
    aget-byte v0, p1, v5

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, -0x40

    shr-int/lit8 v0, v0, 0x6

    const/16 v1, 0xd

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    const/16 v1, 0xe

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    const/16 v1, 0xf

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    or-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_4:J

    .line 372
    const/16 v0, 0x10

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x11

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/16 v1, 0x12

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    aget-byte v1, p1, v6

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_5:J

    .line 373
    aget-byte v0, p1, v6

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, -0x2

    shr-int/lit8 v0, v0, 0x1

    const/16 v1, 0x14

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    const/16 v1, 0x15

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    const/16 v1, 0x16

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x17

    or-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_6:J

    .line 374
    const/16 v0, 0x16

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, -0x8

    shr-int/lit8 v0, v0, 0x3

    const/16 v1, 0x17

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    const/16 v1, 0x18

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xd

    or-int/2addr v0, v1

    const/16 v1, 0x19

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_7:J

    .line 375
    const/16 v0, 0x19

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, -0x10

    shr-int/lit8 v0, v0, 0x4

    const/16 v1, 0x1a

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    const/16 v1, 0x1b

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    const/16 v1, 0x1c

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x14

    or-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_8:J

    .line 376
    const/16 v0, 0x1c

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, -0x40

    shr-int/lit8 v0, v0, 0x6

    const/16 v1, 0x1d

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    const/16 v1, 0x1e

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    const/16 v1, 0x1f

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    or-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    .line 377
    return-void
.end method

.method public static final verify([B[B[B[B)V
    .registers 29
    .param p0, "Y"    # [B
    .param p1, "v"    # [B
    .param p2, "h"    # [B
    .param p3, "P"    # [B

    .prologue
    .line 139
    const/16 v2, 0x20

    new-array v9, v2, [B

    .line 140
    .local v9, "d":[B
    const/4 v2, 0x2

    new-array v0, v2, [Lmobisocial/crypto/Curve25519$long10;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    new-instance v3, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v3}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v3, v18, v2

    const/4 v2, 0x1

    new-instance v3, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v3}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v3, v18, v2

    .local v18, "p":[Lmobisocial/crypto/Curve25519$long10;
    const/4 v2, 0x2

    new-array v0, v2, [Lmobisocial/crypto/Curve25519$long10;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    new-instance v3, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v3}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v3, v19, v2

    const/4 v2, 0x1

    new-instance v3, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v3}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v3, v19, v2

    .local v19, "s":[Lmobisocial/crypto/Curve25519$long10;
    const/4 v2, 0x3

    new-array v0, v2, [Lmobisocial/crypto/Curve25519$long10;

    move-object/from16 v23, v0

    const/4 v2, 0x0

    new-instance v3, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v3}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v3, v23, v2

    const/4 v2, 0x1

    new-instance v3, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v3}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v3, v23, v2

    const/4 v2, 0x2

    new-instance v3, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v3}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v3, v23, v2

    .local v23, "yx":[Lmobisocial/crypto/Curve25519$long10;
    const/4 v2, 0x3

    new-array v0, v2, [Lmobisocial/crypto/Curve25519$long10;

    move-object/from16 v24, v0

    const/4 v2, 0x0

    new-instance v3, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v3}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v3, v24, v2

    const/4 v2, 0x1

    new-instance v3, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v3}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v3, v24, v2

    const/4 v2, 0x2

    new-instance v3, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v3}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v3, v24, v2

    .local v24, "yz":[Lmobisocial/crypto/Curve25519$long10;
    const/4 v2, 0x3

    new-array v0, v2, [Lmobisocial/crypto/Curve25519$long10;

    move-object/from16 v20, v0

    const/4 v2, 0x0

    new-instance v3, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v3}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v3, v20, v2

    const/4 v2, 0x1

    new-instance v3, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v3}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v3, v20, v2

    const/4 v2, 0x2

    new-instance v3, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v3}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v3, v20, v2

    .local v20, "t1":[Lmobisocial/crypto/Curve25519$long10;
    const/4 v2, 0x3

    new-array v0, v2, [Lmobisocial/crypto/Curve25519$long10;

    move-object/from16 v21, v0

    const/4 v2, 0x0

    new-instance v3, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v3}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v3, v21, v2

    const/4 v2, 0x1

    new-instance v3, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v3}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v3, v21, v2

    const/4 v2, 0x2

    new-instance v3, Lmobisocial/crypto/Curve25519$long10;

    invoke-direct {v3}, Lmobisocial/crypto/Curve25519$long10;-><init>()V

    aput-object v3, v21, v2

    .line 141
    .local v21, "t2":[Lmobisocial/crypto/Curve25519$long10;
    const/16 v22, 0x0

    .local v22, "vi":I
    const/4 v11, 0x0

    .local v11, "hi":I
    const/4 v10, 0x0

    .local v10, "di":I
    const/16 v17, 0x0

    .line 143
    .local v17, "nvh":I
    const/4 v2, 0x0

    aget-object v2, v18, v2

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lmobisocial/crypto/Curve25519;->set(Lmobisocial/crypto/Curve25519$long10;I)V

    .line 144
    const/4 v2, 0x1

    aget-object v2, v18, v2

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lmobisocial/crypto/Curve25519;->unpack(Lmobisocial/crypto/Curve25519$long10;[B)V

    .line 148
    const/4 v2, 0x0

    aget-object v2, v20, v2

    const/4 v3, 0x0

    aget-object v3, v21, v3

    const/4 v4, 0x1

    aget-object v4, v18, v4

    invoke-static {v2, v3, v4}, Lmobisocial/crypto/Curve25519;->x_to_y2(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 150
    const/4 v2, 0x0

    aget-object v2, v20, v2

    const/4 v3, 0x0

    aget-object v3, v21, v3

    invoke-static {v2, v3}, Lmobisocial/crypto/Curve25519;->sqrt(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 152
    const/4 v2, 0x0

    aget-object v2, v20, v2

    invoke-static {v2}, Lmobisocial/crypto/Curve25519;->is_negative(Lmobisocial/crypto/Curve25519$long10;)I

    move-result v14

    .line 154
    .local v14, "j":I
    const/4 v2, 0x0

    aget-object v2, v21, v2

    iget-wide v4, v2, Lmobisocial/crypto/Curve25519$long10;->_0:J

    const-wide/32 v6, 0x25981c8

    add-long/2addr v4, v6

    iput-wide v4, v2, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .line 156
    const/4 v2, 0x1

    aget-object v2, v21, v2

    sget-object v3, Lmobisocial/crypto/Curve25519;->BASE_2Y:Lmobisocial/crypto/Curve25519$long10;

    const/4 v4, 0x0

    aget-object v4, v20, v4

    invoke-static {v2, v3, v4}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 158
    aget-object v2, v20, v14

    const/4 v3, 0x0

    aget-object v3, v21, v3

    const/4 v4, 0x1

    aget-object v4, v21, v4

    invoke-static {v2, v3, v4}, Lmobisocial/crypto/Curve25519;->sub(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 160
    rsub-int/lit8 v2, v14, 0x1

    aget-object v2, v20, v2

    const/4 v3, 0x0

    aget-object v3, v21, v3

    const/4 v4, 0x1

    aget-object v4, v21, v4

    invoke-static {v2, v3, v4}, Lmobisocial/crypto/Curve25519;->add(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 162
    const/4 v2, 0x0

    aget-object v2, v21, v2

    const/4 v3, 0x1

    aget-object v3, v18, v3

    invoke-static {v2, v3}, Lmobisocial/crypto/Curve25519;->cpy(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 164
    const/4 v2, 0x0

    aget-object v2, v21, v2

    iget-wide v4, v2, Lmobisocial/crypto/Curve25519$long10;->_0:J

    const-wide/16 v6, 0x9

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .line 166
    const/4 v2, 0x1

    aget-object v2, v21, v2

    const/4 v3, 0x0

    aget-object v3, v21, v3

    invoke-static {v2, v3}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 168
    const/4 v2, 0x0

    aget-object v2, v21, v2

    const/4 v3, 0x1

    aget-object v3, v21, v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmobisocial/crypto/Curve25519;->recip(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;I)V

    .line 170
    const/4 v2, 0x0

    aget-object v2, v19, v2

    const/4 v3, 0x0

    aget-object v3, v20, v3

    const/4 v4, 0x0

    aget-object v4, v21, v4

    invoke-static {v2, v3, v4}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 172
    const/4 v2, 0x0

    aget-object v2, v19, v2

    const/4 v3, 0x0

    aget-object v3, v19, v3

    const/4 v4, 0x1

    aget-object v4, v18, v4

    invoke-static {v2, v3, v4}, Lmobisocial/crypto/Curve25519;->sub(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 174
    const/4 v2, 0x0

    aget-object v2, v19, v2

    iget-wide v4, v2, Lmobisocial/crypto/Curve25519$long10;->_0:J

    const-wide/32 v6, 0x76d0f

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .line 176
    const/4 v2, 0x1

    aget-object v2, v19, v2

    const/4 v3, 0x1

    aget-object v3, v20, v3

    const/4 v4, 0x0

    aget-object v4, v21, v4

    invoke-static {v2, v3, v4}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 178
    const/4 v2, 0x1

    aget-object v2, v19, v2

    const/4 v3, 0x1

    aget-object v3, v19, v3

    const/4 v4, 0x1

    aget-object v4, v18, v4

    invoke-static {v2, v3, v4}, Lmobisocial/crypto/Curve25519;->sub(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 180
    const/4 v2, 0x1

    aget-object v2, v19, v2

    iget-wide v4, v2, Lmobisocial/crypto/Curve25519$long10;->_0:J

    const-wide/32 v6, 0x76d0f

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .line 182
    const/4 v2, 0x0

    aget-object v2, v19, v2

    const/4 v3, 0x0

    aget-object v3, v19, v3

    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Lmobisocial/crypto/Curve25519;->mul_small(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;J)Lmobisocial/crypto/Curve25519$long10;

    .line 184
    const/4 v2, 0x1

    aget-object v2, v19, v2

    const/4 v3, 0x1

    aget-object v3, v19, v3

    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Lmobisocial/crypto/Curve25519;->mul_small(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;J)Lmobisocial/crypto/Curve25519$long10;

    .line 186
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_185
    const/16 v2, 0x20

    if-ge v12, v2, :cond_1ea

    .line 187
    shr-int/lit8 v2, v22, 0x8

    aget-byte v3, p1, v12

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    aget-byte v3, p1, v12

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x1

    xor-int v22, v2, v3

    .line 188
    shr-int/lit8 v2, v11, 0x8

    aget-byte v3, p2, v12

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    aget-byte v3, p2, v12

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x1

    xor-int v11, v2, v3

    .line 189
    xor-int v2, v22, v11

    xor-int/lit8 v17, v2, -0x1

    .line 190
    and-int/lit16 v2, v10, 0x80

    shr-int/lit8 v2, v2, 0x7

    and-int v2, v2, v17

    xor-int v10, v2, v22

    .line 191
    and-int/lit8 v2, v10, 0x1

    shl-int/lit8 v2, v2, 0x1

    and-int v2, v2, v17

    xor-int/2addr v10, v2

    .line 192
    and-int/lit8 v2, v10, 0x2

    shl-int/lit8 v2, v2, 0x1

    and-int v2, v2, v17

    xor-int/2addr v10, v2

    .line 193
    and-int/lit8 v2, v10, 0x4

    shl-int/lit8 v2, v2, 0x1

    and-int v2, v2, v17

    xor-int/2addr v10, v2

    .line 194
    and-int/lit8 v2, v10, 0x8

    shl-int/lit8 v2, v2, 0x1

    and-int v2, v2, v17

    xor-int/2addr v10, v2

    .line 195
    and-int/lit8 v2, v10, 0x10

    shl-int/lit8 v2, v2, 0x1

    and-int v2, v2, v17

    xor-int/2addr v10, v2

    .line 196
    and-int/lit8 v2, v10, 0x20

    shl-int/lit8 v2, v2, 0x1

    and-int v2, v2, v17

    xor-int/2addr v10, v2

    .line 197
    and-int/lit8 v2, v10, 0x40

    shl-int/lit8 v2, v2, 0x1

    and-int v2, v2, v17

    xor-int/2addr v10, v2

    .line 198
    int-to-byte v2, v10

    aput-byte v2, v9, v12

    .line 186
    add-int/lit8 v12, v12, 0x1

    goto :goto_185

    .line 200
    :cond_1ea
    and-int/lit16 v2, v10, 0x80

    shl-int/lit8 v2, v2, 0x1

    and-int v2, v2, v17

    xor-int v2, v2, v22

    shr-int/lit8 v10, v2, 0x8

    .line 202
    const/4 v2, 0x0

    aget-object v2, v23, v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lmobisocial/crypto/Curve25519;->set(Lmobisocial/crypto/Curve25519$long10;I)V

    .line 203
    const/4 v2, 0x1

    aget-object v2, v23, v2

    aget-object v3, v18, v10

    invoke-static {v2, v3}, Lmobisocial/crypto/Curve25519;->cpy(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 204
    const/4 v2, 0x2

    aget-object v2, v23, v2

    const/4 v3, 0x0

    aget-object v3, v19, v3

    invoke-static {v2, v3}, Lmobisocial/crypto/Curve25519;->cpy(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 205
    const/4 v2, 0x0

    aget-object v2, v24, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmobisocial/crypto/Curve25519;->set(Lmobisocial/crypto/Curve25519$long10;I)V

    .line 206
    const/4 v2, 0x1

    aget-object v2, v24, v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lmobisocial/crypto/Curve25519;->set(Lmobisocial/crypto/Curve25519$long10;I)V

    .line 207
    const/4 v2, 0x2

    aget-object v2, v24, v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lmobisocial/crypto/Curve25519;->set(Lmobisocial/crypto/Curve25519$long10;I)V

    .line 213
    const/16 v22, 0x0

    .line 214
    const/4 v11, 0x0

    .line 216
    const/16 v12, 0x20

    move v13, v12

    .end local v12    # "i":I
    .local v13, "i":I
    :goto_227
    add-int/lit8 v12, v13, -0x1

    .end local v13    # "i":I
    .restart local v12    # "i":I
    if-eqz v13, :cond_2df

    .line 217
    shl-int/lit8 v2, v22, 0x8

    aget-byte v3, p1, v12

    and-int/lit16 v3, v3, 0xff

    or-int v22, v2, v3

    .line 218
    shl-int/lit8 v2, v11, 0x8

    aget-byte v3, p2, v12

    and-int/lit16 v3, v3, 0xff

    or-int v11, v2, v3

    .line 219
    shl-int/lit8 v2, v10, 0x8

    aget-byte v3, v9, v12

    and-int/lit16 v3, v3, 0xff

    or-int v10, v2, v3

    .line 220
    const/16 v14, 0x8

    move v15, v14

    .end local v14    # "j":I
    .local v15, "j":I
    :goto_246
    add-int/lit8 v14, v15, -0x1

    .end local v15    # "j":I
    .restart local v14    # "j":I
    if-eqz v15, :cond_302

    .line 221
    const/4 v2, 0x0

    aget-object v2, v20, v2

    const/4 v3, 0x0

    aget-object v3, v21, v3

    const/4 v4, 0x0

    aget-object v4, v23, v4

    const/4 v5, 0x0

    aget-object v5, v24, v5

    invoke-static {v2, v3, v4, v5}, Lmobisocial/crypto/Curve25519;->mont_prep(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 222
    const/4 v2, 0x1

    aget-object v2, v20, v2

    const/4 v3, 0x1

    aget-object v3, v21, v3

    const/4 v4, 0x1

    aget-object v4, v23, v4

    const/4 v5, 0x1

    aget-object v5, v24, v5

    invoke-static {v2, v3, v4, v5}, Lmobisocial/crypto/Curve25519;->mont_prep(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 223
    const/4 v2, 0x2

    aget-object v2, v20, v2

    const/4 v3, 0x2

    aget-object v3, v21, v3

    const/4 v4, 0x2

    aget-object v4, v23, v4

    const/4 v5, 0x2

    aget-object v5, v24, v5

    invoke-static {v2, v3, v4, v5}, Lmobisocial/crypto/Curve25519;->mont_prep(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 224
    shr-int/lit8 v2, v22, 0x1

    xor-int v2, v2, v22

    shr-int/2addr v2, v14

    and-int/lit8 v2, v2, 0x1

    shr-int/lit8 v3, v11, 0x1

    xor-int/2addr v3, v11

    shr-int/2addr v3, v14

    and-int/lit8 v3, v3, 0x1

    add-int v16, v2, v3

    .line 225
    .local v16, "k":I
    const/4 v2, 0x2

    aget-object v2, v23, v2

    const/4 v3, 0x2

    aget-object v3, v24, v3

    aget-object v4, v20, v16

    aget-object v5, v21, v16

    const/4 v6, 0x0

    aget-object v6, v23, v6

    const/4 v7, 0x0

    aget-object v7, v24, v7

    invoke-static/range {v2 .. v7}, Lmobisocial/crypto/Curve25519;->mont_dbl(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 226
    shr-int v2, v10, v14

    and-int/lit8 v2, v2, 0x2

    shr-int v3, v10, v14

    and-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x1

    xor-int v16, v2, v3

    .line 227
    const/4 v2, 0x1

    aget-object v2, v20, v2

    const/4 v3, 0x1

    aget-object v3, v21, v3

    aget-object v4, v20, v16

    aget-object v5, v21, v16

    const/4 v6, 0x1

    aget-object v6, v23, v6

    const/4 v7, 0x1

    aget-object v7, v24, v7

    shr-int v8, v10, v14

    and-int/lit8 v8, v8, 0x1

    aget-object v8, v18, v8

    invoke-static/range {v2 .. v8}, Lmobisocial/crypto/Curve25519;->mont_add(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 228
    const/4 v2, 0x2

    aget-object v2, v20, v2

    const/4 v3, 0x2

    aget-object v3, v21, v3

    const/4 v4, 0x0

    aget-object v4, v20, v4

    const/4 v5, 0x0

    aget-object v5, v21, v5

    const/4 v6, 0x2

    aget-object v6, v23, v6

    const/4 v7, 0x2

    aget-object v7, v24, v7

    xor-int v8, v22, v11

    shr-int/2addr v8, v14

    and-int/lit8 v8, v8, 0x2

    shr-int/lit8 v8, v8, 0x1

    aget-object v8, v19, v8

    invoke-static/range {v2 .. v8}, Lmobisocial/crypto/Curve25519;->mont_add(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    move v15, v14

    .end local v14    # "j":I
    .restart local v15    # "j":I
    goto/16 :goto_246

    .line 231
    .end local v15    # "j":I
    .end local v16    # "k":I
    .restart local v14    # "j":I
    :cond_2df
    and-int/lit8 v2, v22, 0x1

    and-int/lit8 v3, v11, 0x1

    add-int v16, v2, v3

    .line 232
    .restart local v16    # "k":I
    const/4 v2, 0x0

    aget-object v2, v20, v2

    aget-object v3, v24, v16

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmobisocial/crypto/Curve25519;->recip(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;I)V

    .line 233
    const/4 v2, 0x1

    aget-object v2, v20, v2

    aget-object v3, v23, v16

    const/4 v4, 0x0

    aget-object v4, v20, v4

    invoke-static {v2, v3, v4}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 234
    const/4 v2, 0x1

    aget-object v2, v20, v2

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lmobisocial/crypto/Curve25519;->pack(Lmobisocial/crypto/Curve25519$long10;[B)V

    .line 235
    return-void

    .end local v16    # "k":I
    :cond_302
    move v13, v12

    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto/16 :goto_227
.end method

.method private static final x_to_y2(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V
    .registers 7
    .param p0, "t"    # Lmobisocial/crypto/Curve25519$long10;
    .param p1, "y2"    # Lmobisocial/crypto/Curve25519$long10;
    .param p2, "x"    # Lmobisocial/crypto/Curve25519$long10;

    .prologue
    .line 774
    invoke-static {p0, p2}, Lmobisocial/crypto/Curve25519;->sqr(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 775
    const-wide/32 v0, 0x76d06

    invoke-static {p1, p2, v0, v1}, Lmobisocial/crypto/Curve25519;->mul_small(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;J)Lmobisocial/crypto/Curve25519$long10;

    .line 776
    invoke-static {p0, p0, p1}, Lmobisocial/crypto/Curve25519;->add(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)V

    .line 777
    iget-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_0:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .line 778
    invoke-static {p1, p0, p2}, Lmobisocial/crypto/Curve25519;->mul(Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;Lmobisocial/crypto/Curve25519$long10;)Lmobisocial/crypto/Curve25519$long10;

    .line 779
    return-void
.end method
