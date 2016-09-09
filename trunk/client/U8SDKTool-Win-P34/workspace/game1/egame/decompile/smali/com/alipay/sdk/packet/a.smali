.class public final Lcom/alipay/sdk/packet/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    const-string v0, ""

    .line 74
    :cond_a
    :goto_a
    return-object v0

    .line 27
    :cond_b
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 28
    array-length v0, v7

    if-nez v0, :cond_17

    .line 29
    const-string v0, ""

    goto :goto_a

    .line 36
    :cond_17
    array-length v8, v7

    move v5, v6

    move-object v0, v2

    move-object v4, v2

    move-object v3, v2

    move-object v1, v2

    :goto_1d
    if-ge v5, v8, :cond_7c

    aget-object v9, v7, v5

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_30

    .line 38
    const-string v1, "biz_type"

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    move-object v1, v2

    .line 41
    :cond_30
    :goto_30
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 42
    const-string v3, "biz_no"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6d

    move-object v3, v2

    .line 45
    :cond_3f
    :goto_3f
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_56

    .line 46
    const-string v4, "trade_no"

    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_55

    const-string v4, "out_trade_no"

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    :cond_55
    move-object v4, v2

    .line 48
    :cond_56
    :goto_56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_65

    .line 49
    const-string v0, "app_userid"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_77

    move-object v0, v2

    .line 36
    :cond_65
    :goto_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 38
    :cond_68
    invoke-static {v9}, Lcom/alipay/sdk/packet/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    .line 42
    :cond_6d
    invoke-static {v9}, Lcom/alipay/sdk/packet/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3f

    .line 46
    :cond_72
    invoke-static {v9}, Lcom/alipay/sdk/packet/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_56

    .line 49
    :cond_77
    invoke-static {v9}, Lcom/alipay/sdk/packet/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    .line 53
    :cond_7c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "biz_type="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_9f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bd

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "biz_no="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_bd
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_db

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "trade_no="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_db
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "app_userid="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_f9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    const-string v0, "biz_type"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_9
    return-object v0

    :cond_a
    invoke-static {p0}, Lcom/alipay/sdk/packet/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    const-string v0, "biz_no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_9
    return-object v0

    :cond_a
    invoke-static {p0}, Lcom/alipay/sdk/packet/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    const-string v0, "trade_no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "out_trade_no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 105
    :cond_10
    const/4 v0, 0x0

    .line 107
    :goto_11
    return-object v0

    :cond_12
    invoke-static {p0}, Lcom/alipay/sdk/packet/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 111
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 112
    const/4 v0, 0x0

    .line 113
    array-length v2, v1

    if-le v2, v3, :cond_1d

    .line 114
    aget-object v0, v1, v3

    .line 115
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 116
    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_1d
    return-object v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    const-string v0, "app_userid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_9
    return-object v0

    :cond_a
    invoke-static {p0}, Lcom/alipay/sdk/packet/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method
