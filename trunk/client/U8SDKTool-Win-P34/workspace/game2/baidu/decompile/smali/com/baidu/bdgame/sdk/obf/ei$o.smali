.class Lcom/baidu/bdgame/sdk/obf/ei$o;
.super Lcom/baidu/bdgame/sdk/obf/ei$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/ei$g",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/fs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ei$g;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/ec;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/fs;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 322
    const-string v0, "RechargeCard"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    .line 408
    :goto_a
    return v0

    .line 326
    :cond_b
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/fs;

    invoke-direct {v3}, Lcom/baidu/bdgame/sdk/obf/fs;-><init>()V

    .line 329
    const-string v0, "BankID"

    invoke-static {p3, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 331
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ei$o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BankID absent:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 332
    goto :goto_a

    .line 334
    :cond_3e
    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/fs;->a(Ljava/lang/String;)V

    .line 354
    const-string v0, "AmountList"

    invoke-static {p3, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_175

    .line 356
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 358
    :goto_4e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 359
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ei$o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AmountList absent:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 360
    goto :goto_a

    .line 362
    :cond_76
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ei;->b(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ky;

    move-result-object v4

    .line 363
    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v5, :cond_8a

    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a9

    .line 364
    :cond_8a
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ei$o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AmountList format error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 365
    goto/16 :goto_a

    .line 367
    :cond_a9
    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/fs;->a(Ljava/util/List;)V

    .line 371
    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, v4, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/baidu/bdgame/sdk/obf/ec;->b(J)V

    .line 375
    const-string v0, "CardNoLengthLimit"

    invoke-static {p3, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_172

    .line 377
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 379
    :goto_d8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_118

    .line 380
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ei;->c(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ky;

    move-result-object v4

    .line 381
    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v5, :cond_f2

    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_111

    .line 382
    :cond_f2
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ei$o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CardNoLengthLimit format error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 383
    goto/16 :goto_a

    .line 386
    :cond_111
    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/fs;->b(Ljava/util/List;)V

    .line 391
    :cond_118
    const-string v0, "CardPswLengthLimit"

    invoke-static {p3, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_170

    .line 393
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 395
    :goto_125
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_165

    .line 396
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ei;->c(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ky;

    move-result-object v4

    .line 397
    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v5, :cond_13f

    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_15e

    .line 398
    :cond_13f
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ei$o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CardPswLengthLimit format error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 399
    goto/16 :goto_a

    .line 402
    :cond_15e
    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/fs;->c(Ljava/util/List;)V

    .line 406
    :cond_165
    invoke-virtual {p4, v3}, Lcom/baidu/bdgame/sdk/obf/ec;->a(Ljava/lang/Object;)V

    .line 407
    const-string v0, "RechargeCardPay"

    invoke-virtual {p4, v0}, Lcom/baidu/bdgame/sdk/obf/ec;->f(Ljava/lang/String;)V

    .line 408
    const/4 v0, 0x1

    goto/16 :goto_a

    :cond_170
    move-object v1, v0

    goto :goto_125

    :cond_172
    move-object v1, v0

    goto/16 :goto_d8

    :cond_175
    move-object v1, v0

    goto/16 :goto_4e
.end method
