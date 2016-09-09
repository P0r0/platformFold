.class public final Lcom/unionpay/mobile/android/pboctransaction/nfc/a;
.super Ljava/lang/Object;


# static fields
.field protected static final d:[B


# instance fields
.field protected a:Ljava/lang/String;

.field b:Lcom/unionpay/mobile/android/fully/a;

.field c:Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->d:[B

    return-void

    :array_a
    .array-data 1
        0x32t
        0x50t
        0x41t
        0x59t
        0x2et
        0x53t
        0x59t
        0x53t
        0x2et
        0x44t
        0x44t
        0x46t
        0x30t
        0x31t
    .end array-data
.end method

.method public constructor <init>(Lcom/unionpay/mobile/android/fully/a;Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UnionPay Card"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->b:Lcom/unionpay/mobile/android/fully/a;

    iput-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->c:Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v9, 0x3

    const/16 v8, -0x80

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-static {p0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v5

    move v0, v1

    :goto_f
    array-length v2, v5

    if-ge v0, v2, :cond_ff

    aget-byte v2, v5, v0

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    const/16 v6, 0x1f

    if-ne v2, v6, :cond_10b

    move v2, v3

    :goto_1c
    new-array v6, v2, [B

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v2}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7f

    add-int/2addr v2, v0

    aget-byte v0, v5, v2

    and-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    if-eq v0, v8, :cond_42

    aget-byte v0, v5, v2

    and-int/lit16 v0, v0, 0xff

    :goto_37
    new-array v3, v0, [B

    add-int/2addr v2, v4

    invoke-static {v5, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_42
    aget-byte v0, v5, v2

    and-int/lit8 v0, v0, 0x7f

    add-int/lit8 v4, v0, 0x1

    if-ne v4, v3, :cond_51

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_37

    :cond_51
    if-ne v4, v9, :cond_63

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    goto :goto_37

    :cond_63
    const/4 v0, 0x4

    if-ne v4, v0, :cond_108

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x3

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    goto :goto_37

    :cond_7f
    aget-byte v6, v5, v0

    and-int/lit8 v6, v6, 0x20

    const/16 v7, 0x20

    if-ne v6, v7, :cond_9b

    add-int/2addr v2, v0

    array-length v0, v5

    if-ge v2, v0, :cond_106

    aget-byte v0, v5, v2

    and-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    if-ne v0, v8, :cond_106

    aget-byte v0, v5, v2

    and-int/lit8 v0, v0, 0x7f

    add-int/lit8 v0, v0, 0x1

    :goto_98
    add-int/2addr v0, v2

    goto/16 :goto_f

    :cond_9b
    add-int v6, v0, v2

    array-length v0, v5

    if-ge v6, v0, :cond_b0

    aget-byte v0, v5, v6

    and-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    if-nez v0, :cond_b0

    aget-byte v0, v5, v6

    and-int/lit16 v0, v0, 0xff

    move v2, v4

    :goto_ac
    add-int/2addr v0, v2

    add-int/2addr v0, v6

    goto/16 :goto_f

    :cond_b0
    array-length v0, v5

    if-ge v6, v0, :cond_104

    aget-byte v0, v5, v6

    and-int/lit8 v0, v0, 0x7f

    add-int/lit8 v2, v0, 0x1

    :goto_b9
    if-ne v2, v3, :cond_c7

    add-int/lit8 v0, v6, 0x1

    array-length v7, v5

    if-ge v0, v7, :cond_c7

    add-int/lit8 v0, v6, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_ac

    :cond_c7
    if-ne v2, v9, :cond_de

    add-int/lit8 v0, v6, 0x2

    array-length v7, v5

    if-ge v0, v7, :cond_de

    add-int/lit8 v0, v6, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v7, v6, 0x2

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    goto :goto_ac

    :cond_de
    const/4 v0, 0x4

    if-ne v2, v0, :cond_102

    add-int/lit8 v0, v6, 0x2

    array-length v7, v5

    if-ge v0, v7, :cond_102

    add-int/lit8 v0, v6, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v7, v6, 0x2

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v0, v7

    add-int/lit8 v7, v6, 0x3

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    goto :goto_ac

    :cond_ff
    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_102
    move v0, v1

    goto :goto_ac

    :cond_104
    move v2, v1

    goto :goto_b9

    :cond_106
    move v0, v4

    goto :goto_98

    :cond_108
    move v0, v1

    goto/16 :goto_37

    :cond_10b
    move v2, v4

    goto/16 :goto_1c
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_b

    move-object v0, v4

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v5

    move v0, v1

    :goto_10
    array-length v2, v5

    if-ge v0, v2, :cond_3e

    aget-byte v2, v5, v0

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    const/16 v6, 0x1f

    if-ne v2, v6, :cond_42

    const/4 v2, 0x2

    :goto_1d
    new-array v6, v2, [B

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v2}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v0

    array-length v0, v5

    if-ge v2, v0, :cond_40

    aget-byte v0, v5, v2

    and-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    const/16 v6, -0x80

    if-ne v0, v6, :cond_40

    aget-byte v0, v5, v2

    and-int/lit8 v0, v0, 0x7f

    add-int/lit8 v0, v0, 0x1

    :goto_3c
    add-int/2addr v0, v2

    goto :goto_10

    :cond_3e
    move-object v0, v4

    goto :goto_a

    :cond_40
    move v0, v3

    goto :goto_3c

    :cond_42
    move v2, v3

    goto :goto_1d
.end method

.method public static b(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "82"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "9F36"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "9F10"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "9F26"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "5F34"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "57"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "9F63"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    :goto_2a
    :try_start_2a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_43

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3f

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    :cond_43
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "5F34"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "5F34"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "57"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :goto_68
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "f"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_94

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "F"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    :cond_94
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_68

    :cond_a1
    const-string v0, "TD2"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "D"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "F"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    const-string v3, "f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d0

    :cond_c5
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_d0
    const-string v3, "AN1"

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ED"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AMT"

    const-string v1, "9F02"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "9F10"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    const-string v0, "9F10"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_112

    const-string v0, "9F27"

    const-string v1, "80"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_112} :catch_113

    :cond_112
    :goto_112
    return-void

    :catch_113
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_112
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->c:Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;

    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->d:[B

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;->a([B)Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;->b()Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {v1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4F"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A000000333"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->c:Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;->a([B)Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;->b()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_37
    const-string v0, "noSupUnionpay"

    goto :goto_f
.end method

.method public final a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v7, 0x0

    const-string v0, "9F38"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_29
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_29

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    :cond_45
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->c:Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    add-int/lit8 v3, v3, 0x7

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/16 v4, -0x80

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/16 v5, -0x58

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    array-length v5, v1

    add-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/16 v5, -0x7d

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    array-length v5, v1

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const-string v1, "PBOC Transceive"

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v4}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;->c([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;->b([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;-><init>([B)V

    const-string v0, "PBOC receive"

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;->a()[B

    move-result-object v3

    invoke-static {v3}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;->c([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;->b()Z

    move-result v0

    if-nez v0, :cond_b0

    move-object v0, v2

    :goto_af
    return-object v0

    :cond_b0
    invoke-virtual {v1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "9F10"

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d0

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v3, 0x4

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_d0

    move-object v0, v2

    goto :goto_af

    :cond_d0
    invoke-virtual {v1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_af
.end method
