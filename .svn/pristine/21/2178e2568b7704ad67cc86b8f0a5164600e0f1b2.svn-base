.class public Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;
.super Ljava/lang/Object;
.source "NinePatchUtils.java"


# static fields
.field private static final NO_COLOR:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private static dealPaddingInfo(Landroid/graphics/Bitmap;[B)V
    .registers 13
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "data"    # [B

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v1, v0, [I

    .line 165
    .local v1, "bottomPixels":[I
    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    array-length v6, v1

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 166
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_18
    array-length v0, v1

    if-ge v10, v0, :cond_26

    .line 167
    const/high16 v0, -0x1000000

    aget v2, v1, v10

    if-ne v0, v2, :cond_75

    .line 168
    const/16 v0, 0xc

    invoke-static {p1, v0, v10}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->writeInt([BII)V

    .line 172
    :cond_26
    array-length v0, v1

    add-int/lit8 v10, v0, -0x1

    :goto_29
    if-ltz v10, :cond_3a

    .line 173
    const/high16 v0, -0x1000000

    aget v2, v1, v10

    if-ne v0, v2, :cond_78

    .line 174
    const/16 v0, 0x10

    array-length v2, v1

    sub-int/2addr v2, v10

    add-int/lit8 v2, v2, -0x2

    invoke-static {p1, v0, v2}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->writeInt([BII)V

    .line 180
    :cond_3a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v3, v0, [I

    .line 181
    .local v3, "rightPixels":[I
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    array-length v9, v3

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 182
    const/4 v10, 0x0

    :goto_52
    array-length v0, v3

    if-ge v10, v0, :cond_60

    .line 183
    const/high16 v0, -0x1000000

    aget v2, v3, v10

    if-ne v0, v2, :cond_7b

    .line 184
    const/16 v0, 0x14

    invoke-static {p1, v0, v10}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->writeInt([BII)V

    .line 188
    :cond_60
    array-length v0, v3

    add-int/lit8 v10, v0, -0x1

    :goto_63
    if-ltz v10, :cond_74

    .line 189
    const/high16 v0, -0x1000000

    aget v2, v3, v10

    if-ne v0, v2, :cond_7e

    .line 190
    const/16 v0, 0x18

    array-length v2, v3

    sub-int/2addr v2, v10

    add-int/lit8 v2, v2, -0x2

    invoke-static {p1, v0, v2}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->writeInt([BII)V

    .line 195
    :cond_74
    return-void

    .line 166
    .end local v3    # "rightPixels":[I
    :cond_75
    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    .line 172
    :cond_78
    add-int/lit8 v10, v10, -0x1

    goto :goto_29

    .line 182
    .restart local v3    # "rightPixels":[I
    :cond_7b
    add-int/lit8 v10, v10, 0x1

    goto :goto_52

    .line 188
    :cond_7e
    add-int/lit8 v10, v10, -0x1

    goto :goto_63
.end method

.method public static decodeDrawableFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetPath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 29
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "game/drawable/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->readFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 30
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    if-nez v0, :cond_24

    .line 31
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :goto_23
    return-object v6

    .line 34
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_24
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 35
    .local v4, "paddingRect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    invoke-static {v0, v4}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->readPaddingFromChunk([BLandroid/graphics/Rect;)V

    .line 36
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3e} :catch_40

    move-object v6, v0

    goto :goto_23

    .line 39
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "paddingRect":Landroid/graphics/Rect;
    :catch_40
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    move-object v6, v8

    .line 40
    goto :goto_23
.end method

.method public static decodeFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->decodeFromStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 64
    return-object v0
.end method

.method public static decodeFromStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 45
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 46
    .local v3, "srcBm":Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->readChunk(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 47
    .local v0, "chunk":[B
    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v2

    .line 48
    .local v2, "isNinePatchChunk":Z
    if-eqz v2, :cond_33

    .line 49
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-static {v3, v7, v7, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 50
    .local v4, "tgtBm":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mNinePatchChunk"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 52
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 53
    invoke-virtual {v1, v4, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "tgtBm":Landroid/graphics/Bitmap;
    :goto_32
    return-object v4

    :cond_33
    move-object v4, v3

    goto :goto_32
.end method

.method private static getInt([BI)I
    .registers 9
    .param p0, "bs"    # [B
    .param p1, "from"    # I

    .prologue
    .line 212
    add-int/lit8 v5, p1, 0x0

    aget-byte v0, p0, v5

    .line 213
    .local v0, "b1":I
    add-int/lit8 v5, p1, 0x1

    aget-byte v1, p0, v5

    .line 214
    .local v1, "b2":I
    add-int/lit8 v5, p1, 0x2

    aget-byte v2, p0, v5

    .line 215
    .local v2, "b3":I
    add-int/lit8 v5, p1, 0x3

    aget-byte v3, p0, v5

    .line 216
    .local v3, "b4":I
    and-int/lit16 v5, v0, 0xff

    shl-int/lit8 v6, v1, 0x8

    or-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v3, 0x18

    or-int v4, v5, v6

    .line 217
    .local v4, "i":I
    return v4
.end method

.method public static printChunkInfo(Landroid/graphics/Bitmap;)V
    .registers 15
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    .line 223
    .local v1, "chunk":[B
    if-nez v1, :cond_25

    .line 224
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "can\'t find chunk info from this bitmap("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    :goto_24
    return-void

    .line 227
    :cond_25
    const/4 v11, 0x1

    aget-byte v9, v1, v11

    .line 228
    .local v9, "xLen":I
    const/4 v11, 0x2

    aget-byte v10, v1, v11

    .line 229
    .local v10, "yLen":I
    const/4 v11, 0x3

    aget-byte v0, v1, v11

    .line 231
    .local v0, "cLen":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/16 v11, 0xc

    invoke-static {v1, v11}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->getInt([BI)I

    move-result v6

    .line 233
    .local v6, "peddingLeft":I
    const/16 v11, 0x10

    invoke-static {v1, v11}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->getInt([BI)I

    move-result v4

    .line 234
    .local v4, "paddingRight":I
    const/16 v11, 0x14

    invoke-static {v1, v11}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->getInt([BI)I

    move-result v5

    .line 235
    .local v5, "paddingTop":I
    const/16 v11, 0x18

    invoke-static {v1, v11}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->getInt([BI)I

    move-result v3

    .line 236
    .local v3, "paddingBottom":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "peddingLeft="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v11, "\r\n"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "paddingRight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v11, "\r\n"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "paddingTop="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v11, "\r\n"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "paddingBottom="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v11, "\r\n"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v11, "x info="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_bd
    if-ge v2, v9, :cond_e0

    .line 247
    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v11, v11, 0x20

    invoke-static {v1, v11}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->getInt([BI)I

    move-result v8

    .line 248
    .local v8, "vv":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_bd

    .line 250
    .end local v8    # "vv":I
    :cond_e0
    const-string v11, "\r\n"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v11, "y info="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const/4 v2, 0x0

    :goto_eb
    if-ge v2, v10, :cond_111

    .line 253
    mul-int/lit8 v11, v9, 0x4

    add-int/lit8 v11, v11, 0x20

    mul-int/lit8 v12, v2, 0x4

    add-int/2addr v11, v12

    invoke-static {v1, v11}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->getInt([BI)I

    move-result v8

    .line 254
    .restart local v8    # "vv":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_eb

    .line 256
    .end local v8    # "vv":I
    :cond_111
    const-string v11, "\r\n"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v11, "color info="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const/4 v2, 0x0

    :goto_11c
    if-ge v2, v0, :cond_145

    .line 259
    mul-int/lit8 v11, v9, 0x4

    mul-int/lit8 v12, v10, 0x4

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x20

    mul-int/lit8 v12, v2, 0x4

    add-int/2addr v11, v12

    invoke-static {v1, v11}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->getInt([BI)I

    move-result v8

    .line 260
    .restart local v8    # "vv":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_11c

    .line 262
    .end local v8    # "vv":I
    :cond_145
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_24
.end method

.method public static readChunk(Landroid/graphics/Bitmap;)[B
    .registers 29
    .param p0, "resourceBmp"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 83
    .local v5, "BM_W":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 85
    .local v14, "BM_H":I
    const/16 v25, 0x0

    .line 86
    .local v25, "xPointCount":I
    const/16 v27, 0x0

    .line 87
    .local v27, "yPointCount":I
    const/16 v24, 0x0

    .line 88
    .local v24, "xBlockCount":I
    const/16 v26, 0x0

    .line 90
    .local v26, "yBlockCount":I
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 91
    .local v15, "bao":Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_17
    const/16 v2, 0x20

    move/from16 v0, v18

    if-ge v0, v2, :cond_24

    .line 92
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 91
    add-int/lit8 v18, v18, 0x1

    goto :goto_17

    .line 96
    :cond_24
    add-int/lit8 v2, v5, -0x2

    new-array v3, v2, [I

    .line 97
    .local v3, "pixelsTop":[I
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    add-int/lit8 v8, v5, -0x2

    const/4 v9, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 98
    const/4 v2, 0x0

    aget v2, v3, v2

    const/high16 v4, -0x1000000

    if-ne v2, v4, :cond_66

    const/16 v22, 0x1

    .line 99
    .local v22, "topFirstPixelIsBlack":Z
    :goto_3c
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    aget v2, v3, v2

    const/high16 v4, -0x1000000

    if-ne v2, v4, :cond_69

    const/16 v23, 0x1

    .line 100
    .local v23, "topLastPixelIsBlack":Z
    :goto_47
    const/16 v21, 0x0

    .line 101
    .local v21, "tmpLastColor":I
    const/16 v18, 0x0

    array-length v0, v3

    move/from16 v20, v0

    .local v20, "len":I
    :goto_4e
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_6c

    .line 102
    aget v2, v3, v18

    move/from16 v0, v21

    if-eq v0, v2, :cond_63

    .line 103
    add-int/lit8 v25, v25, 0x1

    .line 104
    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->writeInt(Ljava/io/OutputStream;I)V

    .line 105
    aget v21, v3, v18

    .line 101
    :cond_63
    add-int/lit8 v18, v18, 0x1

    goto :goto_4e

    .line 98
    .end local v20    # "len":I
    .end local v21    # "tmpLastColor":I
    .end local v22    # "topFirstPixelIsBlack":Z
    .end local v23    # "topLastPixelIsBlack":Z
    :cond_66
    const/16 v22, 0x0

    goto :goto_3c

    .line 99
    .restart local v22    # "topFirstPixelIsBlack":Z
    :cond_69
    const/16 v23, 0x0

    goto :goto_47

    .line 108
    .restart local v20    # "len":I
    .restart local v21    # "tmpLastColor":I
    .restart local v23    # "topLastPixelIsBlack":Z
    :cond_6c
    if-eqz v23, :cond_74

    .line 109
    add-int/lit8 v25, v25, 0x1

    .line 110
    array-length v2, v3

    invoke-static {v15, v2}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->writeInt(Ljava/io/OutputStream;I)V

    .line 112
    :cond_74
    add-int/lit8 v24, v25, 0x1

    .line 113
    if-eqz v22, :cond_7a

    .line 114
    add-int/lit8 v24, v24, -0x1

    .line 116
    :cond_7a
    if-eqz v23, :cond_7e

    .line 117
    add-int/lit8 v24, v24, -0x1

    .line 122
    :cond_7e
    add-int/lit8 v2, v14, -0x2

    new-array v7, v2, [I

    .line 123
    .local v7, "pixelsLeft":[I
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    add-int/lit8 v13, v14, -0x2

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 124
    const/4 v2, 0x0

    aget v2, v7, v2

    const/high16 v4, -0x1000000

    if-ne v2, v4, :cond_c1

    const/16 v17, 0x1

    .line 125
    .local v17, "firstPixelIsBlack":Z
    :goto_97
    array-length v2, v7

    add-int/lit8 v2, v2, -0x1

    aget v2, v7, v2

    const/high16 v4, -0x1000000

    if-ne v2, v4, :cond_c4

    const/16 v19, 0x1

    .line 126
    .local v19, "lastPixelIsBlack":Z
    :goto_a2
    const/16 v21, 0x0

    .line 127
    const/16 v18, 0x0

    array-length v0, v7

    move/from16 v20, v0

    :goto_a9
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_c7

    .line 128
    aget v2, v7, v18

    move/from16 v0, v21

    if-eq v0, v2, :cond_be

    .line 129
    add-int/lit8 v27, v27, 0x1

    .line 130
    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->writeInt(Ljava/io/OutputStream;I)V

    .line 131
    aget v21, v7, v18

    .line 127
    :cond_be
    add-int/lit8 v18, v18, 0x1

    goto :goto_a9

    .line 124
    .end local v17    # "firstPixelIsBlack":Z
    .end local v19    # "lastPixelIsBlack":Z
    :cond_c1
    const/16 v17, 0x0

    goto :goto_97

    .line 125
    .restart local v17    # "firstPixelIsBlack":Z
    :cond_c4
    const/16 v19, 0x0

    goto :goto_a2

    .line 134
    .restart local v19    # "lastPixelIsBlack":Z
    :cond_c7
    if-eqz v19, :cond_cf

    .line 135
    add-int/lit8 v27, v27, 0x1

    .line 136
    array-length v2, v7

    invoke-static {v15, v2}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->writeInt(Ljava/io/OutputStream;I)V

    .line 138
    :cond_cf
    add-int/lit8 v26, v27, 0x1

    .line 139
    if-eqz v17, :cond_d5

    .line 140
    add-int/lit8 v26, v26, -0x1

    .line 142
    :cond_d5
    if-eqz v19, :cond_d9

    .line 143
    add-int/lit8 v26, v26, -0x1

    .line 148
    :cond_d9
    const/16 v18, 0x0

    :goto_db
    mul-int v2, v24, v26

    move/from16 v0, v18

    if-ge v0, v2, :cond_e8

    .line 149
    const/4 v2, 0x1

    invoke-static {v15, v2}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->writeInt(Ljava/io/OutputStream;I)V

    .line 148
    add-int/lit8 v18, v18, 0x1

    goto :goto_db

    .line 153
    :cond_e8
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    .line 154
    .local v16, "data":[B
    const/4 v2, 0x0

    const/4 v4, 0x1

    aput-byte v4, v16, v2

    .line 155
    const/4 v2, 0x1

    move/from16 v0, v25

    int-to-byte v4, v0

    aput-byte v4, v16, v2

    .line 156
    const/4 v2, 0x2

    move/from16 v0, v27

    int-to-byte v4, v0

    aput-byte v4, v16, v2

    .line 157
    const/4 v2, 0x3

    mul-int v4, v24, v26

    int-to-byte v4, v4

    aput-byte v4, v16, v2

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->dealPaddingInfo(Landroid/graphics/Bitmap;[B)V

    .line 159
    return-object v16
.end method

.method public static readFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ninePatchPngPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 69
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->decodeFromStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 71
    return-object v0
.end method

.method public static readPaddingFromChunk([BLandroid/graphics/Rect;)V
    .registers 3
    .param p0, "chunk"    # [B
    .param p1, "paddingRect"    # Landroid/graphics/Rect;

    .prologue
    .line 75
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->getInt([BI)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 76
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->getInt([BI)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 77
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->getInt([BI)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 78
    const/16 v0, 0x18

    invoke-static {p0, v0}, Lcom/gionee/game/offlinesdk/utils/NinePatchUtils;->getInt([BI)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 79
    return-void
.end method

.method private static writeInt(Ljava/io/OutputStream;I)V
    .registers 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 199
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 200
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 201
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 202
    return-void
.end method

.method private static writeInt([BII)V
    .registers 5
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "v"    # I

    .prologue
    .line 205
    add-int/lit8 v0, p1, 0x0

    shr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 206
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 207
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 208
    add-int/lit8 v0, p1, 0x3

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 209
    return-void
.end method
