.class public Lcom/duoku/platform/util/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/util/i$a;,
        Lcom/duoku/platform/util/i$b;,
        Lcom/duoku/platform/util/i$c;,
        Lcom/duoku/platform/util/i$d;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Runnable;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x1f4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/duoku/platform/util/i$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/duoku/platform/util/i$1;-><init>(Lcom/duoku/platform/util/i;IFZ)V

    iput-object v0, p0, Lcom/duoku/platform/util/i;->a:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/duoku/platform/util/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    new-instance v0, Lcom/duoku/platform/util/i$2;

    invoke-direct {v0, p0}, Lcom/duoku/platform/util/i$2;-><init>(Lcom/duoku/platform/util/i;)V

    iput-object v0, p0, Lcom/duoku/platform/util/i;->c:Ljava/lang/Runnable;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/util/i;->d:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/util/i;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/duoku/platform/util/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private a()V
    .registers 1

    .prologue
    .line 75
    return-void
.end method

.method private b()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/duoku/platform/util/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 83
    iget-object v0, p0, Lcom/duoku/platform/util/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 84
    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/util/i;)V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/duoku/platform/util/i;->b()V

    return-void
.end method

.method private c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/duoku/platform/util/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 118
    if-eqz v0, :cond_19

    .line 120
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 121
    if-nez v0, :cond_18

    .line 123
    iget-object v1, p0, Lcom/duoku/platform/util/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_18
    :goto_18
    return-object v0

    :cond_19
    move-object v0, v1

    goto :goto_18
.end method

.method private d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 137
    .line 138
    iget-object v1, p0, Lcom/duoku/platform/util/i;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 140
    :try_start_3
    iget-object v0, p0, Lcom/duoku/platform/util/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 141
    if-eqz v0, :cond_17

    .line 143
    iget-object v2, p0, Lcom/duoku/platform/util/i;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v2, p0, Lcom/duoku/platform/util/i;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_17
    monitor-exit v1

    .line 147
    return-object v0

    .line 138
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 94
    .line 95
    invoke-direct {p0, p1}, Lcom/duoku/platform/util/i;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_7

    .line 105
    :cond_6
    :goto_6
    return-object v0

    .line 100
    :cond_7
    invoke-direct {p0, p1}, Lcom/duoku/platform/util/i;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_6

    goto :goto_6
.end method

.method public a(Landroid/content/Context;Lcom/duoku/platform/push/e;)V
    .registers 6

    .prologue
    .line 277
    invoke-virtual {p2}, Lcom/duoku/platform/push/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/util/i;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 278
    if-nez v0, :cond_1c

    .line 280
    new-instance v0, Lcom/duoku/platform/util/i$c;

    invoke-direct {v0, p0}, Lcom/duoku/platform/util/i$c;-><init>(Lcom/duoku/platform/util/i;)V

    .line 281
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/i$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 287
    :goto_1b
    return-void

    .line 285
    :cond_1c
    invoke-static {p1}, Lcom/duoku/platform/push/c;->a(Landroid/content/Context;)Lcom/duoku/platform/push/c;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/duoku/platform/push/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/duoku/platform/push/e;)V

    goto :goto_1b
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 309
    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    .line 317
    :cond_4
    :goto_4
    return-void

    .line 313
    :cond_5
    iget-object v1, p0, Lcom/duoku/platform/util/i;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 315
    :try_start_8
    iget-object v0, p0, Lcom/duoku/platform/util/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    monitor-exit v1

    goto :goto_4

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public a(Ljava/lang/String;Landroid/widget/BaseAdapter;Landroid/widget/ImageView;)V
    .registers 7

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/duoku/platform/util/i;->a()V

    .line 185
    invoke-virtual {p0, p1}, Lcom/duoku/platform/util/i;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
    if-nez v0, :cond_1e

    .line 188
    new-instance v0, Lcom/duoku/platform/util/i$a;

    invoke-direct {v0, p0}, Lcom/duoku/platform/util/i$a;-><init>(Lcom/duoku/platform/util/i;)V

    .line 189
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/i$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 199
    :cond_1d
    :goto_1d
    return-void

    .line 193
    :cond_1e
    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 195
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1d
.end method

.method public a(Ljava/lang/String;Landroid/widget/BaseAdapter;Lcom/duoku/platform/a/i$a;)V
    .registers 8

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/duoku/platform/util/i;->a()V

    .line 160
    invoke-virtual {p0, p1}, Lcom/duoku/platform/util/i;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    if-nez v0, :cond_20

    .line 163
    new-instance v0, Lcom/duoku/platform/util/i$a;

    invoke-direct {v0, p0}, Lcom/duoku/platform/util/i$a;-><init>(Lcom/duoku/platform/util/i;)V

    .line 164
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    iget-object v3, p3, Lcom/duoku/platform/a/i$a;->a:Landroid/widget/ImageView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/i$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 173
    :cond_1f
    :goto_1f
    return-void

    .line 168
    :cond_20
    iget-object v1, p3, Lcom/duoku/platform/a/i$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 170
    iget-object v1, p3, Lcom/duoku/platform/a/i$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1f
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 6

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/duoku/platform/util/i;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    if-nez v0, :cond_18

    .line 214
    new-instance v0, Lcom/duoku/platform/util/i$d;

    invoke-direct {v0, p0}, Lcom/duoku/platform/util/i$d;-><init>(Lcom/duoku/platform/util/i;)V

    .line 215
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/i$d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 222
    :goto_17
    return-void

    .line 219
    :cond_18
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_17
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 226
    invoke-virtual {p0, p1}, Lcom/duoku/platform/util/i;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    if-nez v0, :cond_1a

    .line 229
    if-eqz p1, :cond_13

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 238
    :cond_13
    sget-object v0, Lcom/duoku/platform/util/q;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/duoku/platform/util/q;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 240
    :cond_1a
    if-nez v0, :cond_3c

    .line 242
    if-ne p3, v2, :cond_2d

    .line 244
    new-instance v0, Lcom/duoku/platform/util/i$d;

    invoke-direct {v0, p0}, Lcom/duoku/platform/util/i$d;-><init>(Lcom/duoku/platform/util/i;)V

    .line 245
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/i$d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 266
    :goto_2c
    return-void

    .line 249
    :cond_2d
    new-instance v0, Lcom/duoku/platform/util/i$b;

    invoke-direct {v0, p0}, Lcom/duoku/platform/util/i$b;-><init>(Lcom/duoku/platform/util/i;)V

    .line 250
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/i$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2c

    .line 255
    :cond_3c
    if-ne p3, v2, :cond_42

    .line 257
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2c

    .line 261
    :cond_42
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2c
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 461
    .line 462
    const-string v0, "Android"

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 463
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 464
    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 465
    const/16 v3, 0xbb8

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 471
    :try_start_15
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_15 .. :try_end_1a} :catch_a8
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_89
    .catchall {:try_start_15 .. :try_end_1a} :catchall_98

    .line 472
    :try_start_1a
    const-string v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1a .. :try_end_1f} :catch_79
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_a6
    .catchall {:try_start_1a .. :try_end_1f} :catchall_98

    move-result v2

    if-nez v2, :cond_28

    .line 513
    check-cast v0, Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 515
    :goto_27
    return-object v1

    .line 476
    :cond_28
    :try_start_28
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 477
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 478
    const/16 v5, 0xc8

    if-eq v3, v5, :cond_52

    .line 480
    const-string v2, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "func [loadImage] stateCode="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_28 .. :try_end_4c} :catch_79
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_4c} :catch_a6
    .catchall {:try_start_28 .. :try_end_4c} :catchall_98

    .line 513
    check-cast v0, Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_27

    .line 483
    :cond_52
    :try_start_52
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_55
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_52 .. :try_end_55} :catch_79
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_a6
    .catchall {:try_start_52 .. :try_end_55} :catchall_98

    move-result-object v5

    .line 484
    if-eqz v5, :cond_9f

    .line 488
    :try_start_58
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_6e

    move-result-object v3

    .line 489
    :try_start_5c
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_ab

    move-result-object v1

    .line 493
    if-eqz v3, :cond_65

    .line 495
    :try_start_62
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 497
    :cond_65
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_68
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_62 .. :try_end_68} :catch_79
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_68} :catch_a6
    .catchall {:try_start_62 .. :try_end_68} :catchall_98

    .line 513
    check-cast v0, Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_27

    .line 492
    :catchall_6e
    move-exception v2

    move-object v3, v1

    .line 493
    :goto_70
    if-eqz v3, :cond_75

    .line 495
    :try_start_72
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 497
    :cond_75
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 498
    throw v2
    :try_end_79
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_72 .. :try_end_79} :catch_79
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_79} :catch_a6
    .catchall {:try_start_72 .. :try_end_79} :catchall_98

    .line 501
    :catch_79
    move-exception v2

    move-object v3, v4

    .line 503
    :goto_7b
    :try_start_7b
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 504
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_98

    .line 513
    check-cast v0, Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v0, v1

    :goto_87
    move-object v1, v0

    .line 515
    goto :goto_27

    .line 506
    :catch_89
    move-exception v2

    move-object v4, v1

    .line 508
    :goto_8b
    :try_start_8b
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 509
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_91
    .catchall {:try_start_8b .. :try_end_91} :catchall_98

    .line 513
    check-cast v0, Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v0, v1

    goto :goto_87

    .line 512
    :catchall_98
    move-exception v1

    .line 513
    check-cast v0, Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 514
    throw v1

    .line 513
    :cond_9f
    check-cast v0, Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v0, v1

    goto :goto_87

    .line 506
    :catch_a6
    move-exception v2

    goto :goto_8b

    .line 501
    :catch_a8
    move-exception v2

    move-object v3, v1

    goto :goto_7b

    .line 492
    :catchall_ab
    move-exception v2

    goto :goto_70
.end method
