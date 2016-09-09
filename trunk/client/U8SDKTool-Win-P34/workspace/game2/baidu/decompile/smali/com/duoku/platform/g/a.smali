.class public Lcom/duoku/platform/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/duoku/platform/util/k;

.field private b:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Handler;

.field private j:I

.field private k:Lorg/apache/http/client/methods/HttpGet;

.field private l:Z

.field private m:I

.field private n:I

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/io/File;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-class v0, Lcom/duoku/platform/g/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/g/a;->a:Lcom/duoku/platform/util/k;

    .line 53
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/duoku/platform/g/a;->b:Ljava/util/concurrent/FutureTask;

    .line 57
    iput-boolean v1, p0, Lcom/duoku/platform/g/a;->d:Z

    .line 59
    const/16 v0, 0x7530

    iput v0, p0, Lcom/duoku/platform/g/a;->f:I

    .line 61
    iput-boolean v1, p0, Lcom/duoku/platform/g/a;->g:Z

    .line 67
    iput-object v2, p0, Lcom/duoku/platform/g/a;->k:Lorg/apache/http/client/methods/HttpGet;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/g/a;->l:Z

    .line 70
    iput v1, p0, Lcom/duoku/platform/g/a;->m:I

    .line 709
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/g/a;->o:Ljava/util/Map;

    .line 49
    return-void
.end method

.method private a(JJ)V
    .registers 8

    .prologue
    .line 300
    new-instance v0, Lcom/duoku/platform/g/h;

    invoke-direct {v0}, Lcom/duoku/platform/g/h;-><init>()V

    .line 301
    sget-object v1, Lcom/duoku/platform/g/h$a;->c:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/h;->a(Lcom/duoku/platform/g/h$a;)V

    .line 302
    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/g/h;->b(J)V

    .line 303
    invoke-virtual {v0, p3, p4}, Lcom/duoku/platform/g/h;->a(J)V

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/h;->b(I)V

    .line 307
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 308
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 310
    invoke-virtual {p0, v1}, Lcom/duoku/platform/g/a;->a(Landroid/os/Message;)V

    .line 311
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 316
    new-instance v0, Lcom/duoku/platform/g/h;

    invoke-direct {v0}, Lcom/duoku/platform/g/h;-><init>()V

    .line 317
    iget-boolean v1, p0, Lcom/duoku/platform/g/a;->g:Z

    if-eqz v1, :cond_23

    .line 319
    sget-object v1, Lcom/duoku/platform/g/h$a;->e:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/h;->a(Lcom/duoku/platform/g/h$a;)V

    .line 330
    :goto_e
    invoke-virtual {v0, p1}, Lcom/duoku/platform/g/h;->a(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/h;->b(I)V

    .line 334
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 335
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    invoke-virtual {p0, v1}, Lcom/duoku/platform/g/a;->a(Landroid/os/Message;)V

    .line 338
    return-void

    .line 327
    :cond_23
    sget-object v1, Lcom/duoku/platform/g/h$a;->b:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/h;->a(Lcom/duoku/platform/g/h$a;)V

    .line 328
    invoke-virtual {v0, p2}, Lcom/duoku/platform/g/h;->a(I)V

    goto :goto_e
.end method

.method private a([B)V
    .registers 9

    .prologue
    const/16 v6, 0x3f9

    const/16 v5, 0x3e8

    .line 342
    new-instance v1, Lcom/duoku/platform/g/h;

    invoke-direct {v1}, Lcom/duoku/platform/g/h;-><init>()V

    .line 343
    iget-boolean v0, p0, Lcom/duoku/platform/g/a;->g:Z

    if-eqz v0, :cond_24

    .line 345
    sget-object v0, Lcom/duoku/platform/g/h$a;->d:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/g/h;->a(Lcom/duoku/platform/g/h$a;)V

    .line 419
    :goto_12
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/g/h;->b(I)V

    .line 422
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 423
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 425
    invoke-virtual {p0, v0}, Lcom/duoku/platform/g/a;->a(Landroid/os/Message;)V

    .line 426
    return-void

    .line 350
    :cond_24
    sget-object v0, Lcom/duoku/platform/g/h$a;->a:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/g/h;->a(Lcom/duoku/platform/g/h$a;)V

    .line 352
    invoke-virtual {p0}, Lcom/duoku/platform/g/a;->a()I

    move-result v0

    .line 353
    packed-switch v0, :pswitch_data_ba

    goto :goto_12

    .line 358
    :pswitch_31
    const-string v0, ""

    .line 361
    :try_start_33
    new-instance v0, Lcom/duoku/platform/util/a;

    invoke-direct {v0}, Lcom/duoku/platform/util/a;-><init>()V

    .line 362
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/duoku/platform/util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    iget-object v2, p0, Lcom/duoku/platform/g/a;->a:Lcom/duoku/platform/util/k;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "response data is"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/util/k;->b(Ljava/lang/String;)V

    .line 364
    iget v2, p0, Lcom/duoku/platform/g/a;->j:I

    invoke-static {v2, v0}, Lcom/duoku/platform/f/b;->a(ILjava/lang/String;)Lcom/duoku/platform/h/a;

    move-result-object v0

    .line 365
    invoke-virtual {v1, v0}, Lcom/duoku/platform/g/h;->a(Lcom/duoku/platform/h/a;)V
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_60} :catch_61
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_60} :catch_6e

    goto :goto_12

    .line 368
    :catch_61
    move-exception v0

    .line 371
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 372
    invoke-virtual {v1, v6}, Lcom/duoku/platform/g/h;->a(I)V

    .line 373
    const-string v0, "parse json error"

    invoke-virtual {v1, v0}, Lcom/duoku/platform/g/h;->a(Ljava/lang/String;)V

    goto :goto_12

    .line 375
    :catch_6e
    move-exception v0

    .line 378
    invoke-virtual {v1, v5}, Lcom/duoku/platform/g/h;->a(I)V

    .line 379
    const-string v0, "receive data error"

    invoke-virtual {v1, v0}, Lcom/duoku/platform/g/h;->a(Ljava/lang/String;)V

    goto :goto_12

    .line 389
    :pswitch_78
    const-string v0, ""

    .line 392
    :try_start_7a
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/duoku/platform/g/a;->a:Lcom/duoku/platform/util/k;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "response data is"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/util/k;->b(Ljava/lang/String;)V

    .line 394
    iget v2, p0, Lcom/duoku/platform/g/a;->j:I

    invoke-static {v2, v0}, Lcom/duoku/platform/f/b;->a(ILjava/lang/String;)Lcom/duoku/platform/h/a;

    move-result-object v0

    .line 395
    invoke-virtual {v1, v0}, Lcom/duoku/platform/g/h;->a(Lcom/duoku/platform/h/a;)V
    :try_end_9e
    .catch Lorg/json/JSONException; {:try_start_7a .. :try_end_9e} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_9e} :catch_ae

    goto/16 :goto_12

    .line 397
    :catch_a0
    move-exception v0

    .line 400
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 401
    invoke-virtual {v1, v6}, Lcom/duoku/platform/g/h;->a(I)V

    .line 402
    const-string v0, "parse json error"

    invoke-virtual {v1, v0}, Lcom/duoku/platform/g/h;->a(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 404
    :catch_ae
    move-exception v0

    .line 407
    invoke-virtual {v1, v5}, Lcom/duoku/platform/g/h;->a(I)V

    .line 408
    const-string v0, "receive data error"

    invoke-virtual {v1, v0}, Lcom/duoku/platform/g/h;->a(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 353
    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_31
        :pswitch_31
        :pswitch_78
    .end packed-switch
.end method

.method private c()Ljava/io/OutputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    .line 252
    iget-boolean v0, p0, Lcom/duoku/platform/g/a;->g:Z

    if-eqz v0, :cond_56

    .line 255
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/duoku/platform/g/a;->e:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/duoku/platform/g/a;->e:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 258
    iget-boolean v0, p0, Lcom/duoku/platform/g/a;->l:Z

    if-eqz v0, :cond_3b

    .line 260
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/g/a;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 271
    :goto_3a
    return-object v0

    .line 264
    :cond_3b
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/g/a;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_3a

    .line 269
    :cond_56
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_3a
.end method

.method private d()V
    .registers 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/duoku/platform/g/a;->a()I

    move-result v0

    .line 277
    packed-switch v0, :pswitch_data_10

    .line 294
    :goto_7
    return-void

    .line 282
    :pswitch_8
    invoke-direct {p0}, Lcom/duoku/platform/g/a;->e()V

    goto :goto_7

    .line 287
    :pswitch_c
    invoke-direct {p0}, Lcom/duoku/platform/g/a;->f()V

    goto :goto_7

    .line 277
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method private d(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 436
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoku/platform/util/k;->b(Ljava/lang/String;)V

    .line 438
    new-instance v0, Lcom/duoku/platform/g/h;

    invoke-direct {v0}, Lcom/duoku/platform/g/h;-><init>()V

    .line 439
    sget-object v1, Lcom/duoku/platform/g/h$a;->f:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/h;->a(Lcom/duoku/platform/g/h$a;)V

    .line 440
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/h;->b(I)V

    .line 443
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 444
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 446
    invoke-virtual {p0, v1}, Lcom/duoku/platform/g/a;->a(Landroid/os/Message;)V

    .line 447
    return-void
.end method

.method private e()V
    .registers 17

    .prologue
    const/4 v14, -0x1

    const/4 v4, 0x0

    .line 461
    invoke-static {}, Lcom/duoku/platform/g/c;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 473
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/duoku/platform/g/a;->e:Ljava/lang/String;

    if-eqz v3, :cond_10a

    .line 475
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/duoku/platform/g/a;->a(Z)V

    .line 476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/duoku/platform/g/a;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/duoku/platform/g/c;->a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v3

    .line 477
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/duoku/platform/g/a;->k:Lorg/apache/http/client/methods/HttpGet;

    .line 478
    const-string v5, "User-Agent"

    const-string v6, "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6"

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/duoku/platform/g/a;->l:Z

    if-eqz v5, :cond_60

    .line 481
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/duoku/platform/g/a;->e:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".temp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/duoku/platform/util/h;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 482
    const-string v5, "RANGE"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bytes="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_60} :catch_2ef
    .catchall {:try_start_6 .. :try_end_60} :catchall_2e2

    .line 486
    :cond_60
    :try_start_60
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_e1
    .catchall {:try_start_60 .. :try_end_63} :catchall_2e2

    move-result-object v2

    .line 559
    :goto_64
    :try_start_64
    invoke-direct/range {p0 .. p0}, Lcom/duoku/platform/g/a;->c()Ljava/io/OutputStream;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_2ef
    .catchall {:try_start_64 .. :try_end_67} :catchall_2e2

    move-result-object v3

    .line 561
    :try_start_68
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 562
    const/16 v6, 0xc8

    if-eq v5, v6, :cond_78

    const/16 v6, 0xce

    if-ne v5, v6, :cond_24c

    .line 565
    :cond_78
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    .line 566
    const-wide/16 v6, 0x0

    .line 567
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_89} :catch_2f3
    .catchall {:try_start_68 .. :try_end_89} :catchall_2e6

    move-result-object v5

    .line 568
    const/16 v2, 0x2800

    :try_start_8c
    new-array v2, v2, [B

    .line 570
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/duoku/platform/g/a;->g:Z

    if-eqz v10, :cond_b6

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/duoku/platform/g/a;->l:Z

    if-eqz v10, :cond_b6

    .line 572
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/duoku/platform/g/a;->e:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".temp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/duoku/platform/util/h;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 573
    add-long/2addr v8, v6

    .line 575
    :cond_b6
    :goto_b6
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-ne v10, v14, :cond_186

    .line 592
    :goto_bc
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/duoku/platform/g/a;->d:Z

    if-eqz v2, :cond_1d8

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/g/a;->b:Ljava/util/concurrent/FutureTask;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 595
    const-string v2, "cancel after read data from pipe"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/duoku/platform/g/a;->d(Ljava/lang/String;)V

    .line 672
    :cond_d1
    :goto_d1
    if-eqz v5, :cond_d7

    .line 674
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    move-object v5, v4

    .line 678
    :cond_d7
    if-eqz v3, :cond_2f9

    .line 680
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_dc} :catch_196
    .catchall {:try_start_8c .. :try_end_dc} :catchall_1d1

    .line 694
    :goto_dc
    if-eqz v5, :cond_de

    .line 699
    :cond_de
    if-eqz v4, :cond_e0

    .line 704
    :cond_e0
    :goto_e0
    return-void

    .line 488
    :catch_e1
    move-exception v2

    .line 491
    :try_start_e2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/g/a;->k:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v2, :cond_f4

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/g/a;->k:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 494
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/duoku/platform/g/a;->k:Lorg/apache/http/client/methods/HttpGet;

    .line 497
    :cond_f4
    const-string v2, "receive data length not equals specify length"

    const/16 v3, 0x3e9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/g/a;->b:Ljava/util/concurrent/FutureTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 694
    if-eqz v4, :cond_107

    .line 699
    :cond_107
    if-eqz v4, :cond_e0

    goto :goto_e0

    .line 517
    :cond_10a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/duoku/platform/g/a;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/duoku/platform/g/c;->b(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v3

    .line 519
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/duoku/platform/g/a;->a(Z)V

    .line 520
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/duoku/platform/g/a;->h:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 522
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/duoku/platform/g/a;->d:Z

    if-eqz v5, :cond_140

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/g/a;->b:Ljava/util/concurrent/FutureTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 525
    const-string v2, "cancel before write data to pipe"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/duoku/platform/g/a;->d(Ljava/lang/String;)V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_13b} :catch_2ef
    .catchall {:try_start_e2 .. :try_end_13b} :catchall_2e2

    .line 694
    if-eqz v4, :cond_13d

    .line 699
    :cond_13d
    if-eqz v4, :cond_e0

    goto :goto_e0

    .line 530
    :cond_140
    :try_start_140
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/duoku/platform/g/a;->a:Lcom/duoku/platform/util/k;

    const-string v6, "\u53d1\u8d77\u8bf7\u6c42"

    invoke-virtual {v5, v6}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 531
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 532
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/duoku/platform/g/a;->a:Lcom/duoku/platform/util/k;

    const-string v6, "\u5f97\u5230\u54cd\u5e94"

    invoke-virtual {v5, v6}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_156} :catch_158
    .catchall {:try_start_140 .. :try_end_156} :catchall_2e2

    goto/16 :goto_64

    .line 534
    :catch_158
    move-exception v2

    .line 536
    :try_start_159
    invoke-static {}, Lcom/duoku/platform/g/c;->a()Lorg/apache/http/client/HttpClient;
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_15c} :catch_2ef
    .catchall {:try_start_159 .. :try_end_15c} :catchall_2e2

    move-result-object v2

    .line 539
    :try_start_15d
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_160} :catch_163
    .catchall {:try_start_15d .. :try_end_160} :catchall_2e2

    move-result-object v2

    goto/16 :goto_64

    .line 541
    :catch_163
    move-exception v2

    .line 543
    :try_start_164
    invoke-static {}, Lcom/duoku/platform/g/c;->a()Lorg/apache/http/client/HttpClient;
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_167} :catch_2ef
    .catchall {:try_start_164 .. :try_end_167} :catchall_2e2

    move-result-object v2

    .line 546
    :try_start_168
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_16b} :catch_16e
    .catchall {:try_start_168 .. :try_end_16b} :catchall_2e2

    move-result-object v2

    goto/16 :goto_64

    .line 548
    :catch_16e
    move-exception v2

    .line 552
    :try_start_16f
    const-string v2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u72b6\u6001\u540e\u91cd\u8bd5\uff01"

    const/16 v3, 0x3e9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;I)V

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/g/a;->b:Ljava/util/concurrent/FutureTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_180} :catch_2ef
    .catchall {:try_start_16f .. :try_end_180} :catchall_2e2

    .line 694
    if-eqz v4, :cond_182

    .line 699
    :cond_182
    if-eqz v4, :cond_e0

    goto/16 :goto_e0

    .line 577
    :cond_186
    :try_start_186
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/duoku/platform/g/a;->d:Z

    if-eqz v11, :cond_1be

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/g/a;->b:Ljava/util/concurrent/FutureTask;

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_194
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_194} :catch_196
    .catchall {:try_start_186 .. :try_end_194} :catchall_1d1

    goto/16 :goto_bc

    .line 685
    :catch_196
    move-exception v2

    move-object v4, v3

    move-object v3, v5

    .line 687
    :goto_199
    :try_start_199
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 688
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/duoku/platform/util/k;->b(Ljava/lang/String;)V

    .line 689
    const-string v2, "exception happen"

    const/16 v5, 0x3e9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;I)V
    :try_end_1b8
    .catchall {:try_start_199 .. :try_end_1b8} :catchall_2e9

    .line 694
    if-eqz v3, :cond_1ba

    .line 699
    :cond_1ba
    if-eqz v4, :cond_e0

    goto/16 :goto_e0

    .line 582
    :cond_1be
    int-to-long v12, v10

    add-long/2addr v6, v12

    .line 586
    :try_start_1c0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/duoku/platform/g/a;->g:Z

    if-eqz v11, :cond_1cb

    .line 588
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/duoku/platform/g/a;->a(JJ)V

    .line 590
    :cond_1cb
    const/4 v11, 0x0

    invoke-virtual {v3, v2, v11, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1cf
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_1cf} :catch_196
    .catchall {:try_start_1c0 .. :try_end_1cf} :catchall_1d1

    goto/16 :goto_b6

    .line 692
    :catchall_1d1
    move-exception v2

    move-object v4, v5

    .line 694
    :goto_1d3
    if-eqz v4, :cond_1d5

    .line 699
    :cond_1d5
    if-eqz v3, :cond_1d7

    .line 703
    :cond_1d7
    throw v2

    .line 599
    :cond_1d8
    const-wide/16 v10, -0x1

    cmp-long v2, v8, v10

    if-eqz v2, :cond_230

    .line 601
    cmp-long v2, v6, v8

    if-eqz v2, :cond_1ed

    .line 606
    :try_start_1e2
    const-string v2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u72b6\u6001\u540e\u91cd\u8bd5\uff01"

    const/16 v6, 0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_d1

    .line 609
    :cond_1ed
    cmp-long v2, v6, v8

    if-nez v2, :cond_d1

    .line 612
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/duoku/platform/g/a;->g:Z

    if-nez v2, :cond_206

    .line 614
    move-object v0, v3

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 621
    :goto_1ff
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/duoku/platform/g/a;->a([B)V

    goto/16 :goto_d1

    .line 618
    :cond_206
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/duoku/platform/g/a;->e:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".temp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 619
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/duoku/platform/g/a;->e:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-object v2, v4

    goto :goto_1ff

    .line 626
    :cond_230
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v2

    const-string v6, "response data length is -1"

    invoke-virtual {v2, v6}, Lcom/duoku/platform/util/k;->b(Ljava/lang/String;)V

    .line 629
    const-string v2, "content len is error"

    const/16 v6, 0x3e9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;I)V
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_1e2 .. :try_end_24a} :catch_196
    .catchall {:try_start_1e2 .. :try_end_24a} :catchall_1d1

    goto/16 :goto_d1

    .line 634
    :cond_24c
    const/16 v6, 0x12d

    if-eq v5, v6, :cond_254

    const/16 v6, 0x12e

    if-ne v5, v6, :cond_271

    .line 636
    :cond_254
    :try_start_254
    const-string v5, "location"

    invoke-interface {v2, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 637
    if-eqz v2, :cond_2df

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2df

    .line 639
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/duoku/platform/g/a;->b(Ljava/lang/String;)V

    .line 640
    invoke-direct/range {p0 .. p0}, Lcom/duoku/platform/g/a;->d()V

    move-object v5, v4

    .line 642
    goto/16 :goto_d1

    .line 645
    :cond_271
    const/16 v6, 0x1f8

    if-ne v5, v6, :cond_281

    .line 647
    const-string v2, "connect time out"

    const/16 v5, 0x1f8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;I)V

    move-object v5, v4

    .line 648
    goto/16 :goto_d1

    .line 649
    :cond_281
    if-ne v5, v14, :cond_294

    move-object/from16 v0, p0

    iget v6, v0, Lcom/duoku/platform/g/a;->m:I

    if-nez v6, :cond_294

    .line 651
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/duoku/platform/g/a;->m:I

    .line 652
    invoke-direct/range {p0 .. p0}, Lcom/duoku/platform/g/a;->d()V

    move-object v5, v4

    .line 653
    goto/16 :goto_d1

    .line 656
    :cond_294
    const-string v6, "Net Error Code: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 657
    const-string v6, "Net Error Msg: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 659
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/duoku/platform/util/k;->b(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/duoku/platform/util/k;->b(Ljava/lang/String;)V

    .line 664
    const-string v2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u72b6\u6001\u540e\u91cd\u8bd5\uff01"

    const/16 v5, 0x3e9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;I)V
    :try_end_2df
    .catch Ljava/lang/Exception; {:try_start_254 .. :try_end_2df} :catch_2f3
    .catchall {:try_start_254 .. :try_end_2df} :catchall_2e6

    :cond_2df
    move-object v5, v4

    goto/16 :goto_d1

    .line 692
    :catchall_2e2
    move-exception v2

    move-object v3, v4

    goto/16 :goto_1d3

    :catchall_2e6
    move-exception v2

    goto/16 :goto_1d3

    :catchall_2e9
    move-exception v2

    move-object v15, v3

    move-object v3, v4

    move-object v4, v15

    goto/16 :goto_1d3

    .line 685
    :catch_2ef
    move-exception v2

    move-object v3, v4

    goto/16 :goto_199

    :catch_2f3
    move-exception v2

    move-object v15, v4

    move-object v4, v3

    move-object v3, v15

    goto/16 :goto_199

    :cond_2f9
    move-object v4, v3

    goto/16 :goto_dc
.end method

.method private f()V
    .registers 13

    .prologue
    const/16 v11, 0x3e9

    const/4 v10, -0x1

    .line 747
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 748
    const-string v4, "--"

    .line 749
    const-string v5, "\r\n"

    .line 750
    const-string v1, "multipart/form-data"

    .line 753
    :try_start_11
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/duoku/platform/g/a;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 755
    iget v2, p0, Lcom/duoku/platform/g/a;->f:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 756
    iget v2, p0, Lcom/duoku/platform/g/a;->f:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 758
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 760
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 762
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 763
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 764
    const-string v2, "Charset"

    const-string v6, "UTF-8"

    invoke-virtual {v0, v2, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v2, "connection"

    const-string v6, "keep-alive"

    invoke-virtual {v0, v2, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v2, "user-agent"

    const-string v6, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)"

    invoke-virtual {v0, v2, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v2, "Content-Type"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";boundary="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 776
    const-string v1, ""

    .line 779
    iget-object v1, p0, Lcom/duoku/platform/g/a;->o:Ljava/util/Map;

    if-eqz v1, :cond_96

    iget-object v1, p0, Lcom/duoku/platform/g/a;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_96

    .line 781
    iget-object v1, p0, Lcom/duoku/platform/g/a;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 783
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 784
    :goto_90
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_158

    .line 799
    :cond_96
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 803
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 804
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Content-Disposition:form-data; name=\""

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/duoku/platform/g/a;->q:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\"; filename=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/duoku/platform/g/a;->p:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Content-Type:image/pjpeg"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 807
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 808
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 810
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 813
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/duoku/platform/g/a;->p:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 814
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 816
    :goto_ff
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ne v7, v10, :cond_1a6

    .line 820
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 821
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 823
    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 824
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 828
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 829
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1be

    .line 831
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 832
    invoke-direct {p0}, Lcom/duoku/platform/g/a;->c()Ljava/io/OutputStream;

    move-result-object v0

    .line 834
    const-wide/16 v2, 0x0

    .line 835
    const/16 v4, 0x2800

    new-array v4, v4, [B

    .line 836
    :goto_148
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v10, :cond_1ac

    .line 846
    :goto_14e
    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 847
    invoke-direct {p0, v0}, Lcom/duoku/platform/g/a;->a([B)V

    .line 861
    :goto_157
    return-void

    .line 786
    :cond_158
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 787
    iget-object v2, p0, Lcom/duoku/platform/g/a;->o:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 788
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 789
    const-string v9, "Content-Disposition: form-data; name=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v9, "\""

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 790
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 791
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 792
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19a} :catch_19c

    goto/16 :goto_90

    .line 857
    :catch_19c
    move-exception v0

    .line 859
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 860
    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u72b6\u6001\u540e\u91cd\u8bd5\uff01"

    invoke-direct {p0, v0, v11}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;I)V

    goto :goto_157

    .line 818
    :cond_1a6
    const/4 v8, 0x0

    :try_start_1a7
    invoke-virtual {v6, v2, v8, v7}, Ljava/io/DataOutputStream;->write([BII)V

    goto/16 :goto_ff

    .line 838
    :cond_1ac
    iget-boolean v6, p0, Lcom/duoku/platform/g/a;->d:Z

    if-eqz v6, :cond_1b7

    .line 840
    iget-object v1, p0, Lcom/duoku/platform/g/a;->b:Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    goto :goto_14e

    .line 843
    :cond_1b7
    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 844
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_148

    .line 852
    :cond_1be
    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u72b6\u6001\u540e\u91cd\u8bd5\uff01"

    const/16 v1, 0x3e9

    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;I)V
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1c5} :catch_19c

    goto :goto_157
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lcom/duoku/platform/g/a;->n:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 97
    iput p1, p0, Lcom/duoku/platform/g/a;->n:I

    .line 98
    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/duoku/platform/g/a;->i:Landroid/os/Handler;

    .line 119
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/duoku/platform/g/a;->i:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 234
    if-nez p1, :cond_15

    .line 236
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 237
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 239
    iget-object v1, p0, Lcom/duoku/platform/g/a;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 246
    :cond_14
    :goto_14
    return-void

    .line 243
    :cond_15
    iget-object v0, p0, Lcom/duoku/platform/g/a;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 138
    iput-object p1, p0, Lcom/duoku/platform/g/a;->h:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 723
    iput-object p2, p0, Lcom/duoku/platform/g/a;->p:Ljava/io/File;

    .line 724
    iput-object p1, p0, Lcom/duoku/platform/g/a;->q:Ljava/lang/String;

    .line 725
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/duoku/platform/g/a;->g:Z

    .line 216
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lcom/duoku/platform/g/a;->j:I

    return v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 128
    iput p1, p0, Lcom/duoku/platform/g/a;->j:I

    .line 129
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, Lcom/duoku/platform/g/a;->c:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 195
    iput p1, p0, Lcom/duoku/platform/g/a;->f:I

    .line 196
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 729
    if-eqz p1, :cond_8

    .line 733
    :try_start_2
    invoke-static {p1}, Lcom/duoku/platform/util/q;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/g/a;->o:Ljava/util/Map;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_8} :catch_9

    .line 740
    :cond_8
    :goto_8
    return-void

    .line 735
    :catch_9
    move-exception v0

    .line 737
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8
.end method

.method public run()V
    .registers 1

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/duoku/platform/g/a;->d()V

    .line 453
    return-void
.end method
