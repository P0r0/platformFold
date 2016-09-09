.class final Lmobisocial/crypto/Curve25519$long10;
.super Ljava/lang/Object;
.source "Curve25519.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/crypto/Curve25519;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "long10"
.end annotation


# instance fields
.field public _0:J

.field public _1:J

.field public _2:J

.field public _3:J

.field public _4:J

.field public _5:J

.field public _6:J

.field public _7:J

.field public _8:J

.field public _9:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    return-void
.end method

.method public constructor <init>(JJJJJJJJJJ)V
    .registers 24
    .param p1, "_0"    # J
    .param p3, "_1"    # J
    .param p5, "_2"    # J
    .param p7, "_3"    # J
    .param p9, "_4"    # J
    .param p11, "_5"    # J
    .param p13, "_6"    # J
    .param p15, "_7"    # J
    .param p17, "_8"    # J
    .param p19, "_9"    # J

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-wide p1, p0, Lmobisocial/crypto/Curve25519$long10;->_0:J

    .line 246
    iput-wide p3, p0, Lmobisocial/crypto/Curve25519$long10;->_1:J

    .line 247
    iput-wide p5, p0, Lmobisocial/crypto/Curve25519$long10;->_2:J

    .line 248
    iput-wide p7, p0, Lmobisocial/crypto/Curve25519$long10;->_3:J

    .line 249
    iput-wide p9, p0, Lmobisocial/crypto/Curve25519$long10;->_4:J

    .line 250
    iput-wide p11, p0, Lmobisocial/crypto/Curve25519$long10;->_5:J

    .line 251
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_6:J

    .line 252
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_7:J

    .line 253
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_8:J

    .line 254
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lmobisocial/crypto/Curve25519$long10;->_9:J

    .line 255
    return-void
.end method
