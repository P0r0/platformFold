.class public Lcom/alipay/sdk/util/ActionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string v0, "#@"

    sput-object v0, Lcom/alipay/sdk/util/ActionUtil;->a:Ljava/lang/String;

    .line 20
    const-string v0, "@#"

    sput-object v0, Lcom/alipay/sdk/util/ActionUtil;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 90
    sget-object v0, Lcom/alipay/sdk/util/ActionUtil;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 91
    if-gtz v0, :cond_9

    .line 105
    :goto_8
    return-object p0

    .line 94
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    sget-object v2, Lcom/alipay/sdk/util/ActionUtil;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 96
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    if-lez v2, :cond_55

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v3, Lcom/alipay/sdk/util/ActionUtil;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    if-le v0, v3, :cond_55

    .line 102
    sget-object v0, Lcom/alipay/sdk/util/ActionUtil;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .prologue
    .line 24
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 25
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 26
    if-eqz v0, :cond_13

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    .line 27
    :cond_13
    const/4 v0, 0x0

    .line 40
    :goto_14
    return-object v0

    .line 29
    :cond_15
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_4c

    .line 32
    const/4 v0, 0x0

    :goto_22
    array-length v2, v1

    if-ge v0, v2, :cond_4c

    .line 33
    aget-object v2, v1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 34
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 35
    aget-object v2, v1, v0

    const-string v3, "\'"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 32
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_4c
    move-object v0, v1

    .line 40
    goto :goto_14
.end method

.method public static b(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 57
    invoke-static {p0}, Lcom/alipay/sdk/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 58
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    .line 71
    :cond_a
    :goto_a
    return-void

    .line 61
    :cond_b
    const-string v1, "tid"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 62
    invoke-static {}, Lcom/alipay/sdk/sys/GlobalContext;->a()Lcom/alipay/sdk/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    .line 63
    invoke-static {}, Lcom/alipay/sdk/tid/TidInfo;->d()Lcom/alipay/sdk/tid/TidInfo;

    move-result-object v2

    .line 64
    aget-object v3, v0, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    aget-object v3, v0, v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 67
    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Lcom/alipay/sdk/tid/TidInfo;->a(Ljava/lang/String;)V

    .line 68
    aget-object v0, v0, v5

    invoke-virtual {v2, v0}, Lcom/alipay/sdk/tid/TidInfo;->b(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2, v1}, Lcom/alipay/sdk/tid/TidInfo;->a(Landroid/content/Context;)V

    goto :goto_a
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 85
    :cond_7
    :goto_7
    return-object v0

    .line 77
    :cond_8
    sget-object v1, Lcom/alipay/sdk/util/ActionUtil;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    sget-object v1, Lcom/alipay/sdk/util/ActionUtil;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 81
    :cond_18
    sget-object v0, Lcom/alipay/sdk/util/ActionUtil;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/alipay/sdk/util/ActionUtil;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    sget-object v1, Lcom/alipay/sdk/util/ActionUtil;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 83
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method
