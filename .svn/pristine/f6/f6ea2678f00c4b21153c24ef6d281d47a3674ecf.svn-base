.class public Lcom/duoku/platform/view/g$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 406
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 440
    if-eqz p1, :cond_a

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 488
    :cond_a
    :goto_a
    return-void

    .line 445
    :cond_b
    const/4 v0, 0x0

    .line 446
    if-eqz p1, :cond_16

    .line 448
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 450
    :cond_16
    if-eqz v0, :cond_a

    .line 452
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/duoku/platform/util/q;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    .line 465
    :try_start_25
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 466
    invoke-virtual {v1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 467
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 470
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 471
    :goto_40
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_74

    .line 476
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 478
    if-eqz v1, :cond_a

    array-length v2, v1

    if-lez v2, :cond_a

    .line 480
    sget-object v2, Lcom/duoku/platform/util/q;->a:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/util/q;->a(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_56} :catch_57

    goto :goto_a

    .line 483
    :catch_57
    move-exception v0

    .line 485
    const-string v1, "GetImage==============="

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 474
    :cond_74
    const/4 v5, 0x0

    :try_start_75
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_57

    goto :goto_40
.end method

.method private a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 503
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_11

    .line 512
    :cond_10
    return-void

    .line 505
    :cond_11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 506
    if-eqz v0, :cond_1c

    .line 508
    invoke-direct {p0, v0}, Lcom/duoku/platform/view/g$a;->a(Ljava/lang/String;)V

    .line 503
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .registers 3

    .prologue
    .line 410
    if-eqz p1, :cond_c

    array-length v0, p1

    if-lez v0, :cond_c

    .line 412
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 413
    invoke-direct {p0, v0}, Lcom/duoku/platform/view/g$a;->a(Ljava/util/List;)V

    .line 415
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 2

    .prologue
    .line 421
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 422
    return-void
.end method

.method protected varargs a([Ljava/lang/Void;)V
    .registers 2

    .prologue
    .line 427
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 428
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/view/g$a;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/view/g$a;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/view/g$a;->a([Ljava/lang/Void;)V

    return-void
.end method
