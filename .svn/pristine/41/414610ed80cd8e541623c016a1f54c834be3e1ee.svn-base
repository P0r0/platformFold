.class final Lcom/baidu/bdgame/sdk/obf/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:I = 0x5

.field private static final c:Ljava/lang/String; = "com.baidu.plaformsdk"

.field private static final d:Ljava/lang/String; = "bdp_bd"

.field private static final e:Ljava/lang/String; = "bdp_91"

.field private static final f:Ljava/lang/String; = "bdp_dk"


# instance fields
.field private a:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/s;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/s;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 346
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_24

    .line 348
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Ljava/util/List;)V

    .line 349
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_22

    .line 350
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/s;

    .line 351
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->e()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 413
    :cond_1d
    :goto_1d
    return-object v0

    .line 349
    :cond_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_22
    move-object v0, v3

    .line 355
    goto :goto_1d

    .line 358
    :cond_24
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/bu;->b(Ljava/util/List;)V

    .line 360
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/s;

    .line 361
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->g()J

    move-result-wide v4

    move v2, v1

    .line 364
    :goto_32
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_d5

    .line 365
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bdgame/sdk/obf/s;

    .line 367
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/s;->a(Lcom/baidu/bdgame/sdk/obf/s;)Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 368
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->g()J

    move-result-wide v6

    .line 369
    cmp-long v2, v4, v6

    if-ltz v2, :cond_91

    .line 374
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_67

    .line 376
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/s;->b(Ljava/lang/String;)V

    .line 379
    :cond_67
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d3

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d3

    .line 381
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->c()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/baidu/bdgame/sdk/obf/s;->a(Ljava/lang/String;J)V

    move-object v1, v0

    .line 404
    :cond_87
    :goto_87
    if-nez v1, :cond_d1

    .line 409
    :goto_89
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->e()Z

    move-result v1

    if-nez v1, :cond_1d

    move-object v0, v3

    .line 413
    goto :goto_1d

    .line 389
    :cond_91
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ac

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 391
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/s;->b(Ljava/lang/String;)V

    .line 394
    :cond_ac
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_87

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 396
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->c()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/baidu/bdgame/sdk/obf/s;->a(Ljava/lang/String;J)V

    goto :goto_87

    .line 364
    :cond_cc
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_32

    :cond_d1
    move-object v0, v1

    goto :goto_89

    :cond_d3
    move-object v1, v0

    goto :goto_87

    :cond_d5
    move-object v1, v3

    goto :goto_87
.end method

.method private static a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/mj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.baidu.plaformsdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/List;Ljava/io/FileOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;",
            "Ljava/io/FileOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 830
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    .line 831
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/s;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/s;->b(Lcom/baidu/bdgame/sdk/obf/s;)Lorg/json/JSONObject;

    move-result-object v0

    .line 832
    if-eqz v0, :cond_1c

    .line 833
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 830
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 837
    :cond_20
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lh;->c(Ljava/lang/String;)[B

    move-result-object v0

    .line 838
    if-eqz v0, :cond_2d

    .line 839
    invoke-virtual {p3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 841
    :cond_2d
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    .line 842
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bu$1;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/bu$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 326
    return-void
.end method

.method private a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/s;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 605
    .line 607
    const-wide v2, 0x7fffffffffffffffL

    .line 609
    const/4 v0, 0x0

    move v1, v0

    move v4, v5

    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8b

    .line 610
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/s;

    .line 612
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/s;->a(Lcom/baidu/bdgame/sdk/obf/s;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 624
    :goto_1b
    if-eq v1, v5, :cond_73

    .line 626
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/s;

    .line 627
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/s;->k()Ljava/lang/String;

    move-result-object v1

    .line 632
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->k()Ljava/lang/String;

    move-result-object v2

    .line 633
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 634
    invoke-virtual {p2, v2}, Lcom/baidu/bdgame/sdk/obf/s;->b(Ljava/lang/String;)V

    .line 640
    :cond_3d
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/s;->a()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v1

    if-nez v1, :cond_64

    .line 641
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->b()Ljava/lang/String;

    move-result-object v1

    .line 643
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/s;->c()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_64

    .line 644
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 645
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->c()J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/s;->a(Ljava/lang/String;J)V

    .line 663
    :cond_64
    :goto_64
    return-void

    .line 617
    :cond_65
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->g()J

    move-result-wide v6

    .line 618
    cmp-long v0, v6, v2

    if-gez v0, :cond_6f

    move-wide v2, v6

    move v4, v1

    .line 609
    :cond_6f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 650
    :cond_73
    if-eq v4, v5, :cond_87

    .line 651
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_83

    .line 653
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 654
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 657
    :cond_83
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 661
    :cond_87
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :cond_8b
    move v1, v5

    goto :goto_1b
.end method

.method private a(Ljava/util/List;Ljava/io/FileInputStream;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;",
            "Ljava/io/FileInputStream;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 806
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 808
    const/16 v2, 0x80

    new-array v2, v2, [B

    .line 809
    :goto_a
    invoke-virtual {p2, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_15

    .line 810
    invoke-virtual {v1, v2, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    .line 812
    :cond_15
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 814
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 815
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 826
    :cond_26
    return-void

    .line 819
    :cond_27
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v1, v0

    .line 820
    :goto_2d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_26

    .line 821
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/s;->a(Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    .line 822
    if-eqz v0, :cond_42

    .line 823
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    :cond_42
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2d
.end method

.method private a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 288
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/bu;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 289
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 290
    const/4 v0, 0x1

    .line 292
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static a(Lcom/baidu/bdgame/sdk/obf/s;Lcom/baidu/bdgame/sdk/obf/ax;)Z
    .registers 4

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/s;->k()Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ax;->n()Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 584
    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->i(Ljava/lang/String;)V

    .line 585
    const/4 v0, 0x1

    .line 588
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/ag;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/ag;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_8
    if-ltz v2, :cond_23

    .line 131
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/s;

    .line 132
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->a()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ag;->a(Lcom/baidu/bdgame/sdk/obf/ag;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 133
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 134
    const/4 v0, 0x1

    .line 130
    :goto_1e
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_8

    .line 137
    :cond_23
    return v1

    :cond_24
    move v0, v1

    goto :goto_1e
.end method

.method private a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/ag;J)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/ag;",
            "J)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 666
    move v1, v2

    .line 667
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 668
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/s;

    .line 669
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->a()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/baidu/bdgame/sdk/obf/ag;->a(Lcom/baidu/bdgame/sdk/obf/ag;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 671
    invoke-virtual {v0, p3, p4}, Lcom/baidu/bdgame/sdk/obf/s;->a(J)V

    .line 672
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->a()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ag;->b(Ljava/lang/String;)V

    .line 674
    const/4 v2, 0x1

    .line 678
    :cond_25
    return v2

    .line 667
    :cond_26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 174
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_8
    if-ltz v2, :cond_2d

    .line 175
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/s;

    .line 176
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 177
    :cond_24
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 178
    const/4 v0, 0x1

    .line 174
    :goto_28
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_8

    .line 181
    :cond_2d
    return v1

    :cond_2e
    move v0, v1

    goto :goto_28
.end method

.method private b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 442
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 443
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/bu;->c(Ljava/util/List;)V

    move v2, v3

    .line 445
    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_20

    .line 446
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/s;

    .line 447
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->d()Z

    move-result v1

    if-nez v1, :cond_21

    .line 492
    :cond_20
    return-object v5

    .line 456
    :cond_21
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->h()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 445
    :cond_27
    :goto_27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    .line 461
    :cond_2b
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->g()J

    move-result-wide v6

    move v4, v3

    .line 465
    :goto_33
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_27

    .line 466
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bdgame/sdk/obf/s;

    .line 468
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/s;->a(Lcom/baidu/bdgame/sdk/obf/s;)Z

    move-result v8

    if-eqz v8, :cond_9a

    .line 469
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->g()J

    move-result-wide v8

    .line 470
    cmp-long v4, v6, v8

    if-gez v4, :cond_5f

    .line 472
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->a()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/bdgame/sdk/obf/s;->a(Lcom/baidu/bdgame/sdk/obf/ag;)V

    .line 473
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->c()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Lcom/baidu/bdgame/sdk/obf/s;->a(Ljava/lang/String;J)V

    .line 477
    :cond_5f
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 479
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/bdgame/sdk/obf/s;->b(Ljava/lang/String;)V

    .line 482
    :cond_7a
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 484
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->c()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Lcom/baidu/bdgame/sdk/obf/s;->a(Ljava/lang/String;J)V

    goto :goto_27

    .line 465
    :cond_9a
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_33
.end method

.method private static b(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bu$2;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/bu$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 343
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 296
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/bu;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 297
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 298
    const/4 v0, 0x1

    .line 300
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static b(Lcom/baidu/bdgame/sdk/obf/s;Lcom/baidu/bdgame/sdk/obf/ax;)Z
    .registers 4

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/s;->b()Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 595
    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Ljava/lang/String;)V

    .line 596
    const/4 v0, 0x1

    .line 599
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private b(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/ag;J)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/ag;",
            "J)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 714
    move v1, v2

    .line 715
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 716
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/s;

    .line 717
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->a()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/baidu/bdgame/sdk/obf/ag;->a(Lcom/baidu/bdgame/sdk/obf/ag;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 719
    invoke-virtual {v0, p3, p4}, Lcom/baidu/bdgame/sdk/obf/s;->a(J)V

    .line 720
    const-string v1, ""

    invoke-virtual {v0, v1, p3, p4}, Lcom/baidu/bdgame/sdk/obf/s;->a(Ljava/lang/String;J)V

    .line 722
    const/4 v2, 0x1

    .line 726
    :cond_21
    return v2

    .line 715
    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method private c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 763
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 764
    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Ljava/util/List;Ljava/io/FileInputStream;Z)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_8} :catch_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_13

    .line 773
    :goto_8
    return-void

    .line 766
    :catch_9
    move-exception v0

    .line 767
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 768
    :catch_e
    move-exception v0

    .line 769
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8

    .line 770
    :catch_13
    move-exception v0

    .line 771
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 765
    :catch_18
    move-exception v0

    goto :goto_8
.end method

.method private c(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bu$3;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/bu$3;-><init>(Lcom/baidu/bdgame/sdk/obf/bu;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 439
    return-void
.end method

.method private d(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 777
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 778
    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Landroid/content/Context;Ljava/util/List;Ljava/io/FileOutputStream;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_13

    .line 786
    :goto_8
    return-void

    .line 779
    :catch_9
    move-exception v0

    .line 780
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_8

    .line 781
    :catch_e
    move-exception v0

    .line 782
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 783
    :catch_13
    move-exception v0

    .line 784
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method private e(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 788
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/mj;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 803
    :goto_6
    return-void

    .line 792
    :cond_7
    :try_start_7
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/bu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 794
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 795
    invoke-direct {p0, p1, p2, v1}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Landroid/content/Context;Ljava/util/List;Ljava/io/FileOutputStream;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_1f} :catch_20
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1f} :catch_25
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1f} :catch_2a

    goto :goto_6

    .line 796
    :catch_20
    move-exception v0

    .line 797
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_6

    .line 798
    :catch_25
    move-exception v0

    .line 799
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 800
    :catch_2a
    move-exception v0

    .line 801
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method private f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 849
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/mj;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 865
    :goto_6
    return-void

    .line 853
    :cond_7
    :try_start_7
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/bu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 855
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 856
    const/4 v0, 0x0

    invoke-direct {p0, p2, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Ljava/util/List;Ljava/io/FileInputStream;Z)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_20} :catch_21
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_20} :catch_23
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_20} :catch_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_20} :catch_2d

    goto :goto_6

    .line 857
    :catch_21
    move-exception v0

    goto :goto_6

    .line 858
    :catch_23
    move-exception v0

    .line 859
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 860
    :catch_28
    move-exception v0

    .line 861
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 862
    :catch_2d
    move-exception v0

    .line 863
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method


# virtual methods
.method declared-synchronized a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;)Lcom/baidu/bdgame/sdk/obf/s;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 63
    monitor-enter p0

    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v0

    .line 68
    if-nez v0, :cond_3b

    .line 69
    const-string v0, "bdp_bd"

    move-object v3, v0

    .line 76
    :goto_17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 77
    invoke-direct {p0, p1, v4, v3}, Lcom/baidu/bdgame/sdk/obf/bu;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 78
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_27
    if-ltz v2, :cond_4d

    .line 79
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/s;

    .line 80
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->a()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/baidu/bdgame/sdk/obf/ag;->a(Lcom/baidu/bdgame/sdk/obf/ag;)Z
    :try_end_36
    .catchall {:try_start_2 .. :try_end_36} :catchall_6f

    move-result v6

    if-eqz v6, :cond_49

    .line 93
    :cond_39
    :goto_39
    monitor-exit p0

    return-object v0

    .line 70
    :cond_3b
    const/4 v2, 0x2

    if-ne v0, v2, :cond_42

    .line 71
    :try_start_3e
    const-string v0, "bdp_91"

    move-object v3, v0

    goto :goto_17

    .line 72
    :cond_42
    const/4 v2, 0x1

    if-ne v0, v2, :cond_72

    .line 73
    const-string v0, "bdp_dk"

    move-object v3, v0

    goto :goto_17

    .line 78
    :cond_49
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_27

    .line 85
    :cond_4d
    invoke-direct {p0, p1, v5, v3}, Lcom/baidu/bdgame/sdk/obf/bu;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 86
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_57
    if-ltz v2, :cond_6d

    .line 87
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/s;

    .line 88
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->a()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/baidu/bdgame/sdk/obf/ag;->a(Lcom/baidu/bdgame/sdk/obf/ag;)Z
    :try_end_66
    .catchall {:try_start_3e .. :try_end_66} :catchall_6f

    move-result v3

    if-nez v3, :cond_39

    .line 86
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_57

    :cond_6d
    move-object v0, v1

    .line 93
    goto :goto_39

    .line 63
    :catchall_6f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_72
    move-object v3, v1

    goto :goto_17
.end method

.method a(Landroid/content/Context;I)V
    .registers 3

    .prologue
    .line 48
    iput p2, p0, Lcom/baidu/bdgame/sdk/obf/bu;->a:I

    .line 49
    return-void
.end method

.method declared-synchronized a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 8

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    const/4 v0, 0x0

    .line 151
    if-nez p2, :cond_32

    .line 152
    const-string v0, "bdp_bd"

    .line 159
    :cond_12
    :goto_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 160
    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, v1, p3}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 162
    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->d(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 165
    :cond_24
    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, v2, p3}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 167
    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->e(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_3e

    .line 170
    :cond_30
    monitor-exit p0

    return-void

    .line 153
    :cond_32
    const/4 v3, 0x2

    if-ne p2, v3, :cond_38

    .line 154
    :try_start_35
    const-string v0, "bdp_91"

    goto :goto_12

    .line 155
    :cond_38
    const/4 v3, 0x1

    if-ne p2, v3, :cond_12

    .line 156
    const-string v0, "bdp_dk"
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3e

    goto :goto_12

    .line 146
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;J)V
    .registers 10

    .prologue
    .line 688
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 689
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 691
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v3

    .line 692
    const/4 v0, 0x0

    .line 693
    if-nez v3, :cond_36

    .line 694
    const-string v0, "bdp_bd"

    .line 700
    :cond_16
    :goto_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 701
    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 702
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/ag;J)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 703
    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->d(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 706
    :cond_28
    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 707
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/ag;J)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 708
    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->e(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_42

    .line 711
    :cond_34
    monitor-exit p0

    return-void

    .line 695
    :cond_36
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3c

    .line 696
    :try_start_39
    const-string v0, "bdp_91"

    goto :goto_16

    .line 697
    :cond_3c
    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    .line 698
    const-string v0, "bdp_dk"
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_42

    goto :goto_16

    .line 688
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 53
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/mf;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method declared-synchronized a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ax;J)Z
    .registers 14

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 528
    monitor-enter p0

    :try_start_3
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/ax;->m()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_62

    move-result v2

    if-eqz v2, :cond_b

    .line 576
    :cond_9
    :goto_9
    monitor-exit p0

    return v0

    .line 533
    :cond_b
    :try_start_b
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/ax;->h()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v3

    .line 534
    new-instance v4, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 535
    new-instance v5, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 536
    invoke-static {p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/s;->a(Lcom/baidu/bdgame/sdk/obf/ax;J)Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v6

    .line 538
    const/4 v2, 0x0

    .line 539
    if-nez v3, :cond_57

    .line 540
    const-string v2, "bdp_bd"

    .line 547
    :cond_28
    :goto_28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 548
    invoke-direct {p0, p1, v4, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 549
    invoke-direct {p0, v4, v6}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/s;)V

    .line 550
    invoke-direct {p0, p1, v4, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->d(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 553
    invoke-static {v6, p2}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Lcom/baidu/bdgame/sdk/obf/s;Lcom/baidu/bdgame/sdk/obf/ax;)Z

    move-result v0

    .line 555
    invoke-static {v6, p2}, Lcom/baidu/bdgame/sdk/obf/bu;->b(Lcom/baidu/bdgame/sdk/obf/s;Lcom/baidu/bdgame/sdk/obf/ax;)Z

    .line 557
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/ax;->l()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 559
    invoke-direct {p0, p1, v5, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, v5, v6}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/s;)V

    .line 561
    invoke-direct {p0, p1, v5, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->e(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 564
    if-nez v0, :cond_52

    .line 565
    invoke-static {v6, p2}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Lcom/baidu/bdgame/sdk/obf/s;Lcom/baidu/bdgame/sdk/obf/ax;)Z

    .line 568
    :cond_52
    invoke-static {v6, p2}, Lcom/baidu/bdgame/sdk/obf/bu;->b(Lcom/baidu/bdgame/sdk/obf/s;Lcom/baidu/bdgame/sdk/obf/ax;)Z

    :cond_55
    move v0, v1

    .line 573
    goto :goto_9

    .line 541
    :cond_57
    const/4 v7, 0x2

    if-ne v3, v7, :cond_5d

    .line 542
    const-string v2, "bdp_91"

    goto :goto_28

    .line 543
    :cond_5d
    if-ne v3, v1, :cond_28

    .line 544
    const-string v2, "bdp_dk"
    :try_end_61
    .catchall {:try_start_b .. :try_end_61} :catchall_62

    goto :goto_28

    .line 528
    :catchall_62
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/s;
    .registers 6

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Landroid/content/Context;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_59

    move-result v0

    if-nez v0, :cond_a

    .line 191
    const/4 v0, 0x0

    .line 219
    :goto_8
    monitor-exit p0

    return-object v0

    .line 194
    :cond_a
    :try_start_a
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/bu;->a:I

    if-nez v2, :cond_3f

    .line 198
    const-string v2, "bdp_bd"

    invoke-direct {p0, p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 199
    const-string v2, "bdp_91"

    invoke-direct {p0, p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 200
    const-string v2, "bdp_dk"

    invoke-direct {p0, p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 202
    const-string v2, "bdp_bd"

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 203
    const-string v2, "bdp_91"

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 204
    const-string v2, "bdp_dk"

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 219
    :cond_3a
    :goto_3a
    invoke-direct {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Ljava/util/List;Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    goto :goto_8

    .line 205
    :cond_3f
    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/bu;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5c

    .line 206
    const-string v2, "bdp_bd"

    invoke-direct {p0, p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 207
    const-string v2, "bdp_91"

    invoke-direct {p0, p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 209
    const-string v2, "bdp_bd"

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 210
    const-string v2, "bdp_91"

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_a .. :try_end_58} :catchall_59

    goto :goto_3a

    .line 190
    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0

    .line 211
    :cond_5c
    :try_start_5c
    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/bu;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    .line 212
    const-string v2, "bdp_bd"

    invoke-direct {p0, p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 213
    const-string v2, "bdp_dk"

    invoke-direct {p0, p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 215
    const-string v2, "bdp_bd"

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 216
    const-string v2, "bdp_dk"

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_5c .. :try_end_75} :catchall_59

    goto :goto_3a
.end method

.method declared-synchronized b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;)V
    .registers 8

    .prologue
    .line 102
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v3

    .line 107
    if-nez v3, :cond_36

    .line 108
    const-string v0, "bdp_bd"

    .line 115
    :cond_16
    :goto_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 116
    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, v1, p2}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/ag;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 118
    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->d(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 121
    :cond_28
    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, v2, p2}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/ag;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 123
    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->e(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_42

    .line 126
    :cond_34
    monitor-exit p0

    return-void

    .line 109
    :cond_36
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3c

    .line 110
    :try_start_39
    const-string v0, "bdp_91"

    goto :goto_16

    .line 111
    :cond_3c
    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    .line 112
    const-string v0, "bdp_dk"
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_42

    goto :goto_16

    .line 102
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;J)V
    .registers 10

    .prologue
    .line 736
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 737
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 739
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v3

    .line 740
    const/4 v0, 0x0

    .line 741
    if-nez v3, :cond_36

    .line 742
    const-string v0, "bdp_bd"

    .line 748
    :cond_16
    :goto_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 749
    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 750
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/bu;->b(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/ag;J)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 751
    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->d(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 754
    :cond_28
    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 755
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/bu;->b(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/ag;J)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 756
    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->e(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_42

    .line 759
    :cond_34
    monitor-exit p0

    return-void

    .line 743
    :cond_36
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3c

    .line 744
    :try_start_39
    const-string v0, "bdp_91"

    goto :goto_16

    .line 745
    :cond_3c
    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    .line 746
    const-string v0, "bdp_dk"
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_42

    goto :goto_16

    .line 736
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Landroid/content/Context;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 244
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 247
    iget v3, p0, Lcom/baidu/bdgame/sdk/obf/bu;->a:I

    if-nez v3, :cond_50

    .line 248
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_32

    const-string v3, "bdp_bd"

    invoke-direct {p0, p1, v1, v3}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "bdp_91"

    invoke-direct {p0, p1, v1, v3}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "bdp_dk"

    invoke-direct {p0, p1, v1, v3}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_ab

    move-result v1

    if-eqz v1, :cond_32

    .line 284
    :cond_30
    :goto_30
    monitor-exit p0

    return v0

    .line 254
    :cond_32
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_4e

    :try_start_36
    const-string v1, "bdp_bd"

    invoke-direct {p0, p1, v2, v1}, Lcom/baidu/bdgame/sdk/obf/bu;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "bdp_91"

    invoke-direct {p0, p1, v2, v1}, Lcom/baidu/bdgame/sdk/obf/bu;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "bdp_dk"

    invoke-direct {p0, p1, v2, v1}, Lcom/baidu/bdgame/sdk/obf/bu;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 284
    :cond_4e
    const/4 v0, 0x0

    goto :goto_30

    .line 260
    :cond_50
    iget v3, p0, Lcom/baidu/bdgame/sdk/obf/bu;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7e

    .line 261
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_69

    const-string v3, "bdp_bd"

    invoke-direct {p0, p1, v1, v3}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "bdp_91"

    invoke-direct {p0, p1, v1, v3}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 266
    :cond_69
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_4e

    const-string v1, "bdp_bd"

    invoke-direct {p0, p1, v2, v1}, Lcom/baidu/bdgame/sdk/obf/bu;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "bdp_91"

    invoke-direct {p0, p1, v2, v1}, Lcom/baidu/bdgame/sdk/obf/bu;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    goto :goto_30

    .line 271
    :cond_7e
    iget v3, p0, Lcom/baidu/bdgame/sdk/obf/bu;->a:I

    if-ne v3, v0, :cond_4e

    .line 272
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_96

    const-string v3, "bdp_bd"

    invoke-direct {p0, p1, v1, v3}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "bdp_dk"

    invoke-direct {p0, p1, v1, v3}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 277
    :cond_96
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_4e

    const-string v1, "bdp_bd"

    invoke-direct {p0, p1, v2, v1}, Lcom/baidu/bdgame/sdk/obf/bu;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "bdp_dk"

    invoke-direct {p0, p1, v2, v1}, Lcom/baidu/bdgame/sdk/obf/bu;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z
    :try_end_a7
    .catchall {:try_start_36 .. :try_end_a7} :catchall_ab

    move-result v1

    if-eqz v1, :cond_4e

    goto :goto_30

    .line 244
    :catchall_ab
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/s;
    .registers 6

    .prologue
    .line 228
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xf

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    const-string v0, "bdp_bd"

    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 231
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/s;

    .line 232
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->e()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->h()Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2f

    move-result v3

    if-eqz v3, :cond_29

    .line 236
    :goto_27
    monitor-exit p0

    return-object v0

    .line 230
    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 236
    :cond_2d
    const/4 v0, 0x0

    goto :goto_27

    .line 228
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Landroid/content/Context;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 503
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 505
    const/4 v0, 0x0

    .line 506
    if-nez p2, :cond_24

    .line 507
    const-string v0, "bdp_bd"

    .line 513
    :cond_12
    :goto_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 514
    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 515
    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bu;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 518
    :cond_1e
    invoke-direct {p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bu;->b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_30

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 508
    :cond_24
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2a

    .line 509
    :try_start_27
    const-string v0, "bdp_91"

    goto :goto_12

    .line 510
    :cond_2a
    const/4 v3, 0x1

    if-ne p2, v3, :cond_12

    .line 511
    const-string v0, "bdp_dk"
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_30

    goto :goto_12

    .line 502
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method
