.class public Lcom/baidu/android/pushservice/jni/BaiduAppSSOJni;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaiduAppSSOJni"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    :try_start_0
    const-string v0, "bdpush_V2_5"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v0, "BaiduAppSSOJni"

    const-string v1, "Native library not found! Please copy libbdpush_V2_5.so into your project!"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native encrypt(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public static getDecrypted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    if-nez p1, :cond_5

    :try_start_3
    const-string p1, ""

    :cond_5
    invoke-static {p1}, Lcom/baidu/android/pushservice/jni/BaiduAppSSOJni;->getKey(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, "BaiduAppSSOJni"

    const-string v2, "keyInfo null"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return-object v1

    :cond_13
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/android/pushservice/j/b;->a([B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    if-eqz v3, :cond_8e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8e

    const/4 v0, 0x0

    const/16 v4, 0x10

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/baidu/android/pushservice/j/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_42} :catch_44
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_42} :catch_5e

    :goto_42
    move-object v1, v0

    goto :goto_12

    :catch_44
    move-exception v0

    const-string v2, "BaiduAppSSOJni"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDecrypted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :catch_5e
    move-exception v0

    const-string v0, "BaiduAppSSOJni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsatisfiedLinkError getDecrypted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnsatisfiedLinkError getDecrypted "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_12

    :cond_8e
    move-object v0, v1

    goto :goto_42
.end method

.method public static getEncrypted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :try_start_3
    const-string p1, ""

    :cond_5
    invoke-static {p1}, Lcom/baidu/android/pushservice/jni/BaiduAppSSOJni;->getKey(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_13

    const-string v1, "BaiduAppSSOJni"

    const-string v2, "keyInfo null"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_12

    const/4 v1, 0x0

    const/16 v4, 0x10

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/baidu/android/pushservice/j/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/j/b;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3c} :catch_3e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3c} :catch_58

    move-result-object v0

    goto :goto_12

    :catch_3e
    move-exception v1

    const-string v2, "BaiduAppSSOJni"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEncrypted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :catch_58
    move-exception v1

    const-string v1, "BaiduAppSSOJni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsatisfiedLinkError getEncrypted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnsatisfiedLinkError getEncrypted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_12
.end method

.method private static native getKey(Ljava/lang/String;)[B
.end method

.method public static getPushHash(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    if-nez p2, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    if-nez p3, :cond_61

    const-string v5, "other"

    :goto_c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/baidu/android/pushservice/util/q;->p(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2f

    const-string v1, "BaiduAppSSOJni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not get singInfo for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p0}, Lcom/baidu/android/pushservice/j/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/baidu/android/pushservice/jni/BaiduAppSSOJni;->getSsoHashNative(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[B

    move-result-object v1

    const-string v0, ""

    :try_start_40
    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/j/b;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_45} :catch_47

    move-result-object v0

    goto :goto_7

    :catch_47
    move-exception v1

    const-string v2, "BaiduAppSSOJni"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPushHashException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_61
    move-object v5, p3

    goto :goto_c
.end method

.method private static native getSsoHashNative(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[B
.end method
