.class final Lcom/duoku/platform/g/d$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# static fields
.field private static synthetic b:[I


# instance fields
.field final synthetic a:Lcom/duoku/platform/g/d;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/g/d;)V
    .registers 2

    .prologue
    .line 201
    iput-object p1, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/g/d;Lcom/duoku/platform/g/d$a;)V
    .registers 3

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/duoku/platform/g/d$a;-><init>(Lcom/duoku/platform/g/d;)V

    return-void
.end method

.method private a(Lcom/duoku/platform/g/h;)V
    .registers 8

    .prologue
    .line 260
    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->f()I

    move-result v0

    .line 261
    iget-object v1, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-static {v1, v0}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 263
    if-eqz v3, :cond_48

    .line 266
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 268
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/f;

    .line 269
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/g/a;

    .line 270
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duoku/platform/g/a;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 272
    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->b()Lcom/duoku/platform/h/a;

    move-result-object v4

    .line 274
    if-nez v4, :cond_49

    .line 277
    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->a()I

    move-result v4

    .line 278
    invoke-virtual {v1}, Lcom/duoku/platform/g/a;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->g()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/duoku/platform/g/f;->a(IIILjava/lang/String;)V

    .line 295
    :goto_3d
    iget-object v1, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/a;

    invoke-static {v1, v0}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;Lcom/duoku/platform/g/a;)V

    .line 298
    :cond_48
    return-void

    .line 284
    :cond_49
    invoke-virtual {v4}, Lcom/duoku/platform/h/a;->getErrorCode()I

    move-result v5

    .line 285
    if-nez v5, :cond_57

    .line 287
    invoke-virtual {v1}, Lcom/duoku/platform/g/a;->b()I

    move-result v1

    invoke-interface {v0, v1, v4, v2}, Lcom/duoku/platform/g/f;->a(ILcom/duoku/platform/h/a;I)V

    goto :goto_3d

    .line 292
    :cond_57
    invoke-virtual {v1}, Lcom/duoku/platform/g/a;->b()I

    move-result v1

    invoke-virtual {v4}, Lcom/duoku/platform/h/a;->getErrorString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v5, v4}, Lcom/duoku/platform/g/f;->a(IIILjava/lang/String;)V

    goto :goto_3d
.end method

.method static synthetic a()[I
    .registers 3

    .prologue
    .line 201
    sget-object v0, Lcom/duoku/platform/g/d$a;->b:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/duoku/platform/g/h$a;->values()[Lcom/duoku/platform/g/h$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/duoku/platform/g/h$a;->f:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v1}, Lcom/duoku/platform/g/h$a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_4f

    :goto_15
    :try_start_15
    sget-object v1, Lcom/duoku/platform/g/h$a;->e:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v1}, Lcom/duoku/platform/g/h$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_4d

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/duoku/platform/g/h$a;->d:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v1}, Lcom/duoku/platform/g/h$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_4b

    :goto_27
    :try_start_27
    sget-object v1, Lcom/duoku/platform/g/h$a;->c:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v1}, Lcom/duoku/platform/g/h$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_49

    :goto_30
    :try_start_30
    sget-object v1, Lcom/duoku/platform/g/h$a;->b:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v1}, Lcom/duoku/platform/g/h$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_47

    :goto_39
    :try_start_39
    sget-object v1, Lcom/duoku/platform/g/h$a;->a:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v1}, Lcom/duoku/platform/g/h$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_45

    :goto_42
    sput-object v0, Lcom/duoku/platform/g/d$a;->b:[I

    goto :goto_4

    :catch_45
    move-exception v1

    goto :goto_42

    :catch_47
    move-exception v1

    goto :goto_39

    :catch_49
    move-exception v1

    goto :goto_30

    :catch_4b
    move-exception v1

    goto :goto_27

    :catch_4d
    move-exception v1

    goto :goto_1e

    :catch_4f
    move-exception v1

    goto :goto_15
.end method

.method private b(Lcom/duoku/platform/g/h;)V
    .registers 8

    .prologue
    .line 302
    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->f()I

    move-result v2

    .line 303
    iget-object v0, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-static {v0, v2}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 305
    if-eqz v3, :cond_32

    .line 307
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/f;

    .line 308
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/g/a;

    .line 310
    invoke-virtual {v1}, Lcom/duoku/platform/g/a;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->a()I

    move-result v4

    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->g()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/duoku/platform/g/f;->a(IIILjava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/a;

    invoke-static {v1, v0}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;Lcom/duoku/platform/g/a;)V

    .line 315
    :cond_32
    return-void
.end method

.method private c(Lcom/duoku/platform/g/h;)V
    .registers 6

    .prologue
    .line 319
    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->f()I

    move-result v1

    .line 320
    iget-object v0, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-static {v0, v1}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 322
    if-eqz v2, :cond_22

    .line 324
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/f;

    .line 325
    sget-object v3, Lcom/duoku/platform/g/f$a;->d:Lcom/duoku/platform/g/f$a;

    invoke-interface {v0, v3, v1}, Lcom/duoku/platform/g/f;->a(Lcom/duoku/platform/g/f$a;I)V

    .line 326
    iget-object v1, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/a;

    invoke-static {v1, v0}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;Lcom/duoku/platform/g/a;)V

    .line 329
    :cond_22
    return-void
.end method

.method private d(Lcom/duoku/platform/g/h;)V
    .registers 9

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->f()I

    move-result v6

    .line 334
    iget-object v0, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-static {v0, v6}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_1d

    .line 337
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/g/f;

    .line 338
    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->d()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->e()J

    move-result-wide v4

    invoke-interface/range {v1 .. v6}, Lcom/duoku/platform/g/f;->a(JJI)V

    .line 341
    :cond_1d
    return-void
.end method

.method private e(Lcom/duoku/platform/g/h;)V
    .registers 6

    .prologue
    .line 345
    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->f()I

    move-result v1

    .line 346
    iget-object v0, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-static {v0, v1}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 348
    if-eqz v2, :cond_22

    .line 350
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/f;

    .line 351
    sget-object v3, Lcom/duoku/platform/g/f$a;->c:Lcom/duoku/platform/g/f$a;

    invoke-interface {v0, v3, v1}, Lcom/duoku/platform/g/f;->a(Lcom/duoku/platform/g/f$a;I)V

    .line 352
    iget-object v1, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/a;

    invoke-static {v1, v0}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;Lcom/duoku/platform/g/a;)V

    .line 355
    :cond_22
    return-void
.end method

.method private f(Lcom/duoku/platform/g/h;)V
    .registers 4

    .prologue
    .line 359
    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->f()I

    move-result v0

    .line 360
    iget-object v1, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-static {v1, v0}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_17

    .line 366
    iget-object v1, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/a;

    invoke-static {v1, v0}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;Lcom/duoku/platform/g/a;)V

    .line 368
    :cond_17
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 207
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/duoku/platform/g/h;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 208
    if-eqz v0, :cond_23

    .line 210
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/duoku/platform/g/h;

    .line 211
    invoke-virtual {v0}, Lcom/duoku/platform/g/h;->c()Lcom/duoku/platform/g/h$a;

    move-result-object v1

    .line 213
    invoke-static {}, Lcom/duoku/platform/g/d$a;->a()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/duoku/platform/g/h$a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_3c

    .line 256
    :cond_23
    :goto_23
    return-void

    .line 217
    :pswitch_24
    invoke-direct {p0, v0}, Lcom/duoku/platform/g/d$a;->a(Lcom/duoku/platform/g/h;)V

    goto :goto_23

    .line 223
    :pswitch_28
    invoke-direct {p0, v0}, Lcom/duoku/platform/g/d$a;->b(Lcom/duoku/platform/g/h;)V

    goto :goto_23

    .line 229
    :pswitch_2c
    invoke-direct {p0, v0}, Lcom/duoku/platform/g/d$a;->d(Lcom/duoku/platform/g/h;)V

    goto :goto_23

    .line 235
    :pswitch_30
    invoke-direct {p0, v0}, Lcom/duoku/platform/g/d$a;->c(Lcom/duoku/platform/g/h;)V

    goto :goto_23

    .line 241
    :pswitch_34
    invoke-direct {p0, v0}, Lcom/duoku/platform/g/d$a;->e(Lcom/duoku/platform/g/h;)V

    goto :goto_23

    .line 247
    :pswitch_38
    invoke-direct {p0, v0}, Lcom/duoku/platform/g/d$a;->f(Lcom/duoku/platform/g/h;)V

    goto :goto_23

    .line 213
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_24
        :pswitch_28
        :pswitch_2c
        :pswitch_34
        :pswitch_30
        :pswitch_38
    .end packed-switch
.end method
