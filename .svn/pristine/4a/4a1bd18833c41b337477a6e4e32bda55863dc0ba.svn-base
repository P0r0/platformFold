.class public Lcom/gionee/gsp/util/GnUtils;
.super Ljava/lang/Object;
.source "GnUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HexString2Bytes(Ljava/lang/String;)[B
    .registers 6
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    .line 302
    .local v1, "ret":[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 303
    .local v2, "tmp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    array-length v3, v1

    if-lt v0, v3, :cond_11

    .line 306
    return-object v1

    .line 304
    :cond_11
    mul-int/lit8 v3, v0, 0x2

    aget-byte v3, v2, v3

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v2, v4

    invoke-static {v3, v4}, Lcom/gionee/gsp/util/GnUtils;->uniteBytes(BB)B

    move-result v3

    aput-byte v3, v1, v0

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public static addSeparatorToPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 126
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 130
    .end local p0    # "path":Ljava/lang/String;
    :cond_1b
    return-object p0
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .registers 4
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 164
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 165
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 166
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static bytes2Bimap([B)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "b"    # [B

    .prologue
    .line 181
    array-length v0, p0

    if-eqz v0, :cond_a

    .line 182
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static bytes2Drawable([B)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0, "bytes"    # [B

    .prologue
    .line 190
    invoke-static {p0}, Lcom/gionee/gsp/util/GnUtils;->bytes2Bimap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 192
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationId"    # I

    .prologue
    .line 196
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 198
    .local v0, "manager":Landroid/app/NotificationManager;
    :try_start_8
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    .line 201
    :goto_b
    return-void

    .line 199
    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method public static varargs closeIOStream([Ljava/io/Closeable;)V
    .registers 6
    .param p0, "closeable"    # [Ljava/io/Closeable;

    .prologue
    .line 411
    invoke-static {p0}, Lcom/gionee/gsp/util/GnUtils;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 426
    :cond_6
    return-void

    .line 414
    :cond_7
    array-length v3, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_6

    aget-object v0, p0, v2

    .line 416
    .local v0, "ca":Ljava/io/Closeable;
    :try_start_d
    invoke-static {v0}, Lcom/gionee/gsp/util/GnUtils;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 414
    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 419
    :cond_16
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_1b

    .line 420
    const/4 v0, 0x0

    goto :goto_13

    .line 421
    :catch_1b
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public static varargs disconnectHttpURLConnection([Ljava/net/HttpURLConnection;)V
    .registers 6
    .param p0, "httpURLConnection"    # [Ljava/net/HttpURLConnection;

    .prologue
    .line 434
    invoke-static {p0}, Lcom/gionee/gsp/util/GnUtils;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 449
    :cond_6
    return-void

    .line 437
    :cond_7
    array-length v3, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_6

    aget-object v1, p0, v2

    .line 439
    .local v1, "hc":Ljava/net/HttpURLConnection;
    :try_start_d
    invoke-static {v1}, Lcom/gionee/gsp/util/GnUtils;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 437
    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 442
    :cond_16
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_1b

    .line 443
    const/4 v1, 0x0

    goto :goto_13

    .line 444
    :catch_1b
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 170
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 171
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2a

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 170
    :goto_12
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 175
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 176
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 177
    return-object v0

    .line 171
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_2a
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_12
.end method

.method public static drawable2Bytes(Landroid/graphics/drawable/Drawable;)[B
    .registers 3
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 159
    invoke-static {p0}, Lcom/gionee/gsp/util/GnUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    return-object v1
.end method

.method public static fetchActivityIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 117
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_5
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v1

    .line 122
    :goto_9
    return-object v1

    .line 118
    :catch_a
    move-exception v0

    .line 119
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_9
.end method

.method public static fetchApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 105
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_5
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v1

    .line 110
    :goto_9
    return-object v1

    .line 106
    :catch_a
    move-exception v0

    .line 107
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_9
.end method

.method public static formatFileLength(J)Ljava/lang/String;
    .registers 16
    .param p0, "fileLength"    # J

    .prologue
    const-wide/16 v12, 0x400

    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 134
    const-wide/16 v4, 0x400

    .line 135
    .local v4, "kb":J
    mul-long v6, v4, v12

    .line 136
    .local v6, "mb":J
    mul-long v2, v6, v12

    .line 138
    .local v2, "gb":J
    cmp-long v1, p0, v2

    if-ltz v1, :cond_22

    .line 139
    const-string v1, "%.1f GB"

    new-array v8, v9, [Ljava/lang/Object;

    long-to-float v9, p0

    long-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 147
    :goto_21
    return-object v1

    .line 140
    :cond_22
    cmp-long v1, p0, v6

    if-ltz v1, :cond_40

    .line 141
    long-to-float v1, p0

    long-to-float v8, v6

    div-float v0, v1, v8

    .line 142
    .local v0, "f":F
    cmpl-float v1, v0, v10

    if-lez v1, :cond_3d

    const-string v1, "%.0f MB"

    :goto_30
    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_3d
    const-string v1, "%.1f MB"

    goto :goto_30

    .line 143
    .end local v0    # "f":F
    :cond_40
    cmp-long v1, p0, v4

    if-ltz v1, :cond_5e

    .line 144
    long-to-float v1, p0

    long-to-float v8, v4

    div-float v0, v1, v8

    .line 145
    .restart local v0    # "f":F
    cmpl-float v1, v0, v10

    if-lez v1, :cond_5b

    const-string v1, "%.0f KB"

    :goto_4e
    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_5b
    const-string v1, "%.1f KB"

    goto :goto_4e

    .line 147
    .end local v0    # "f":F
    :cond_5e
    const-string v1, "%d B"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_21
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 349
    const-string v3, ""

    .line 351
    .local v3, "versionName":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 352
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 353
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 354
    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_1c

    move-result v4

    if-gtz v4, :cond_24

    .line 355
    :cond_19
    const-string v4, ""

    .line 360
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_1b
    return-object v4

    .line 357
    :catch_1c
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "VersionInfo"

    const-string v5, "Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24
    move-object v4, v3

    .line 360
    goto :goto_1b
.end method

.method public static getErrorInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 8
    .param p0, "arg1"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 316
    const/4 v1, 0x0

    .line 318
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_3
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 319
    .local v3, "writer":Ljava/io/Writer;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1f

    .line 320
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .local v2, "pw":Ljava/io/PrintWriter;
    :try_start_d
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 321
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 322
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_28

    move-result-object v0

    .line 324
    .local v0, "error":Ljava/lang/String;
    new-array v4, v5, [Ljava/io/Closeable;

    .line 325
    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/gionee/gsp/util/GnUtils;->closeIOStream([Ljava/io/Closeable;)V

    .line 323
    return-object v0

    .line 324
    .end local v0    # "error":Ljava/lang/String;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "writer":Ljava/io/Writer;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    :catchall_1f
    move-exception v4

    :goto_20
    new-array v5, v5, [Ljava/io/Closeable;

    .line 325
    aput-object v1, v5, v6

    invoke-static {v5}, Lcom/gionee/gsp/util/GnUtils;->closeIOStream([Ljava/io/Closeable;)V

    .line 326
    throw v4

    .line 324
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "writer":Ljava/io/Writer;
    :catchall_28
    move-exception v4

    move-object v1, v2

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    goto :goto_20
.end method

.method public static declared-synchronized getFormatedTime(J)Ljava/lang/String;
    .registers 6
    .param p0, "time"    # J

    .prologue
    .line 70
    const-class v3, Lcom/gionee/gsp/util/GnUtils;

    monitor-enter v3

    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 71
    .local v0, "dt":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "fmt":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 70
    .end local v0    # "dt":Ljava/util/Date;
    .end local v1    # "fmt":Ljava/text/SimpleDateFormat;
    :catchall_15
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getFunctionName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .local v0, "sb":Ljava/lang/StringBuffer;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_26

    .line 52
    :goto_21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 50
    :catch_26
    move-exception v1

    goto :goto_21
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 216
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 217
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_13

    .line 218
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 220
    :goto_12
    return v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public static getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 9
    .param p0, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v2, 0x0

    .line 86
    .local v2, "service":Ljava/lang/Object;
    :try_start_1
    const-string v3, "android.os.ServiceManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 87
    .local v1, "getService":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1f} :catch_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1f} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1f} :catch_2d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1f} :catch_32

    move-result-object v2

    .line 98
    .end local v1    # "getService":Ljava/lang/reflect/Method;
    .end local v2    # "service":Ljava/lang/Object;
    :goto_20
    check-cast v2, Landroid/os/IBinder;

    return-object v2

    .line 88
    .restart local v2    # "service":Ljava/lang/Object;
    :catch_23
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_20

    .line 90
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_28
    move-exception v0

    .line 91
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_20

    .line 92
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_2d
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_20

    .line 94
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_32
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_20
.end method

.method public static getThreadName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 56
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v1, "sb":Ljava/lang/StringBuffer;
    :try_start_5
    const-string v2, "-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_31} :catch_36

    .line 66
    :goto_31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 63
    :catch_36
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    goto :goto_31
.end method

.method public static getVersionInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 336
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 337
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 338
    .local v1, "info":Landroid/content/pm/PackageInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "App version: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_25

    move-result-object v3

    .line 341
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_24
    return-object v3

    .line 339
    :catch_25
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 341
    const-string v3, "Unkown version: "

    goto :goto_24
.end method

.method public static is2GCmwap(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 225
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 226
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_2a

    .line 227
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "netType":Ljava/lang/String;
    if-eqz v1, :cond_2a

    const-string v3, "cmwap"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 229
    const/4 v3, 0x1

    .line 232
    .end local v1    # "netType":Ljava/lang/String;
    :goto_29
    return v3

    :cond_2a
    const/4 v3, 0x0

    goto :goto_29
.end method

.method public static isDateToday(J)Z
    .registers 10
    .param p0, "time"    # J

    .prologue
    const-wide/32 v6, 0x5265c00

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 209
    .local v0, "now":J
    div-long v2, p0, v6

    .line 210
    .local v2, "t1":J
    div-long v4, v0, v6

    .line 211
    .local v4, "t2":J
    cmp-long v6, v2, v4

    if-nez v6, :cond_11

    const/4 v6, 0x1

    :goto_10
    return v6

    :cond_11
    const/4 v6, 0x0

    goto :goto_10
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 241
    invoke-static {}, Lcom/gionee/gsp/util/GnUtils;->getFunctionName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gionee/gsp/util/GnLogUtil;->d(Ljava/lang/String;)V

    .line 242
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 244
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 245
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 246
    .local v1, "networkinfo":Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/gionee/gsp/util/GnUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v2, 0x1

    .line 249
    .end local v1    # "networkinfo":Landroid/net/NetworkInfo;
    :cond_27
    return v2
.end method

.method public static isNotNull(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 273
    invoke-static {p0}, Lcom/gionee/gsp/util/GnUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 259
    if-eqz p0, :cond_12

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 260
    :cond_12
    const/4 v0, 0x1

    .line 263
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 204
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    return-void
.end method

.method public static taskListToLong(Ljava/util/List;)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    .line 77
    .local v0, "all":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_a

    .line 80
    return-wide v0

    .line 78
    :cond_a
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    or-long/2addr v0, v4

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public static uniteBytes(BB)B
    .registers 10
    .param p0, "src0"    # B
    .param p1, "src1"    # B

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    new-array v5, v7, [B

    aput-byte p0, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 287
    .local v0, "_b0":B
    shl-int/lit8 v3, v0, 0x4

    int-to-byte v0, v3

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    new-array v5, v7, [B

    aput-byte p1, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 289
    .local v1, "_b1":B
    xor-int v3, v0, v1

    int-to-byte v2, v3

    .line 290
    .local v2, "ret":B
    return v2
.end method
