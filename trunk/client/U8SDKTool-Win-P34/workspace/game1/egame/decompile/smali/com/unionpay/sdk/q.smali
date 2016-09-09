.class final Lcom/unionpay/sdk/q;
.super Ljava/lang/Object;


# static fields
.field static a:Z

.field static b:J

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UNKNOWN"

    aput-object v1, v0, v3

    const-string v1, "GPRS"

    aput-object v1, v0, v4

    const-string v1, "EDGE"

    aput-object v1, v0, v5

    const-string v1, "UMTS"

    aput-object v1, v0, v6

    const-string v1, "CDMA"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "EVDO_0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EVDO_A"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "1xRTT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HSDPA"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "HSUPA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "HSPA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "IDEN"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EVDO_B"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LTE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "EHRPD"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "HSPAP"

    aput-object v2, v0, v1

    sput-object v0, Lcom/unionpay/sdk/q;->c:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, v3

    const-string v1, "GSM"

    aput-object v1, v0, v4

    const-string v1, "CDMA"

    aput-object v1, v0, v5

    const-string v1, "SIP"

    aput-object v1, v0, v6

    sput-object v0, Lcom/unionpay/sdk/q;->d:[Ljava/lang/String;

    sput-boolean v3, Lcom/unionpay/sdk/q;->a:Z

    const-wide/32 v0, -0x493e0

    sput-wide v0, Lcom/unionpay/sdk/q;->b:J

    return-void
.end method

.method public static a()Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/unionpay/sdk/aw;->a(I)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "http.proxyHost"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_16
    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16

    :cond_19
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v0, v1

    goto :goto_16
.end method
