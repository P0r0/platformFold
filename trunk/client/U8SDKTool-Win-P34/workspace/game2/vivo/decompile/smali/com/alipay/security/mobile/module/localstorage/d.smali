.class public final Lcom/alipay/security/mobile/module/localstorage/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/alipay/security/mobile/module/localstorage/util/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_9
    return-void
.end method
