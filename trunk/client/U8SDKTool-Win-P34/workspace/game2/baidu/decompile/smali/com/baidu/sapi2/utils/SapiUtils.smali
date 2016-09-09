.class public Lcom/baidu/sapi2/utils/SapiUtils;
.super Ljava/lang/Object;
.source "SapiUtils.java"


# static fields
.field public static final KEY_QR_LOGIN_LP:Ljava/lang/String; = "lp"

.field public static final KEY_QR_LOGIN_SIGN:Ljava/lang/String; = "sign"

.field public static final MAX_WIFI_LIST:I = 0xa

.field public static final NETWORK_TYPE_1XRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final QR_LOGIN_LP_APP:Ljava/lang/String; = "app"

.field public static final QR_LOGIN_LP_PC:Ljava/lang/String; = "pc"

.field static final a:Ljava/lang/String; = "cmd"

.field static final b:Ljava/lang/String; = "error"

.field static final c:Ljava/lang/String; = "EEE, dd-MMM-yyyy HH:mm:ss \'GMT\'"

.field static final d:Ljava/lang/String; = "http://www."


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "bduss"    # Ljava/lang/String;

    .prologue
    .line 517
    const-string v0, "BDUSS"

    invoke-static {p0, v0, p1}, Lcom/baidu/sapi2/utils/SapiUtils;->buildBDUSSCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 10
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 324
    const/4 v4, 0x0

    .line 325
    .local v4, "p":Ljava/lang/Process;
    const/4 v2, 0x0

    .line 327
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ls -l "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 328
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2b} :catch_69
    .catchall {:try_start_2 .. :try_end_2b} :catchall_7d

    .line 329
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, "str":Ljava/lang/String;
    if-eqz v5, :cond_57

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_57

    .line 331
    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3c} :catch_91
    .catchall {:try_start_2b .. :try_end_3c} :catchall_8e

    move-result v1

    .line 332
    .local v1, "flag":C
    const/16 v6, 0x73

    if-eq v1, v6, :cond_45

    const/16 v6, 0x78

    if-ne v1, v6, :cond_57

    .line 333
    :cond_45
    const/4 v6, 0x1

    .line 339
    if-eqz v3, :cond_4b

    .line 341
    :try_start_48
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_52

    .line 347
    :cond_4b
    :goto_4b
    if-eqz v4, :cond_50

    .line 348
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    :cond_50
    move-object v2, v3

    .line 351
    .end local v1    # "flag":C
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "str":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :goto_51
    return v6

    .line 342
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "flag":C
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_52
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_4b

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "flag":C
    :cond_57
    if-eqz v3, :cond_5c

    .line 341
    :try_start_59
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_64

    .line 347
    :cond_5c
    :goto_5c
    if-eqz v4, :cond_94

    .line 348
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    move-object v2, v3

    .line 351
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "str":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_62
    :goto_62
    const/4 v6, 0x0

    goto :goto_51

    .line 342
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_64
    move-exception v0

    .line 343
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_5c

    .line 336
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "str":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_69
    move-exception v0

    .line 337
    .local v0, "e":Ljava/io/IOException;
    :goto_6a
    :try_start_6a
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_7d

    .line 339
    if-eqz v2, :cond_72

    .line 341
    :try_start_6f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_78

    .line 347
    .end local v0    # "e":Ljava/io/IOException;
    :cond_72
    :goto_72
    if-eqz v4, :cond_62

    .line 348
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    goto :goto_62

    .line 342
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_78
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_72

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_7d
    move-exception v6

    :goto_7e
    if-eqz v2, :cond_83

    .line 341
    :try_start_80
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_89

    .line 347
    :cond_83
    :goto_83
    if-eqz v4, :cond_88

    .line 348
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    :cond_88
    throw v6

    .line 342
    :catch_89
    move-exception v0

    .line 343
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_83

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_8e
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_7e

    .line 336
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_91
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_6a

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "str":Ljava/lang/String;
    :cond_94
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_62
.end method

.method public static buildBDUSSCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 503
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 504
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 505
    const/4 v2, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, -0x8

    :goto_14
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 506
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Lcom/baidu/sapi2/utils/SapiUtils;->buildCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 505
    :cond_20
    const/16 v1, 0x8

    goto :goto_14
.end method

.method public static buildCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .registers 8
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/util/Date;

    .prologue
    .line 483
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd-MMM-yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 484
    .local v0, "dateFormat":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";domain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";path=/;expires="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static buildIqiyiCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 493
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 494
    const/4 v2, 0x5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, -0x2

    :goto_14
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 495
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Lcom/baidu/sapi2/utils/SapiUtils;->buildCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 494
    :cond_20
    const/4 v1, 0x2

    goto :goto_14
.end method

.method public static checkRequestPermission(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 4
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 737
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_c

    invoke-virtual {p1, p0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static createRequestParams(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v2, "paramListBuffer":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_67

    .line 185
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 186
    .local v1, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 188
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 190
    :cond_4b
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 196
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pair":Lorg/apache/http/NameValuePair;
    :cond_67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 625
    if-nez p0, :cond_a

    .line 626
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 628
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 629
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 571
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 572
    .local v2, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 574
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v3

    .line 576
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :goto_17
    return-object v3

    .line 575
    :catch_18
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_17
.end method

.method public static getAuthorizedDomains(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    if-nez p0, :cond_7

    .line 557
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 559
    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/b;->l()Ljava/util/List;

    move-result-object v0

    goto :goto_6
.end method

.method public static getClientId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 147
    .local v0, "deviceId":Ljava/lang/String;
    :goto_4
    return-object v0

    .line 143
    .end local v0    # "deviceId":Ljava/lang/String;
    :catch_5
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Throwable;
    const-string v0, "123456789"

    .restart local v0    # "deviceId":Ljava/lang/String;
    goto :goto_4
.end method

.method public static getCookieBduss()Ljava/lang/String;
    .registers 11

    .prologue
    .line 412
    const-string v8, ""

    .line 413
    .local v8, "value":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    .line 414
    .local v3, "cookieManager":Landroid/webkit/CookieManager;
    const-string v9, "http://www.baidu.com"

    invoke-virtual {v3, v9}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "allCookies":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_41

    .line 416
    const-string v9, ";"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, "cookies":[Ljava/lang/String;
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1b
    if-ge v5, v6, :cond_41

    aget-object v2, v1, v5

    .line 418
    .local v2, "cookie":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_42

    .line 420
    const-string v9, "="

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 421
    .local v7, "pair":[Ljava/lang/String;
    array-length v9, v7

    const/4 v10, 0x2

    if-ne v9, v10, :cond_42

    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string v10, "BDUSS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    .line 422
    const/4 v9, 0x1

    aget-object v8, v7, v9

    .line 428
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "cookie":Ljava/lang/String;
    .end local v4    # "cookies":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "pair":[Ljava/lang/String;
    :cond_41
    return-object v8

    .line 417
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "cookie":Ljava/lang/String;
    .restart local v4    # "cookies":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b
.end method

.method public static getFastRegChannel(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 720
    if-eqz p0, :cond_11

    .line 721
    invoke-static {p0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/b;->m()Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, "num":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 726
    .end local v0    # "num":Ljava/lang/String;
    :goto_10
    return-object v0

    :cond_11
    const-string v0, "10698000036592"

    goto :goto_10
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .registers 7

    .prologue
    .line 157
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 158
    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 159
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 160
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 161
    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_14
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 162
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 163
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_14

    .line 164
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "mClientIp":Ljava/lang/String;
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2f} :catch_33

    move-result v6

    if-lez v6, :cond_14

    .line 174
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "mClientIp":Ljava/lang/String;
    :goto_32
    return-object v5

    .line 171
    :catch_33
    move-exception v2

    .line 172
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 174
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_37
    const/4 v5, 0x0

    goto :goto_32
.end method

.method public static getNetworkClass(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 273
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 274
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 275
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_17

    .line 276
    :cond_14
    const-string v4, "UNCNCT"

    .line 309
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :goto_16
    return-object v4

    .line 278
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :cond_17
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_21

    .line 279
    const-string v4, "WIFI"

    goto :goto_16

    .line 281
    :cond_21
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_3e

    .line 282
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 283
    .local v3, "networkType":I
    packed-switch v3, :pswitch_data_42

    .line 303
    const-string v4, "UNKNOWN"

    goto :goto_16

    .line 289
    :pswitch_31
    const-string v4, "2G"

    goto :goto_16

    .line 299
    :pswitch_34
    const-string v4, "3G"

    goto :goto_16

    .line 301
    :pswitch_37
    const-string v4, "4G"
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_16

    .line 306
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "networkType":I
    :catch_3a
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 309
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_3e
    const-string v4, "UNKNOWN"

    goto :goto_16

    .line 283
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_31
        :pswitch_31
        :pswitch_34
        :pswitch_31
        :pswitch_34
        :pswitch_34
        :pswitch_31
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 608
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 611
    .local v2, "manager":Landroid/content/pm/PackageManager;
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 613
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    .line 617
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .local v3, "versionCode":I
    :goto_f
    return v3

    .line 614
    .end local v3    # "versionCode":I
    :catch_10
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3    # "versionCode":I
    goto :goto_f
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 588
    const-string v3, "0"

    .line 590
    .local v3, "versionName":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 591
    .local v2, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 593
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_11} :catch_12

    .line 597
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :goto_11
    return-object v3

    .line 594
    :catch_12
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public static getWifiInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 360
    const-string v12, "wifi"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    .line 361
    .local v11, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    .line 362
    .local v10, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v1, ""

    .line 363
    .local v1, "cBssid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 364
    .local v2, "cLevel":I
    if-eqz v10, :cond_27

    .line 365
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v12

    invoke-static {v12}, Ljava/lang/StrictMath;->abs(I)I

    move-result v2

    .line 366
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    .line 367
    if-eqz v1, :cond_27

    .line 368
    const-string v12, ":"

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 371
    :cond_27
    const/4 v8, 0x0

    .line 372
    .local v8, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const-string v12, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v12, p0}, Lcom/baidu/sapi2/utils/SapiUtils;->checkRequestPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_34

    .line 373
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    .line 377
    :cond_34
    const/4 v3, 0x0

    .line 378
    .local v3, "count":I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 379
    .local v6, "sb":Ljava/lang/StringBuffer;
    if-eqz v8, :cond_7e

    .line 380
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_40
    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 381
    .local v7, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v0, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 382
    .local v0, "bssid":Ljava/lang/String;
    iget v12, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v12}, Ljava/lang/StrictMath;->abs(I)I

    move-result v5

    .line 383
    .local v5, "level":I
    const-string v12, ":"

    const-string v13, ""

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_40

    if-eqz v5, :cond_40

    .line 388
    const/16 v12, 0xa

    if-ge v3, v12, :cond_7e

    .line 389
    const-string v12, "h"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "m"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 390
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 397
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "level":I
    .end local v7    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_7e
    const-string v9, ""

    .line 398
    .local v9, "strWifi":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a3

    .line 399
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "h"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "km"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 402
    :cond_a3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method public static hasActiveNetwork(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 249
    if-nez p0, :cond_4

    .line 261
    :cond_3
    :goto_3
    return v3

    .line 254
    :cond_4
    :try_start_4
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 256
    .local v2, "mConnMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_f} :catch_14

    move-result-object v0

    .line 257
    .local v0, "aActiveInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    .line 258
    .end local v0    # "aActiveInfo":Landroid/net/NetworkInfo;
    .end local v2    # "mConnMgr":Landroid/net/ConnectivityManager;
    :catch_14
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static isQrLoginSchema(Ljava/lang/String;)Z
    .registers 11
    .param p0, "resultText"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 640
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_28

    const-string v6, "error"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "sign"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "cmd"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "lp"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2a

    :cond_28
    move v6, v8

    .line 655
    :goto_29
    return v6

    .line 645
    :cond_2a
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 646
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "&"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_37
    if-ge v1, v2, :cond_59

    aget-object v4, v0, v1

    .line 647
    .local v4, "paramPair":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 648
    .local v3, "param":[Ljava/lang/String;
    array-length v6, v3

    if-le v6, v7, :cond_4e

    .line 649
    aget-object v6, v3, v8

    aget-object v9, v3, v7

    invoke-interface {v5, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    :cond_4b
    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 650
    :cond_4e
    array-length v6, v3

    if-ne v6, v7, :cond_4b

    .line 651
    aget-object v6, v3, v8

    const-string v9, ""

    invoke-interface {v5, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    .line 655
    .end local v3    # "param":[Ljava/lang/String;
    .end local v4    # "paramPair":Ljava/lang/String;
    :cond_59
    const-string v6, "error"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_93

    const-string v6, "sign"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_93

    const-string v6, "cmd"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_93

    const-string v6, "lp"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_93

    move v6, v7

    goto :goto_29

    :cond_93
    move v6, v8

    goto :goto_29
.end method

.method public static isRoot()Z
    .registers 3

    .prologue
    .line 317
    const-string v0, "/system/bin/su"

    .line 318
    .local v0, "binPath":Ljava/lang/String;
    const-string v1, "/system/xbin/su"

    .line 319
    .local v1, "xBinPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    :cond_15
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_26
    const/4 v2, 0x1

    :goto_27
    return v2

    :cond_28
    const/4 v2, 0x0

    goto :goto_27
.end method

.method public static isSimReady(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 222
    if-eqz p0, :cond_b

    const-string v2, "android.permission.SEND_SMS"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_c

    .line 239
    :cond_b
    :goto_b
    :pswitch_b
    return v1

    .line 226
    :cond_c
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 227
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    packed-switch v2, :pswitch_data_1e

    goto :goto_b

    .line 237
    :pswitch_1c
    const/4 v1, 0x1

    goto :goto_b

    .line 227
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_1c
    .end packed-switch
.end method

.method public static isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z
    .registers 2
    .param p0, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 112
    if-eqz p0, :cond_1c

    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static isValidPhoneNumber(Ljava/lang/String;)Z
    .registers 4
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 207
    const/4 v2, 0x0

    .line 212
    :goto_7
    return v2

    .line 209
    :cond_8
    const-string v2, "^(1)\\d{10}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 210
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 212
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_7
.end method

.method public static isValidUsername(Ljava/lang/String;)Z
    .registers 4
    .param p0, "username"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "isValid":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-gt v1, v2, :cond_10

    .line 127
    const/4 v0, 0x1

    .line 129
    :cond_10
    return v0
.end method

.method public static parseQrLoginSchema(Ljava/lang/String;)Ljava/util/Map;
    .registers 11
    .param p0, "resultText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 669
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 670
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/baidu/sapi2/utils/SapiUtils;->isQrLoginSchema(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 683
    :cond_d
    return-object v5

    .line 674
    :cond_e
    const-string v6, "&"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_16
    if-ge v1, v2, :cond_d

    aget-object v4, v0, v1

    .line 675
    .local v4, "paramPair":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 676
    .local v3, "param":[Ljava/lang/String;
    array-length v6, v3

    if-le v6, v8, :cond_2d

    .line 677
    aget-object v6, v3, v9

    aget-object v7, v3, v8

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 678
    :cond_2d
    array-length v6, v3

    if-ne v6, v8, :cond_2a

    .line 679
    aget-object v6, v3, v9

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a
.end method

.method public static resetSilentShareStatus(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 707
    if-eqz p0, :cond_13

    invoke-static {p0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/b;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    if-nez v0, :cond_13

    .line 708
    invoke-static {p0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/b;->i()V

    .line 710
    :cond_13
    return-void
.end method

.method public static sendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sms"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 689
    if-eqz p0, :cond_f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    move v0, v6

    .line 697
    :goto_10
    return v0

    .line 693
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1d} :catch_1f

    .line 694
    const/4 v0, 0x1

    goto :goto_10

    .line 695
    :catch_1f
    move-exception v0

    move v0, v6

    .line 697
    goto :goto_10
.end method

.method public static syncCookies(Landroid/content/Context;Ljava/util/List;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 523
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    .line 524
    .local v2, "cookieManager":Landroid/webkit/CookieManager;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 526
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    .line 527
    .local v0, "configuration":Lcom/baidu/sapi2/SapiConfiguration;
    iget-object v5, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 528
    invoke-static {p0}, Lcom/baidu/sapi2/utils/SapiUtils;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    .line 530
    :cond_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cuid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";domain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v6}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v6

    const-string v7, "http://"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "https://"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "(:[0-9]{1,4})?"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";path=/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, "cuidCookie":Ljava/lang/String;
    iget-object v5, v0, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v5}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    if-eqz p1, :cond_9f

    .line 538
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_73
    :goto_73
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 539
    .local v1, "cookie":Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_73

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_73

    .line 540
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 544
    .end local v1    # "cookie":Lorg/apache/http/NameValuePair;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_9f
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 545
    return-void
.end method

.method public static webLogin(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bduss"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 440
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 452
    :cond_9
    :goto_9
    return v4

    .line 445
    :cond_a
    :try_start_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p0}, Lcom/baidu/sapi2/utils/SapiUtils;->getAuthorizedDomains(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 447
    .local v1, "domain":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://www."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, p1}, Lcom/baidu/sapi2/utils/SapiUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 451
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v1    # "domain":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_43
    move-exception v2

    .line 452
    .local v2, "e":Ljava/lang/Throwable;
    goto :goto_9

    .line 449
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_45
    invoke-static {p0, v0}, Lcom/baidu/sapi2/utils/SapiUtils;->syncCookies(Landroid/content/Context;Ljava/util/List;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_48} :catch_43

    .line 450
    const/4 v4, 0x1

    goto :goto_9
.end method

.method public static webLogout(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 465
    if-nez p0, :cond_4

    .line 477
    :goto_3
    return v4

    .line 470
    :cond_4
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p0}, Lcom/baidu/sapi2/utils/SapiUtils;->getAuthorizedDomains(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 472
    .local v1, "domain":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://www."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {v1, v7}, Lcom/baidu/sapi2/utils/SapiUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 476
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v1    # "domain":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_3f
    move-exception v2

    .line 477
    .local v2, "e":Ljava/lang/Throwable;
    goto :goto_3

    .line 474
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_41
    invoke-static {p0, v0}, Lcom/baidu/sapi2/utils/SapiUtils;->syncCookies(Landroid/content/Context;Ljava/util/List;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_44} :catch_3f

    .line 475
    const/4 v4, 0x1

    goto :goto_3
.end method
