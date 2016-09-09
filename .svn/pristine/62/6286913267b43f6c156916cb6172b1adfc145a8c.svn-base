.class public Lmobisocial/util/DroidPlatformImage;
.super Ljava/lang/Object;
.source "DroidPlatformImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/util/DroidPlatformImage$ImageReference;
    }
.end annotation


# static fields
.field public static final FULLSIZE_LONG_EDGE:I = 0x780

.field static final FullSizeImageCompressionQuality:I = 0x4b

.field static final NumberOfResizeAttempts:I = 0x4

.field static final TAG:Ljava/lang/String; = "Omlib-utils"

.field public static final THUMBNAIL_LONG_EDGE:I = 0x21c

.field static final ThumbnailImageCompressionQuality:I = 0x4b


# instance fields
.field public HasLocation:Z

.field public Latitude:F

.field public Longitude:F

.field public MimeType:Ljava/lang/String;

.field public ResizedHeight:I

.field public ResizedWidth:I

.field _Context:Landroid/content/Context;

.field _DecodedBounds:Z

.field private _Exif:Landroid/media/ExifInterface;

.field _HasAlpha:Z

.field _Height:I

.field _ImagePath:Ljava/io/File;

.field _ImageUri:Landroid/net/Uri;

.field final _OriginalImageUri:Landroid/net/Uri;

.field _Rotation:F

.field _Width:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lmobisocial/util/DroidPlatformImage;->_Rotation:F

    .line 82
    iput-object p2, p0, Lmobisocial/util/DroidPlatformImage;->_OriginalImageUri:Landroid/net/Uri;

    .line 83
    iput-object p1, p0, Lmobisocial/util/DroidPlatformImage;->_Context:Landroid/content/Context;

    .line 84
    return-void
.end method

.method public static GetImageReference([B)Lmobisocial/util/DroidPlatformImage$ImageReference;
    .registers 5
    .param p0, "image"    # [B

    .prologue
    .line 103
    new-instance v0, Lmobisocial/util/DroidPlatformImage$ImageReference;

    invoke-direct {v0}, Lmobisocial/util/DroidPlatformImage$ImageReference;-><init>()V

    .line 104
    .local v0, "imageReference":Lmobisocial/util/DroidPlatformImage$ImageReference;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 105
    .local v1, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 106
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 107
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->width:I

    .line 108
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->height:I

    .line 109
    return-object v0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 9
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 88
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 89
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 90
    .local v4, "width":I
    const/4 v3, 0x1

    .line 91
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_9

    if-le v4, p1, :cond_18

    .line 92
    :cond_9
    div-int/lit8 v0, v2, 0x2

    .line 93
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 95
    .local v1, "halfWidth":I
    :goto_d
    div-int v5, v0, v3

    if-le v5, p2, :cond_18

    div-int v5, v1, v3

    if-le v5, p1, :cond_18

    .line 96
    mul-int/lit8 v3, v3, 0x2

    goto :goto_d

    .line 99
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_18
    return v3
.end method

.method private ensureLocalImage()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 132
    iget-object v7, p0, Lmobisocial/util/DroidPlatformImage;->_OriginalImageUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "scheme":Ljava/lang/String;
    const-string v7, "file"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 134
    iget-object v7, p0, Lmobisocial/util/DroidPlatformImage;->_OriginalImageUri:Landroid/net/Uri;

    iput-object v7, p0, Lmobisocial/util/DroidPlatformImage;->_ImageUri:Landroid/net/Uri;

    .line 135
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lmobisocial/util/DroidPlatformImage;->_ImageUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lmobisocial/util/DroidPlatformImage;->_ImagePath:Ljava/io/File;

    .line 157
    :goto_20
    return-void

    .line 136
    :cond_21
    const-string v7, "content"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 137
    iget-object v7, p0, Lmobisocial/util/DroidPlatformImage;->_OriginalImageUri:Landroid/net/Uri;

    iput-object v7, p0, Lmobisocial/util/DroidPlatformImage;->_ImageUri:Landroid/net/Uri;

    goto :goto_20

    .line 139
    :cond_2e
    const-string v7, "fetched-"

    const-string v8, ".dat"

    iget-object v9, p0, Lmobisocial/util/DroidPlatformImage;->_Context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-static {v7, v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lmobisocial/util/DroidPlatformImage;->_ImagePath:Ljava/io/File;

    .line 140
    iget-object v7, p0, Lmobisocial/util/DroidPlatformImage;->_OriginalImageUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    .line 141
    .local v6, "uri":Ljava/net/URI;
    iget-object v7, p0, Lmobisocial/util/DroidPlatformImage;->_Context:Landroid/content/Context;

    invoke-static {v7, v6}, Lmobisocial/util/PlatformUtils;->openInputStream(Landroid/content/Context;Ljava/net/URI;)Ljava/io/InputStream;

    move-result-object v0

    .line 142
    .local v0, "aStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lmobisocial/util/DroidPlatformImage;->_ImagePath:Ljava/io/File;

    invoke-direct {v3, v7, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 143
    .local v3, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 145
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    const/16 v7, 0x1000

    :try_start_5c
    new-array v2, v7, [B

    .line 147
    .local v2, "bytes":[B
    :goto_5e
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "read":I
    if-lez v4, :cond_71

    .line 148
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_69

    goto :goto_5e

    .line 152
    .end local v2    # "bytes":[B
    .end local v4    # "read":I
    :catchall_69
    move-exception v7

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 153
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v7

    .line 150
    .restart local v2    # "bytes":[B
    .restart local v4    # "read":I
    :cond_71
    :try_start_71
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_69

    .line 152
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 153
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 155
    iget-object v7, p0, Lmobisocial/util/DroidPlatformImage;->_ImagePath:Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lmobisocial/util/DroidPlatformImage;->_ImageUri:Landroid/net/Uri;

    goto :goto_20
.end method

.method private static exifOrientationToDegrees(I)F
    .registers 2
    .param p0, "exifOrientation"    # I

    .prologue
    .line 343
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 344
    const/high16 v0, 0x42b40000    # 90.0f

    .line 350
    :goto_5
    return v0

    .line 345
    :cond_6
    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    .line 346
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_5

    .line 347
    :cond_c
    const/16 v0, 0x8

    if-ne p0, v0, :cond_13

    .line 348
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_5

    .line 350
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private getResizedImage(II)Ljava/io/File;
    .registers 9
    .param p1, "widthLimit"    # I
    .param p2, "heightLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Lmobisocial/util/DroidPlatformImage;->ensureLocalImage()V

    .line 161
    invoke-direct {p0, p1, p2}, Lmobisocial/util/DroidPlatformImage;->getResizedImageData(II)Ljava/io/File;

    move-result-object v1

    .line 162
    .local v1, "resizedImage":Ljava/io/File;
    if-nez v1, :cond_25

    .line 163
    const-string v2, "Omlib-utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decode image "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/util/DroidPlatformImage;->_OriginalImageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v1, 0x0

    .line 174
    .end local v1    # "resizedImage":Ljava/io/File;
    :cond_24
    :goto_24
    return-object v1

    .line 167
    .restart local v1    # "resizedImage":Ljava/io/File;
    :cond_25
    iget-object v2, p0, Lmobisocial/util/DroidPlatformImage;->_ImagePath:Ljava/io/File;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lmobisocial/util/DroidPlatformImage;->_ImagePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 169
    :try_start_31
    iget-object v2, p0, Lmobisocial/util/DroidPlatformImage;->_ImagePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lmobisocial/util/DroidPlatformImage;->ResizedWidth:I

    iget v5, p0, Lmobisocial/util/DroidPlatformImage;->ResizedHeight:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lmobisocial/util/DroidPlatformImage;->TransferEXIFMetadata(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_42} :catch_43

    goto :goto_24

    .line 170
    :catch_43
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Omlib-utils"

    const-string v3, "Failed to transfer EXIF metadata: {0}"

    invoke-static {v2, v3, v0}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24
.end method

.method public static getResizedImage(Landroid/content/Context;Landroid/net/Uri;I)Lmobisocial/util/DroidPlatformImage$ImageReference;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "longEdgeLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p0, p1, p2, p2}, Lmobisocial/util/DroidPlatformImage;->getResizedImage(Landroid/content/Context;Landroid/net/Uri;II)Lmobisocial/util/DroidPlatformImage$ImageReference;

    move-result-object v0

    return-object v0
.end method

.method public static getResizedImage(Landroid/content/Context;Landroid/net/Uri;II)Lmobisocial/util/DroidPlatformImage$ImageReference;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "widthLimit"    # I
    .param p3, "heightLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lmobisocial/util/DroidPlatformImage;

    invoke-direct {v0, p0, p1}, Lmobisocial/util/DroidPlatformImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 118
    .local v0, "img":Lmobisocial/util/DroidPlatformImage;
    invoke-direct {v0, p2, p3}, Lmobisocial/util/DroidPlatformImage;->getResizedImage(II)Ljava/io/File;

    move-result-object v2

    .line 119
    .local v2, "result":Ljava/io/File;
    const/4 v3, 0x0

    iput-object v3, v0, Lmobisocial/util/DroidPlatformImage;->_Context:Landroid/content/Context;

    .line 120
    new-instance v1, Lmobisocial/util/DroidPlatformImage$ImageReference;

    invoke-direct {v1}, Lmobisocial/util/DroidPlatformImage$ImageReference;-><init>()V

    .line 121
    .local v1, "r":Lmobisocial/util/DroidPlatformImage$ImageReference;
    iput-object v2, v1, Lmobisocial/util/DroidPlatformImage$ImageReference;->file:Ljava/io/File;

    .line 122
    iget v3, v0, Lmobisocial/util/DroidPlatformImage;->ResizedWidth:I

    iput v3, v1, Lmobisocial/util/DroidPlatformImage$ImageReference;->width:I

    .line 123
    iget v3, v0, Lmobisocial/util/DroidPlatformImage;->ResizedHeight:I

    iput v3, v1, Lmobisocial/util/DroidPlatformImage$ImageReference;->height:I

    .line 124
    iget-boolean v3, v0, Lmobisocial/util/DroidPlatformImage;->HasLocation:Z

    if-eqz v3, :cond_33

    .line 125
    new-instance v3, Ljava/lang/Double;

    iget v4, v0, Lmobisocial/util/DroidPlatformImage;->Latitude:F

    float-to-double v4, v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    iput-object v3, v1, Lmobisocial/util/DroidPlatformImage$ImageReference;->latitude:Ljava/lang/Double;

    .line 126
    new-instance v3, Ljava/lang/Double;

    iget v4, v0, Lmobisocial/util/DroidPlatformImage;->Longitude:F

    float-to-double v4, v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    iput-object v3, v1, Lmobisocial/util/DroidPlatformImage$ImageReference;->longitude:Ljava/lang/Double;

    .line 128
    :cond_33
    return-object v1
.end method

.method private getResizedImageData(II)Ljava/io/File;
    .registers 25
    .param p1, "widthLimit"    # I
    .param p2, "heightLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual/range {p0 .. p0}, Lmobisocial/util/DroidPlatformImage;->parseImageMetadata()V

    .line 199
    const/16 v3, 0x21c

    move/from16 v0, p1

    if-gt v0, v3, :cond_f

    const/16 v3, 0x21c

    move/from16 v0, p2

    if-le v0, v3, :cond_e3

    :cond_f
    const/16 v18, 0x4b

    .line 201
    .local v18, "quality":I
    :goto_11
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Lmobisocial/util/DroidPlatformImage;->decodeBoundsInfo()Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    .line 202
    .local v11, "decoded":Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x0

    .line 203
    .local v14, "inDensity":I
    const/16 v21, 0x0

    .line 204
    .local v21, "targetDensity":I
    move-object/from16 v0, p0

    iget v3, v0, Lmobisocial/util/DroidPlatformImage;->_Width:I

    move/from16 v0, p1

    if-gt v3, v0, :cond_28

    move-object/from16 v0, p0

    iget v3, v0, Lmobisocial/util/DroidPlatformImage;->_Height:I

    move/from16 v0, p2

    if-le v3, v0, :cond_10d

    .line 205
    :cond_28
    move-object/from16 v0, p0

    iget v3, v0, Lmobisocial/util/DroidPlatformImage;->_Width:I

    div-int v3, v3, p1

    move-object/from16 v0, p0

    iget v4, v0, Lmobisocial/util/DroidPlatformImage;->_Height:I

    div-int v4, v4, p2

    if-le v3, v4, :cond_ef

    .line 207
    move-object/from16 v0, p0

    iget v3, v0, Lmobisocial/util/DroidPlatformImage;->_Width:I

    mul-int v3, v3, p2

    move-object/from16 v0, p0

    iget v4, v0, Lmobisocial/util/DroidPlatformImage;->_Height:I

    mul-int v4, v4, p1

    if-le v3, v4, :cond_e7

    .line 209
    move-object/from16 v0, p0

    iget v14, v0, Lmobisocial/util/DroidPlatformImage;->_Width:I

    .line 210
    move/from16 v21, p1

    .line 236
    :goto_4a
    const-string v3, "resized-"

    const-string v4, ".dat"

    move-object/from16 v0, p0

    iget-object v5, v0, Lmobisocial/util/DroidPlatformImage;->_Context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v19

    .line 237
    .local v19, "resizedImage":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    .line 238
    .local v12, "directory":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_67

    .line 239
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 240
    :cond_67
    const/4 v9, 0x1

    .line 241
    .local v9, "attempts":I
    const/16 v20, 0x0

    .line 242
    .local v20, "success":Z
    if-nez v11, :cond_8b

    .line 243
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    .end local v11    # "decoded":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 244
    .restart local v11    # "decoded":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/util/DroidPlatformImage;->_Context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/util/DroidPlatformImage;->_ImageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-static {v3, v4}, Lmobisocial/util/PlatformUtils;->openInputStream(Landroid/content/Context;Ljava/net/URI;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 247
    :cond_8b
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v11, v0, v1}, Lmobisocial/util/DroidPlatformImage;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v15

    .line 249
    .local v15, "lowMemoryReduce":I
    :cond_93
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 250
    .local v16, "options":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, v16

    iput v14, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 251
    move-object/from16 v0, v16

    iput v15, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 252
    const/4 v3, 0x1

    move-object/from16 v0, v16

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 253
    mul-int v3, v21, v15

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 254
    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-le v3, v14, :cond_ba

    .line 255
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 256
    move-object/from16 v0, v16

    iput v14, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 258
    :cond_ba
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmobisocial/util/DroidPlatformImage;->_HasAlpha:Z

    if-eqz v3, :cond_c6

    .line 259
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_c6} :catch_1b1

    .line 262
    :cond_c6
    :try_start_c6
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/util/DroidPlatformImage;->_Context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/util/DroidPlatformImage;->_ImageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-static {v3, v4}, Lmobisocial/util/PlatformUtils;->openInputStream(Landroid/content/Context;Ljava/net/URI;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_dd
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c6 .. :try_end_dd} :catch_1a1
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_dd} :catch_1b1

    move-result-object v10

    .line 263
    .local v10, "b":Landroid/graphics/Bitmap;
    if-nez v10, :cond_12b

    .line 264
    const/16 v19, 0x0

    .line 303
    .end local v9    # "attempts":I
    .end local v10    # "b":Landroid/graphics/Bitmap;
    .end local v11    # "decoded":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "directory":Ljava/io/File;
    .end local v14    # "inDensity":I
    .end local v15    # "lowMemoryReduce":I
    .end local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "resizedImage":Ljava/io/File;
    .end local v20    # "success":Z
    .end local v21    # "targetDensity":I
    :cond_e2
    :goto_e2
    return-object v19

    .line 199
    .end local v18    # "quality":I
    :cond_e3
    const/16 v18, 0x4b

    goto/16 :goto_11

    .line 213
    .restart local v11    # "decoded":Landroid/graphics/BitmapFactory$Options;
    .restart local v14    # "inDensity":I
    .restart local v18    # "quality":I
    .restart local v21    # "targetDensity":I
    :cond_e7
    :try_start_e7
    move-object/from16 v0, p0

    iget v14, v0, Lmobisocial/util/DroidPlatformImage;->_Height:I

    .line 214
    move/from16 v21, p2

    goto/16 :goto_4a

    .line 218
    :cond_ef
    move-object/from16 v0, p0

    iget v3, v0, Lmobisocial/util/DroidPlatformImage;->_Width:I

    mul-int v3, v3, p1

    move-object/from16 v0, p0

    iget v4, v0, Lmobisocial/util/DroidPlatformImage;->_Height:I

    mul-int v4, v4, p2

    if-le v3, v4, :cond_105

    .line 220
    move-object/from16 v0, p0

    iget v14, v0, Lmobisocial/util/DroidPlatformImage;->_Width:I

    .line 221
    move/from16 v21, p2

    goto/16 :goto_4a

    .line 224
    :cond_105
    move-object/from16 v0, p0

    iget v14, v0, Lmobisocial/util/DroidPlatformImage;->_Height:I

    .line 225
    move/from16 v21, p1

    goto/16 :goto_4a

    .line 230
    :cond_10d
    move-object/from16 v0, p0

    iget v3, v0, Lmobisocial/util/DroidPlatformImage;->_Width:I

    move-object/from16 v0, p0

    iget v4, v0, Lmobisocial/util/DroidPlatformImage;->_Height:I

    if-le v3, v4, :cond_121

    .line 231
    move-object/from16 v0, p0

    iget v0, v0, Lmobisocial/util/DroidPlatformImage;->_Width:I

    move/from16 v21, v0

    move/from16 v14, v21

    goto/16 :goto_4a

    .line 233
    :cond_121
    move-object/from16 v0, p0

    iget v0, v0, Lmobisocial/util/DroidPlatformImage;->_Height:I

    move/from16 v21, v0
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_127} :catch_1b1

    move/from16 v14, v21

    goto/16 :goto_4a

    .line 266
    .restart local v9    # "attempts":I
    .restart local v10    # "b":Landroid/graphics/Bitmap;
    .restart local v12    # "directory":Ljava/io/File;
    .restart local v15    # "lowMemoryReduce":I
    .restart local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "resizedImage":Ljava/io/File;
    .restart local v20    # "success":Z
    :cond_12b
    :try_start_12b
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 267
    .local v7, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v3, v0, Lmobisocial/util/DroidPlatformImage;->_Rotation:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_153

    .line 268
    move-object/from16 v0, p0

    iget v3, v0, Lmobisocial/util/DroidPlatformImage;->_Rotation:F

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 269
    move-object v2, v10

    .line 270
    .local v2, "old":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 271
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 273
    .end local v2    # "old":Landroid/graphics/Bitmap;
    :cond_153
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_15c

    .line 274
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 276
    :cond_15c
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_165
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12b .. :try_end_165} :catch_1a1
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_165} :catch_1b1

    .line 278
    .local v17, "os":Ljava/io/OutputStream;
    :try_start_165
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmobisocial/util/DroidPlatformImage;->_HasAlpha:Z

    if-eqz v3, :cond_192

    .line 279
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v3, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_174
    .catchall {:try_start_165 .. :try_end_174} :catchall_19c

    .line 284
    :goto_174
    :try_start_174
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 286
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lmobisocial/util/DroidPlatformImage;->ResizedWidth:I

    .line 287
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lmobisocial/util/DroidPlatformImage;->ResizedHeight:I

    .line 289
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_18a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_174 .. :try_end_18a} :catch_1a1
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_18a} :catch_1b1

    .line 290
    const/16 v20, 0x1

    .line 298
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "b":Landroid/graphics/Bitmap;
    .end local v17    # "os":Ljava/io/OutputStream;
    :goto_18c
    if-nez v20, :cond_e2

    .line 299
    const/16 v19, 0x0

    goto/16 :goto_e2

    .line 281
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    .restart local v10    # "b":Landroid/graphics/Bitmap;
    .restart local v17    # "os":Ljava/io/OutputStream;
    :cond_192
    :try_start_192
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v3, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_19b
    .catchall {:try_start_192 .. :try_end_19b} :catchall_19c

    goto :goto_174

    .line 284
    :catchall_19c
    move-exception v3

    :try_start_19d
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    throw v3
    :try_end_1a1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19d .. :try_end_1a1} :catch_1a1
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a1} :catch_1b1

    .line 292
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "b":Landroid/graphics/Bitmap;
    .end local v17    # "os":Ljava/io/OutputStream;
    :catch_1a1
    move-exception v13

    .line 293
    .local v13, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1a2
    const-string v3, "Omlib-utils"

    const-string v4, "Android - getResizedImageData - image too big (OutOfMemoryError), will try  with smaller scale factor, cur scale factor"

    invoke-static {v3, v4, v13}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1a9} :catch_1b1

    .line 294
    mul-int/lit8 v15, v15, 0x2

    .line 296
    add-int/lit8 v9, v9, 0x1

    .line 297
    const/4 v3, 0x4

    if-lt v9, v3, :cond_93

    goto :goto_18c

    .line 301
    .end local v9    # "attempts":I
    .end local v11    # "decoded":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "directory":Ljava/io/File;
    .end local v13    # "e":Ljava/lang/OutOfMemoryError;
    .end local v14    # "inDensity":I
    .end local v15    # "lowMemoryReduce":I
    .end local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "resizedImage":Ljava/io/File;
    .end local v20    # "success":Z
    .end local v21    # "targetDensity":I
    :catch_1b1
    move-exception v13

    .line 302
    .local v13, "e":Ljava/lang/Exception;
    const-string v3, "Omlib-utils"

    const-string v4, "Failed to resize image!{0}"

    invoke-static {v3, v4, v13}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    const/16 v19, 0x0

    goto/16 :goto_e2
.end method


# virtual methods
.method TransferEXIFMetadata(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 11
    .param p1, "originalPath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 357
    .local v2, "oldexif":Landroid/media/ExifInterface;
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 358
    .local v1, "newexif":Landroid/media/ExifInterface;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 360
    .local v0, "build":I
    const/16 v3, 0xb

    if-lt v0, v3, :cond_49

    .line 361
    const-string v3, "FNumber"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 362
    const-string v3, "FNumber"

    const-string v4, "FNumber"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_23
    const-string v3, "ExposureTime"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 365
    const-string v3, "ExposureTime"

    const-string v4, "ExposureTime"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_36
    const-string v3, "ISOSpeedRatings"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 368
    const-string v3, "ISOSpeedRatings"

    const-string v4, "ISOSpeedRatings"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_49
    const/16 v3, 0x9

    if-lt v0, v3, :cond_73

    .line 373
    const-string v3, "GPSAltitude"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 374
    const-string v3, "GPSAltitude"

    const-string v4, "GPSAltitude"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_60
    const-string v3, "GPSAltitudeRef"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_73

    .line 377
    const-string v3, "GPSAltitudeRef"

    const-string v4, "GPSAltitudeRef"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_73
    const/16 v3, 0x8

    if-lt v0, v3, :cond_d6

    .line 382
    const-string v3, "FocalLength"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8a

    .line 383
    const-string v3, "FocalLength"

    const-string v4, "FocalLength"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_8a
    const-string v3, "GPSDateStamp"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9d

    .line 386
    const-string v3, "GPSDateStamp"

    const-string v4, "GPSDateStamp"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_9d
    const-string v3, "GPSProcessingMethod"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b0

    .line 389
    const-string v3, "GPSProcessingMethod"

    const-string v4, "GPSProcessingMethod"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_b0
    const-string v3, "GPSTimeStamp"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d6

    .line 392
    const-string v3, "GPSTimeStamp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "GPSTimeStamp"

    invoke-virtual {v2, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_d6
    const-string v3, "DateTime"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e9

    .line 396
    const-string v3, "DateTime"

    const-string v4, "DateTime"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_e9
    const-string v3, "Flash"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_fc

    .line 399
    const-string v3, "Flash"

    const-string v4, "Flash"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_fc
    const-string v3, "GPSLatitude"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10f

    .line 402
    const-string v3, "GPSLatitude"

    const-string v4, "GPSLatitude"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_10f
    const-string v3, "GPSLatitudeRef"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_122

    .line 405
    const-string v3, "GPSLatitudeRef"

    const-string v4, "GPSLatitudeRef"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_122
    const-string v3, "GPSLongitude"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_135

    .line 408
    const-string v3, "GPSLongitude"

    const-string v4, "GPSLongitude"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_135
    const-string v3, "GPSLatitudeRef"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_148

    .line 411
    const-string v3, "GPSLongitudeRef"

    const-string v4, "GPSLongitudeRef"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_148
    const-string v3, "ImageLength"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v3, "ImageWidth"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v3, "Make"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16d

    .line 417
    const-string v3, "Make"

    const-string v4, "Make"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_16d
    const-string v3, "Model"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_180

    .line 420
    const-string v3, "Model"

    const-string v4, "Model"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_180
    const-string v3, "WhiteBalance"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_193

    .line 426
    const-string v3, "WhiteBalance"

    const-string v4, "WhiteBalance"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_193
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 429
    return-void
.end method

.method decodeBoundsInfo()Landroid/graphics/BitmapFactory$Options;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 178
    iget-boolean v3, p0, Lmobisocial/util/DroidPlatformImage;->_DecodedBounds:Z

    if-eqz v3, :cond_8

    .line 179
    const/4 v0, 0x0

    .line 194
    :goto_7
    return-object v0

    .line 180
    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 181
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 182
    iget-object v3, p0, Lmobisocial/util/DroidPlatformImage;->_Context:Landroid/content/Context;

    iget-object v4, p0, Lmobisocial/util/DroidPlatformImage;->_ImageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-static {v3, v4}, Lmobisocial/util/PlatformUtils;->openInputStream(Landroid/content/Context;Ljava/net/URI;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 183
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lmobisocial/util/DroidPlatformImage;->_Width:I

    .line 184
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lmobisocial/util/DroidPlatformImage;->_Height:I

    .line 185
    iget v3, p0, Lmobisocial/util/DroidPlatformImage;->_Width:I

    iput v3, p0, Lmobisocial/util/DroidPlatformImage;->ResizedWidth:I

    .line 186
    iget v3, p0, Lmobisocial/util/DroidPlatformImage;->_Height:I

    iput v3, p0, Lmobisocial/util/DroidPlatformImage;->ResizedHeight:I

    .line 187
    iput-boolean v2, p0, Lmobisocial/util/DroidPlatformImage;->_DecodedBounds:Z

    .line 188
    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v3, :cond_54

    .line 189
    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v3, p0, Lmobisocial/util/DroidPlatformImage;->MimeType:Ljava/lang/String;

    .line 190
    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v4, "gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_50

    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v4, "png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    :cond_50
    move v1, v2

    :cond_51
    iput-boolean v1, p0, Lmobisocial/util/DroidPlatformImage;->_HasAlpha:Z

    goto :goto_7

    .line 192
    :cond_54
    const-string v1, "image/jpeg"

    iput-object v1, p0, Lmobisocial/util/DroidPlatformImage;->MimeType:Ljava/lang/String;

    goto :goto_7
.end method

.method parseImageMetadata()V
    .registers 10

    .prologue
    .line 309
    :try_start_0
    const-string v0, "content"

    iget-object v1, p0, Lmobisocial/util/DroidPlatformImage;->_OriginalImageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "mms"

    iget-object v1, p0, Lmobisocial/util/DroidPlatformImage;->_OriginalImageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 310
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "orientation"

    aput-object v1, v2, v0

    .line 311
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lmobisocial/util/DroidPlatformImage;->_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/util/DroidPlatformImage;->_OriginalImageUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_4d

    move-result-object v6

    .line 313
    .local v6, "c":Landroid/database/Cursor;
    :try_start_33
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 314
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmobisocial/util/DroidPlatformImage;->_Rotation:F
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_41} :catch_45
    .catchall {:try_start_33 .. :try_end_41} :catchall_56

    .line 319
    :cond_41
    :try_start_41
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_4d

    .line 340
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_44
    :goto_44
    return-void

    .line 316
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_45
    move-exception v7

    .line 317
    .local v7, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    :try_start_47
    iput v0, p0, Lmobisocial/util/DroidPlatformImage;->_Rotation:F
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_56

    .line 319
    :try_start_49
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_44

    .line 337
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_4d
    move-exception v7

    .line 338
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "Omlib-utils"

    const-string v1, "Failed parsing image metadata"

    invoke-static {v0, v1, v7}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_44

    .line 319
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_56
    move-exception v0

    :try_start_57
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 321
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_5b
    const-string v0, "file"

    iget-object v1, p0, Lmobisocial/util/DroidPlatformImage;->_OriginalImageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_66} :catch_4d

    move-result v0

    if-eqz v0, :cond_aa

    .line 323
    :try_start_69
    new-instance v0, Landroid/media/ExifInterface;

    iget-object v1, p0, Lmobisocial/util/DroidPlatformImage;->_OriginalImageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobisocial/util/DroidPlatformImage;->_Exif:Landroid/media/ExifInterface;

    .line 324
    iget-object v0, p0, Lmobisocial/util/DroidPlatformImage;->_Exif:Landroid/media/ExifInterface;

    const-string v1, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lmobisocial/util/DroidPlatformImage;->exifOrientationToDegrees(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lmobisocial/util/DroidPlatformImage;->_Rotation:F

    .line 325
    const/4 v0, 0x2

    new-array v8, v0, [F

    .line 326
    .local v8, "latlong":[F
    iget-object v0, p0, Lmobisocial/util/DroidPlatformImage;->_Exif:Landroid/media/ExifInterface;

    invoke-virtual {v0, v8}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v0

    iput-boolean v0, p0, Lmobisocial/util/DroidPlatformImage;->HasLocation:Z

    .line 327
    iget-boolean v0, p0, Lmobisocial/util/DroidPlatformImage;->HasLocation:Z

    if-eqz v0, :cond_44

    .line 328
    const/4 v0, 0x0

    aget v0, v8, v0

    iput v0, p0, Lmobisocial/util/DroidPlatformImage;->Latitude:F

    .line 329
    const/4 v0, 0x1

    aget v0, v8, v0

    iput v0, p0, Lmobisocial/util/DroidPlatformImage;->Longitude:F
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_a0} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_a0} :catch_4d

    goto :goto_44

    .line 331
    .end local v8    # "latlong":[F
    :catch_a1
    move-exception v7

    .line 332
    .local v7, "e":Ljava/io/IOException;
    :try_start_a2
    const-string v0, "Omlib-utils"

    const-string v1, "Error checking exif\n{0}"

    invoke-static {v0, v1, v7}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_44

    .line 335
    .end local v7    # "e":Ljava/io/IOException;
    :cond_aa
    const/4 v0, 0x0

    iput v0, p0, Lmobisocial/util/DroidPlatformImage;->_Rotation:F
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_ad} :catch_4d

    goto :goto_44
.end method
