.class public Lcom/youju/statistics/a/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/youju/statistics/a/n;->a:Z

    const-string v0, "000000000000000"

    sput-object v0, Lcom/youju/statistics/a/n;->b:Ljava/lang/String;

    const-string v0, "000000000000000"

    sput-object v0, Lcom/youju/statistics/a/n;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)J
    .registers 6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/youju/statistics/c/r;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v0

    :goto_1d
    return-object v0

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Unkown version: "

    goto :goto_1d
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/youju/statistics/a/n;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/youju/statistics/a/n;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    packed-switch p0, :pswitch_data_20

    goto :goto_a

    :pswitch_11
    const-string v0, ""

    invoke-static {v0}, Lcom/youju/statistics/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :pswitch_18
    const-string v0, ""

    invoke-static {v0}, Lcom/youju/statistics/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_11
        :pswitch_18
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, ""

    :cond_12
    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    :cond_8
    :goto_8
    return-object p0

    :cond_9
    invoke-static {p0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    array-length v1, v0

    add-int/lit8 v2, p1, 0x1

    if-ge v1, v2, :cond_1f

    :cond_1c
    const-string p0, ""

    goto :goto_8

    :cond_1f
    aget-object p0, v0, p1

    goto :goto_8
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_3
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_26

    :try_start_8
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_37

    :try_start_d
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_39

    move-result-object v0

    new-array v2, v5, [Ljava/io/Closeable;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    new-array v2, v5, [Ljava/io/Closeable;

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    return-object v0

    :catchall_26
    move-exception v0

    move-object v1, v2

    :goto_28
    new-array v3, v5, [Ljava/io/Closeable;

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    new-array v2, v5, [Ljava/io/Closeable;

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_37
    move-exception v0

    goto :goto_28

    :catchall_39
    move-exception v0

    move-object v2, v3

    goto :goto_28
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/16 v3, 0x20

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v5, 0x1e

    if-ne v1, v5, :cond_34

    :cond_26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_34
    invoke-static {v0, v3}, Lcom/youju/statistics/a/n;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v0, ""

    if-eqz v6, :cond_4a

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x100

    invoke-static {v0, v6}, Lcom/youju/statistics/a/n;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_4a
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16
.end method

.method public static a(Lcom/youju/statistics/c/a/d;Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/youju/statistics/a/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youju/statistics/c/a/d;->b(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/youju/statistics/c/b/h;->a(Landroid/content/Context;)Lcom/youju/statistics/c/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/b/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youju/statistics/c/a/d;->d(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/youju/statistics/c/b/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youju/statistics/c/a/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs a([Ljava/io/Closeable;)V
    .registers 5

    invoke-static {p0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    return-void

    :cond_7
    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_6

    aget-object v0, p0, v1

    :try_start_e
    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    :goto_14
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_18
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_1c

    goto :goto_14

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static b(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static b()Lcom/youju/statistics/a/f;
    .registers 1

    sget-boolean v0, Lcom/youju/statistics/a/m;->g:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/youju/statistics/a/f;->b:Lcom/youju/statistics/a/f;

    :goto_6
    return-object v0

    :cond_7
    sget-boolean v0, Lcom/youju/statistics/a/m;->f:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/youju/statistics/a/f;->a:Lcom/youju/statistics/a/f;

    goto :goto_6

    :cond_e
    sget-object v0, Lcom/youju/statistics/a/f;->c:Lcom/youju/statistics/a/f;

    goto :goto_6
.end method

.method public static b(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/a/n;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    :try_start_0
    const-string v0, "com.amigo.utils.ProductConfiguration"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getUAString"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    :goto_20
    return-object v0

    :catch_21
    move-exception v0

    const-string v0, "ro.product.brand"

    const-string v1, "GiONEE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.product.model"

    const-string v2, "Phone"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.gn.extmodel"

    const-string v3, "Phone"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/youju/statistics/a/n;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/youju/statistics/a/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mozilla/5.0 (Linux; U; Android "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Build/IMM76D) AppleWebKit534.30(KHTML,like Gecko)Version/4.0 Mobile Safari/534.30 Id/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RV/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uaString"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uaString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_16

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_16
    invoke-static {p0}, Lcom/youju/statistics/a/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static b(J)Z
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p0

    const-wide/32 v4, 0x5265c00

    cmp-long v4, v2, v4

    if-gez v4, :cond_22

    const-wide/32 v4, -0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_22

    invoke-static {v0, v1}, Lcom/youju/statistics/a/n;->a(J)J

    move-result-wide v0

    invoke-static {p0, p1}, Lcom/youju/statistics/a/n;->a(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static b(Ljava/lang/CharSequence;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static b(Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static c(J)I
    .registers 4

    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/a/n;->b(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)I
    .registers 5

    const-string v0, "\\d"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, ""

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    :cond_21
    return v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/youju/statistics/a/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static c(I)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-static {v0}, Lcom/youju/statistics/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(J)I
    .registers 4

    const-wide/32 v0, 0xf4240

    div-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/youju/statistics/a/n;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/youju/statistics/a/n;->b:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "000000000000000"

    goto :goto_a
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    :try_start_9
    const-string v0, "\n"

    const-string v1, "\t"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    const-string v1, "#*##"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/youju/statistics/a/n;->g(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_1e

    move-result-object v0

    goto :goto_8

    :catch_1e
    move-exception v0

    move-object v1, v0

    move-object v0, p0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public static d(Landroid/content/Context;)V
    .registers 5

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    :try_start_b
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v0}, Lcom/youju/statistics/a/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/a/n;->b:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_1c

    goto :goto_a

    :catch_1c
    move-exception v0

    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImei"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static e(J)I
    .registers 6

    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static e()Ljava/lang/String;
    .registers 2

    const-string v0, "ro.gn.gnromvernumber"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/n;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)V
    .registers 5

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_8
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/n;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    sput-object v0, Lcom/youju/statistics/a/n;->c:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUic"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    invoke-static {p0}, Lcom/youju/statistics/a/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/a/n;->c:Ljava/lang/String;

    goto :goto_14
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const-string v1, "000000000000000"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "00000000000000"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "00000000000000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_3d

    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error imei is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_3d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static f(J)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()V
    .registers 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_4
    const-string v1, "com.youju.testmode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/youju/statistics/a/n;->a:Z
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/a/n;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "[\u007f\u0000-\u001f\u0080-\u009f]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_23
    return-object p0
.end method

.method public static g()Z
    .registers 2

    sget-boolean v0, Lcom/youju/statistics/a/n;->a:Z

    if-eqz v0, :cond_b

    const-string v0, "Utils"

    const-string v1, "is test mode"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    sget-boolean v0, Lcom/youju/statistics/a/n;->a:Z

    return v0
.end method

.method public static h()Ljava/lang/String;
    .registers 3

    const/4 v2, 0x0

    const-string v0, "**"

    sget-object v0, Lcom/youju/statistics/a/p;->a:[I

    invoke-static {}, Lcom/youju/statistics/a/n;->b()Lcom/youju/statistics/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youju/statistics/a/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    const-string v0, ""

    invoke-static {v0}, Lcom/youju/statistics/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    invoke-static {v0}, Lcom/youju/statistics/a/n;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {v0, v2}, Lcom/youju/statistics/a/n;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_28
    :goto_28
    return-object v0

    :pswitch_29
    invoke-static {v2}, Lcom/youju/statistics/a/n;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :pswitch_2e
    invoke-static {v2}, Lcom/youju/statistics/a/n;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_33
    const-string v0, "**"

    goto :goto_28

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_29
        :pswitch_2e
    .end packed-switch
.end method

.method private static h(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static i()Ljava/lang/String;
    .registers 4

    const/4 v3, 0x1

    const-string v0, "**"

    sget-object v1, Lcom/youju/statistics/a/p;->a:[I

    invoke-static {}, Lcom/youju/statistics/a/n;->b()Lcom/youju/statistics/a/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youju/statistics/a/f;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_26

    :goto_12
    invoke-static {v0}, Lcom/youju/statistics/a/n;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    :goto_18
    return-object v0

    :pswitch_19
    invoke-static {v3}, Lcom/youju/statistics/a/n;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :pswitch_1e
    invoke-static {v3}, Lcom/youju/statistics/a/n;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_23
    const-string v0, "**"

    goto :goto_18

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1e
    .end packed-switch
.end method

.method public static j()J
    .registers 3

    const-wide/16 v0, 0x7530

    :try_start_2
    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youju/statistics/c/r;->i()J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_10

    move-result-wide v0

    :goto_a
    invoke-static {v0, v1}, Lcom/youju/statistics/a/n;->c(J)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :catch_10
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method private static k()Z
    .registers 2

    const-string v0, ""

    invoke-static {v0}, Lcom/youju/statistics/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
