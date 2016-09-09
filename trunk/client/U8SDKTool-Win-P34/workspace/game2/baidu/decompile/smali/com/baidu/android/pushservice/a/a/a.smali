.class public Lcom/baidu/android/pushservice/a/a/a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/a/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/android/pushservice/a/a/a$a;

.field private b:[Landroid/net/Uri;

.field private c:I


# direct methods
.method public varargs constructor <init>(ILcom/baidu/android/pushservice/a/a/a$a;[Landroid/net/Uri;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const v0, 0x1fa400

    iput v0, p0, Lcom/baidu/android/pushservice/a/a/a;->c:I

    if-nez p2, :cond_12

    const-string v0, "DownLoadThread"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    iput p1, p0, Lcom/baidu/android/pushservice/a/a/a;->c:I

    iput-object p2, p0, Lcom/baidu/android/pushservice/a/a/a;->a:Lcom/baidu/android/pushservice/a/a/a$a;

    iput-object p3, p0, Lcom/baidu/android/pushservice/a/a/a;->b:[Landroid/net/Uri;

    goto :goto_11
.end method

.method static a(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/baidu/android/pushservice/a/a/a;->b(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    const/16 v0, 0x8

    if-gt v1, v0, :cond_e

    const/4 v0, 0x1

    :goto_9
    if-ge v0, v1, :cond_14

    shl-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_e
    add-int/lit8 v0, v1, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    :cond_14
    return v0
.end method

.method private a(Landroid/net/Uri;)[B
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p1}, Lcom/baidu/android/pushservice/a/a/f;->a(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_13
    const-string v1, "DownLoadThread"

    const-string v2, "getInputStreamFromUri function\'s uri param is error"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    return-object v0

    :cond_1b
    :try_start_1b
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/baidu/android/pushservice/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/f/b;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/android/pushservice/f/c;->a(Ljava/io/InputStream;)[B
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2d} :catch_2f

    move-result-object v0

    goto :goto_1a

    :catch_2f
    move-exception v1

    const-string v1, "DownLoadThread"

    const-string v2, "Uri can\'t open a inputstream"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method private a([Landroid/net/Uri;)[Landroid/graphics/Bitmap;
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    array-length v1, p1

    if-ge v1, v3, :cond_a

    :cond_8
    move-object v0, v2

    :goto_9
    return-object v0

    :cond_a
    array-length v1, p1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    :goto_d
    array-length v3, p1

    if-ge v0, v3, :cond_6a

    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Lcom/baidu/android/pushservice/a/a/a;->a(Landroid/net/Uri;)[B

    move-result-object v3

    if-eqz v3, :cond_3f

    :try_start_18
    array-length v4, v3

    if-lez v4, :cond_3f

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v3, v5, v6, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v5, -0x1

    iget v6, p0, Lcom/baidu/android/pushservice/a/a/a;->c:I

    invoke-static {v4, v5, v6}, Lcom/baidu/android/pushservice/a/a/a;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v3, v5, v6, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v0

    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_3f
    const/4 v3, 0x0

    aput-object v3, v1, v0
    :try_end_42
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_42} :catch_43
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_42} :catch_4e

    goto :goto_3c

    :catch_43
    move-exception v3

    const-string v3, "DownLoadThread"

    const-string v4, "out of memory err no bitmap found"

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    goto :goto_3c

    :catch_4e
    move-exception v3

    const-string v4, "DownLoadThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    goto :goto_3c

    :cond_6a
    move-object v0, v1

    goto :goto_9
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 14

    const/4 v1, 0x1

    const/4 v10, -0x1

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, v0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v0

    if-ne p2, v10, :cond_12

    move v0, v1

    :goto_b
    if-ne p1, v10, :cond_20

    const/16 v2, 0x80

    :goto_f
    if-ge v2, v0, :cond_32

    :cond_11
    :goto_11
    return v0

    :cond_12
    mul-double v6, v2, v4

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    goto :goto_b

    :cond_20
    int-to-double v6, p1

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_f

    :cond_32
    if-ne p2, v10, :cond_38

    if-ne p1, v10, :cond_38

    move v0, v1

    goto :goto_11

    :cond_38
    if-eq p1, v10, :cond_11

    move v0, v2

    goto :goto_11
.end method


# virtual methods
.method protected a([Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/android/pushservice/a/a/a;->a:Lcom/baidu/android/pushservice/a/a/a$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/android/pushservice/a/a/a;->a:Lcom/baidu/android/pushservice/a/a/a$a;

    invoke-interface {v0, p1}, Lcom/baidu/android/pushservice/a/a/a$a;->a([Landroid/graphics/Bitmap;)V

    :cond_9
    return-void
.end method

.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/a/a/a;->b:[Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/a/a/a;->a([Landroid/net/Uri;)[Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/a/a/a;->a([Landroid/graphics/Bitmap;)V

    return-void
.end method
