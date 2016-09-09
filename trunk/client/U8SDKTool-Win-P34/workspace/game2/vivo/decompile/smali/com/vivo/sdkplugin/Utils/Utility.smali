.class public Lcom/vivo/sdkplugin/Utils/Utility;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_CONTENT_MIME:Ljava/lang/String; = "text/html; charset=UTF-8"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapFromNet(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :try_start_b
    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1c

    :cond_1b
    :goto_1b
    return-object v0

    :cond_1c
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_1f} :catch_38
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1f} :catch_45

    move-result-object v2

    if-eqz v2, :cond_1b

    :try_start_22
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_34

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_33} :catch_3d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_22 .. :try_end_33} :catch_4a
    .catchall {:try_start_22 .. :try_end_33} :catchall_55

    move-result-object v0

    :cond_34
    :try_start_34
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_37
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_34 .. :try_end_37} :catch_38
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_45

    goto :goto_1b

    :catch_38
    move-exception v1

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1b

    :catch_3d
    move-exception v1

    :try_start_3e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_55

    :try_start_41
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_44
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_41 .. :try_end_44} :catch_38
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_1b

    :catch_45
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    :catch_4a
    move-exception v1

    :try_start_4b
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_55

    :try_start_51
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto :goto_1b

    :catchall_55
    move-exception v1

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v1
    :try_end_5a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_51 .. :try_end_5a} :catch_38
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5a} :catch_45
.end method

.method public static getSimpleDateString(J)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
