.class public final Lcom/baidu/android/pushservice/util/q;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WorldReadableFiles"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:I

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.INTERNET"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.WRITE_SETTINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.VIBRATE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/android/pushservice/util/q;->a:[Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/baidu/android/pushservice/util/q;->b:I

    sput-boolean v3, Lcom/baidu/android/pushservice/util/q;->c:Z

    return-void
.end method

.method private static A(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.baidu.android.pushservice.util.PushADProvider"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Landroid/content/pm/ProviderInfo;

    invoke-direct {v3}, Landroid/content/pm/ProviderInfo;-><init>()V

    const-string v3, ""

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    const-string v3, "Utility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "provider name  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  export  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/baidu/android/pushservice/h/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string v1, "Utility"

    const-string v2, "com.baidu.android.pushservice.util.PushADProvider did not declared "

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_54
    return v0

    :cond_55
    iget-boolean v1, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez v1, :cond_87

    const-string v1, "Utility"

    const-string v2, "com.baidu.android.pushservice.util.PushADProvider exported declared wrong "

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_64} :catch_65

    goto :goto_54

    :catch_65
    move-exception v1

    const-string v2, "Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_54

    :cond_87
    const/4 v0, 0x1

    goto :goto_54
.end method

.method private static B(Landroid/content/Context;)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget v0, Lcom/baidu/android/pushservice/util/q;->b:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_12

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/q;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_10
    sput v0, Lcom/baidu/android/pushservice/util/q;->b:I

    :cond_12
    sget v0, Lcom/baidu/android/pushservice/util/q;->b:I

    if-nez v0, :cond_19

    :goto_16
    return v2

    :cond_17
    move v0, v2

    goto :goto_10

    :cond_19
    move v2, v1

    goto :goto_16
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 8

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    const-string v0, "ad_msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_6f

    :try_start_16
    instance-of v3, v0, Lcom/baidu/android/pushservice/message/PublicMsg;

    if-eqz v3, :cond_6f

    check-cast v0, Lcom/baidu/android/pushservice/message/PublicMsg;

    iget v0, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseStyle:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_21} :catch_66

    move-result-object v0

    :goto_22
    move-object v1, v0

    :goto_23
    const-string v0, "com.baidu.android.pushservice.PushService"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.baidu.android.pushservice.action.adnotification.ADSHOW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "action_type"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "advertisestyle"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Utility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLICK  intent  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  intent_extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_b

    :catch_66
    move-exception v0

    const-string v3, "Utility"

    const-string v4, "sendAdvertiseActionIntent>>"

    invoke-static {v3, v4, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23

    :cond_6f
    move-object v0, v1

    goto :goto_22
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_7

    :catch_f
    move-exception v1

    goto :goto_7
.end method

.method public static a(Lcom/baidu/android/pushservice/i/m;Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/pushservice/i/m;
    .registers 6

    invoke-static {p1, p2}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/android/pushservice/i/m;->e(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/baidu/android/pushservice/i/m;->g(Ljava/lang/String;)V

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/i/m;->a(I)V

    invoke-static {p1, p2}, Lcom/baidu/android/pushservice/util/q;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/i/m;->f(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/baidu/android/pushservice/util/q;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/i/m;->b(I)V

    :cond_2f
    return-object p0
.end method

.method public static a(J)Ljava/lang/String;
    .registers 16

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    long-to-double v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-long v4, v4

    const-wide/16 v6, 0x3c

    div-long v6, v2, v6

    long-to-float v1, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v1, v6

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    const-wide/16 v8, 0x3c

    div-long v8, v2, v8

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    long-to-float v1, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v1, v8

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-long v8, v8

    const-wide/16 v10, 0x18

    div-long/2addr v2, v10

    const-wide/16 v10, 0x3c

    div-long/2addr v2, v10

    const-wide/16 v10, 0x3c

    div-long/2addr v2, v10

    long-to-float v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/16 v10, 0x1

    sub-long v10, v2, v10

    const-wide/16 v12, 0x3

    cmp-long v1, v10, v12

    if-lez v1, :cond_6d

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM\u6708dd\u65e5"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6d
    const-wide/16 v10, 0x1

    sub-long v10, v2, v10

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_8e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5929\u524d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_68

    :cond_8e
    const-wide/16 v2, 0x1

    sub-long v2, v8, v2

    const-wide/16 v10, 0x0

    cmp-long v1, v2, v10

    if-lez v1, :cond_bb

    const-wide/16 v2, 0x18

    cmp-long v1, v8, v2

    if-ltz v1, :cond_a4

    const-string v1, "1\u5929\u524d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_68

    :cond_a4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5c0f\u65f6\u524d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_68

    :cond_bb
    const-wide/16 v2, 0x1

    sub-long v2, v6, v2

    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-lez v1, :cond_e8

    const-wide/16 v2, 0x3c

    cmp-long v1, v6, v2

    if-nez v1, :cond_d1

    const-string v1, "1\u5c0f\u65f6\u524d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_68

    :cond_d1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5206\u949f\u524d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_68

    :cond_e8
    const-wide/16 v2, 0x1

    sub-long v2, v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_117

    const-wide/16 v2, 0x3c

    cmp-long v1, v4, v2

    if-nez v1, :cond_ff

    const-string v1, "1\u5206\u949f\u524d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_68

    :cond_ff
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u79d2\u524d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_68

    :cond_117
    const-string v1, "\u521a\u521a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_68
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string v1, "Utility"

    const-string v2, "getMetaData context == null"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_a

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_24

    move-result-object v1

    :goto_17
    if-eqz v1, :cond_a

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_a

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :catch_24
    move-exception v1

    const-string v2, "getMetaDataString"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " GetMetaData Exception:\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_17
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V
    .registers 10

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_a
    return-void

    :cond_b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.baidu.android.pushservice.PushService"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.baidu.android.pushservice.action.setadswitch.ADFAILED"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ad_status"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "app_id"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "channel_id"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cuid"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "sdkversion"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    const-string v0, "Utility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLICK  intent  ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  intent_extra = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_a
.end method

.method public static a(Landroid/content/Context;J)V
    .registers 8

    const-string v0, "Utility"

    const-string v1, ">>> setAlarmForRestart"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/p;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/baidu/android/pushservice/util/q;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, v1, p1, p2}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Landroid/content/Intent;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;J)V
    .registers 10

    const-string v0, "Utility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> setAlarmForSendInent : \r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/high16 v1, 0x10000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, p3}, Lcom/baidu/android/pushservice/util/q;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lt v0, v1, :cond_4d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_14
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.baidu.android.pushservice.CommandService"

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_22
    const-string v0, "command_type"

    const-string v1, "reflect_receiver"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_29
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_30

    move-result-object v0

    if-eqz v0, :cond_4d

    :goto_2f
    return-void

    :catch_30
    move-exception v0

    const-string v1, "Utility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_56
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_5f
    invoke-static {p0, p3, p2}, Lcom/baidu/android/pushservice/util/q;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6c

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6c
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2f
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_a
    return-void

    :cond_b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.baidu.android.pushservice.PushService"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.baidu.android.pushservice.action.ADACKERROR"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "app_id"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "channel_id"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cuid"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ad_id"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "error_code"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "error_msg"

    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Utility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLICK  intent  ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  intent_extra = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_a
.end method

.method public static a(Landroid/content/Context;ZZ)V
    .registers 9

    const/4 v3, 0x0

    const-string v0, "Utility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": updateServiceInfo isForce = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isSend = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "pst"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/baidu/android/pushservice/util/q;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "pr_app_v"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lt v2, v1, :cond_47

    if-eqz p1, :cond_8c

    :cond_47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".push_sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_92

    const-string v3, "priority2"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :goto_74
    const-string v3, "version2"

    invoke-static {}, Lcom/baidu/android/pushservice/b;->a()S

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pr_app_v"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_8c
    if-eqz p2, :cond_91

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/p;->d(Landroid/content/Context;)V

    :cond_91
    return-void

    :cond_92
    const-string v3, "priority2"

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->j(Landroid/content/Context;)J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_74
.end method

.method public static declared-synchronized a(Ljava/lang/String;Landroid/content/Context;)V
    .registers 16

    const-class v1, Lcom/baidu/android/pushservice/util/q;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Lcom/baidu/android/pushservice/util/q;->B(Landroid/content/Context;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_15

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    :goto_9
    monitor-exit v1

    return-void

    :cond_b
    :try_start_b
    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v0

    if-lez v0, :cond_18

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/q;->b(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_15

    goto :goto_9

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_18
    :try_start_18
    invoke-static {p1}, Lcom/baidu/android/pushservice/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_18 .. :try_end_4a} :catchall_15

    move-result-object v2

    :try_start_4b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    const-string v4, "baidu/pushservice/files"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_63
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "baidu/pushservice/files/msg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".log"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d9

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v6, v3

    const/4 v0, 0x0

    :goto_9d
    if-ge v0, v6, :cond_d9

    aget-object v8, v3, v0

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "msg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_d6

    const/4 v10, 0x3

    const/16 v11, 0xb

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x5265c00

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    long-to-int v9, v10

    const/4 v10, 0x7

    if-lt v9, v10, :cond_d6

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_d6
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    :cond_d9
    new-instance v0, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v0, v7, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_e5} :catch_e7
    .catchall {:try_start_4b .. :try_end_e5} :catchall_15

    goto/16 :goto_9

    :catch_e7
    move-exception v0

    :try_start_e8
    const-string v2, "Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_104
    .catchall {:try_start_e8 .. :try_end_104} :catchall_15

    goto/16 :goto_9
.end method

.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    const/4 v12, 0x7

    const/4 v0, 0x0

    const-class v2, Lcom/baidu/android/pushservice/util/q;

    monitor-enter v2

    :try_start_5
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_40

    const/4 v1, 0x0

    const/4 v4, 0x4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5c
    .catchall {:try_start_5 .. :try_end_5c} :catchall_102

    move-result-object v3

    :try_start_5d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    const-string v6, "baidu/pushservice/files"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a9

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_75
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "baidu/pushservice/files/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".log"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_a7} :catch_e4
    .catchall {:try_start_5d .. :try_end_a7} :catchall_102

    :goto_a7
    monitor-exit v2

    return-void

    :cond_a9
    :try_start_a9
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v7, v5

    :goto_b9
    if-ge v0, v7, :cond_75

    aget-object v8, v5, v0

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sub-int/2addr v9, v10

    if-lt v9, v12, :cond_e1

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_e1} :catch_e4
    .catchall {:try_start_a9 .. :try_end_e1} :catchall_102

    :cond_e1
    add-int/lit8 v0, v0, 0x1

    goto :goto_b9

    :catch_e4
    move-exception v0

    :try_start_e5
    const-string v1, "Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_101
    .catchall {:try_start_e5 .. :try_end_101} :catchall_102

    goto :goto_a7

    :catchall_102
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v3, "baidu/hybrid"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_19
    new-instance v0, Ljava/io/File;

    const-string v3, "notimap"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_46
    .catchall {:try_start_1 .. :try_end_25} :catchall_66

    :try_start_25
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_89
    .catchall {:try_start_25 .. :try_end_2a} :catchall_81

    :try_start_2a
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_8c
    .catchall {:try_start_2a .. :try_end_2d} :catchall_83

    if-eqz v2, :cond_32

    :try_start_2f
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_38

    :cond_32
    :goto_32
    if-eqz v3, :cond_37

    :try_start_34
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_3f

    :cond_37
    :goto_37
    return-void

    :catch_38
    move-exception v0

    const-string v1, "Utility"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    :catch_3f
    move-exception v0

    const-string v1, "Utility"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37

    :catch_46
    move-exception v0

    move-object v2, v1

    :goto_48
    :try_start_48
    const-string v3, "Utility"

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_86

    if-eqz v1, :cond_52

    :try_start_4f
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_5f

    :cond_52
    :goto_52
    if-eqz v2, :cond_37

    :try_start_54
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_37

    :catch_58
    move-exception v0

    const-string v1, "Utility"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37

    :catch_5f
    move-exception v0

    const-string v1, "Utility"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_52

    :catchall_66
    move-exception v0

    move-object v3, v1

    :goto_68
    if-eqz v1, :cond_6d

    :try_start_6a
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_73

    :cond_6d
    :goto_6d
    if-eqz v3, :cond_72

    :try_start_6f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_7a

    :cond_72
    :goto_72
    throw v0

    :catch_73
    move-exception v1

    const-string v2, "Utility"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6d

    :catch_7a
    move-exception v1

    const-string v2, "Utility"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_72

    :catchall_81
    move-exception v0

    goto :goto_68

    :catchall_83
    move-exception v0

    move-object v1, v2

    goto :goto_68

    :catchall_86
    move-exception v0

    move-object v3, v2

    goto :goto_68

    :catch_89
    move-exception v0

    move-object v2, v3

    goto :goto_48

    :catch_8c
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_48
.end method

.method public static a()Z
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static a(IIII)Z
    .registers 8

    const/4 v0, 0x1

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge p0, p2, :cond_2a

    if-ge p0, v1, :cond_20

    if-ge v1, p2, :cond_20

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    if-ne v1, p0, :cond_24

    if-ge v2, p1, :cond_1f

    :cond_24
    if-ne v1, p2, :cond_28

    if-le v2, p3, :cond_1f

    :cond_28
    const/4 v0, 0x0

    goto :goto_1f

    :cond_2a
    if-le p0, p2, :cond_3d

    if-le v1, p0, :cond_32

    const/16 v3, 0x18

    if-lt v1, v3, :cond_1f

    :cond_32
    if-lt v1, p2, :cond_1f

    if-ne v1, p0, :cond_38

    if-ge v2, p1, :cond_1f

    :cond_38
    if-ne v1, p2, :cond_28

    if-gt v2, p3, :cond_28

    goto :goto_1f

    :cond_3d
    if-ne p0, v1, :cond_28

    if-lt v2, p1, :cond_28

    if-lt p3, v2, :cond_28

    goto :goto_1f
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    const/4 v0, 0x1

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/root"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_8
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return v0

    :catch_15
    move-exception v1

    const-string v1, "com.noshufou.android.su"

    invoke-static {p0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_14

    const-string v1, "com.miui.uac"

    invoke-static {p0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_14

    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_16

    move v0, v1

    :goto_15
    return v0

    :cond_16
    if-eqz p3, :cond_42

    const/16 v4, 0x220

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v2, :cond_26

    move v0, v1

    goto :goto_15

    :cond_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v2

    goto :goto_15

    :cond_42
    const/16 v4, 0x220

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v2, :cond_50

    move v0, v1

    goto :goto_15

    :cond_50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_54
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-static {p0, p2}, Lcom/baidu/android/pushservice/util/q;->v(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v5, v5, Landroid/content/pm/ServiceInfo;->exported:Z

    if-nez v5, :cond_76

    move v0, v1

    goto :goto_15

    :cond_76
    if-eq v4, v2, :cond_80

    if-nez v4, :cond_54

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_7e} :catch_82

    if-eqz v0, :cond_54

    :cond_80
    move v0, v2

    goto :goto_15

    :catch_82
    move-exception v0

    const-string v2, "Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9f
    move v0, v1

    goto/16 :goto_15
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/android/pushservice/jni/PushSocket;->a()Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "Utility"

    const-string v2, "check socket library failed"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_12
    return v0

    :cond_13
    invoke-static {p0, p2}, Lcom/baidu/android/pushservice/util/q;->b(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "Utility"

    const-string v2, "check SDK AndroidManifest failed"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_12

    :cond_25
    invoke-static {p1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "Utility"

    const-string v2, "check Apikey failed"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_12

    :cond_37
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->l(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_49

    const-string v1, "Utility"

    const-string v2, "check SelfConfiged Reciver failed"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_12

    :cond_49
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->m(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string v1, "Utility"

    const-string v2, "check CommandService Enable failed"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_12

    :cond_5b
    if-eqz p2, :cond_6f

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->A(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6f

    const-string v1, "Utility"

    const-string v2, "check ContentProvider Enable failed"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_12

    :cond_6f
    const/4 v0, 0x1

    goto :goto_12
.end method

.method static a(Landroid/content/Context;Z)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v2, :cond_3c

    const-string v1, "Utility"

    const-string v2, "Permissions Push-SDK need are not exist !"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    goto :goto_7

    :catch_1e
    move-exception v1

    const-string v2, "Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_3c
    if-eqz p1, :cond_4e

    :try_start_3e
    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "Utility"

    const-string v2, "android.permission.EXPAND_STATUS_BAR permission Push-SDK  EXPAND_STATUS_BAR need is not exist !"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_4e
    move v1, v0

    :goto_4f
    sget-object v3, Lcom/baidu/android/pushservice/util/q;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_7e

    sget-object v3, Lcom/baidu/android/pushservice/util/q;->a:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3, v2}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string v2, "Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/baidu/android/pushservice/util/q;->a:[Ljava/lang/String;

    aget-object v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " permission Push-SDK need is not exist !"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_7a} :catch_1e

    goto :goto_7

    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_7e
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_e
    const-string v0, "Utility"

    const-string v1, "api_key incorrect "

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16
.end method

.method static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_e

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    :cond_e
    return v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static a([B[B)[B
    .registers 6

    const/4 v3, 0x0

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 9

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-static {p0, p3}, Lcom/baidu/android/pushservice/util/q;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x24

    if-lt v1, v2, :cond_2d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_17
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "com.baidu.android.pushservice.CommandService"

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_22
    const-string v1, "command_type"

    const-string v2, "reflect_receiver"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_29
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2e

    move-result-object v0

    :cond_2d
    :goto_2d
    return-object v0

    :catch_2e
    move-exception v1

    const-string v2, "Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v6, 0x8

    const/16 v5, 0x10

    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "0"

    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "0800000000000000"

    invoke-direct {v1, v2, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a3

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "encode =  1"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "22727017042830095"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "000000ff00000000"

    invoke-direct {v1, v2, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "000000000000ffff"

    invoke-direct {v2, v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "00ffff0000000000"

    invoke-direct {v2, v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "00000000ffff0000"

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "00000000ffff0000"

    invoke-direct {v2, v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "ff00000000000000"

    invoke-direct {v2, v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_9d
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    :cond_a3
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "282335"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "00ff0000"

    invoke-direct {v1, v2, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "000000ff"

    invoke-direct {v2, v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "ff000000"

    invoke-direct {v2, v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "0000ff00"

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "0000ff00"

    invoke-direct {v2, v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_9d
.end method

.method public static b()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string v5, "baidu/hybrid"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_81
    .catchall {:try_start_3 .. :try_end_15} :catchall_a4

    move-result v3

    if-nez v3, :cond_31

    if-eqz v1, :cond_1d

    :try_start_1a
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_23

    :cond_1d
    :goto_1d
    if-eqz v1, :cond_22

    :try_start_1f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_2a

    :cond_22
    :goto_22
    return-object v1

    :catch_23
    move-exception v2

    const-string v3, "Utility"

    invoke-static {v3, v2}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d

    :catch_2a
    move-exception v0

    const-string v2, "Utility"

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22

    :cond_31
    :try_start_31
    new-instance v5, Ljava/io/File;

    const-string v3, "notimap"

    invoke-direct {v5, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3b} :catch_81
    .catchall {:try_start_31 .. :try_end_3b} :catchall_a4

    move-result v3

    if-nez v3, :cond_57

    if-eqz v1, :cond_43

    :try_start_40
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_50

    :cond_43
    :goto_43
    if-eqz v1, :cond_22

    :try_start_45
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_22

    :catch_49
    move-exception v0

    const-string v2, "Utility"

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22

    :catch_50
    move-exception v2

    const-string v3, "Utility"

    invoke-static {v3, v2}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43

    :cond_57
    :try_start_57
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5c} :catch_81
    .catchall {:try_start_57 .. :try_end_5c} :catchall_a4

    :try_start_5c
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_61} :catch_c4
    .catchall {:try_start_5c .. :try_end_61} :catchall_bf

    :try_start_61
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_67} :catch_c7
    .catchall {:try_start_61 .. :try_end_67} :catchall_c1

    if-eqz v2, :cond_6c

    :try_start_69
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_73

    :cond_6c
    :goto_6c
    if-eqz v3, :cond_71

    :try_start_6e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_7a

    :cond_71
    :goto_71
    move-object v1, v0

    goto :goto_22

    :catch_73
    move-exception v1

    const-string v2, "Utility"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6c

    :catch_7a
    move-exception v1

    const-string v2, "Utility"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_71

    :catch_81
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_84
    :try_start_84
    const-string v4, "Utility"

    invoke-static {v4, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_89
    .catchall {:try_start_84 .. :try_end_89} :catchall_c1

    if-eqz v2, :cond_8e

    :try_start_8b
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_95

    :cond_8e
    :goto_8e
    if-eqz v3, :cond_c9

    :try_start_90
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_9c

    move-object v0, v1

    goto :goto_71

    :catch_95
    move-exception v0

    const-string v2, "Utility"

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8e

    :catch_9c
    move-exception v0

    const-string v2, "Utility"

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_71

    :catchall_a4
    move-exception v0

    move-object v3, v1

    :goto_a6
    if-eqz v1, :cond_ab

    :try_start_a8
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_b1

    :cond_ab
    :goto_ab
    if-eqz v3, :cond_b0

    :try_start_ad
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b8

    :cond_b0
    :goto_b0
    throw v0

    :catch_b1
    move-exception v1

    const-string v2, "Utility"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ab

    :catch_b8
    move-exception v1

    const-string v2, "Utility"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b0

    :catchall_bf
    move-exception v0

    goto :goto_a6

    :catchall_c1
    move-exception v0

    move-object v1, v2

    goto :goto_a6

    :catch_c4
    move-exception v0

    move-object v2, v1

    goto :goto_84

    :catch_c7
    move-exception v0

    goto :goto_84

    :cond_c9
    move-object v0, v1

    goto :goto_71
.end method

.method private static declared-synchronized b(Ljava/lang/String;Landroid/content/Context;)V
    .registers 11

    const-class v1, Lcom/baidu/android/pushservice/util/q;

    monitor-enter v1

    :try_start_3
    const-string v0, "samonitor"

    const/4 v2, 0x0

    if-eqz p1, :cond_ad

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/android/pushservice/j/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/baidu/android/pushservice/util/q;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/baidu/android/pushservice/util/q;->t(Landroid/content/Context;)I

    move-result v5

    sget-boolean v0, Lcom/baidu/android/pushservice/util/q;->c:Z

    if-nez v0, :cond_79

    invoke-static {p1}, Lcom/baidu/android/pushservice/util/q;->q(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_36
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_59

    goto :goto_36

    :catchall_59
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5c
    :try_start_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#AllPackagesUsingPush:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/android/pushservice/util/q;->c:Z

    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#IMEI:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#networkType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#mobileType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_5c .. :try_end_ad} :catchall_59

    :cond_ad
    monitor-exit v1

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_15

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :catch_15
    move-exception v1

    const-string v2, "Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    const/16 v3, 0x80

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_1c

    move-result-object v1

    :goto_f
    if-eqz v1, :cond_8

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_8

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_8

    :catch_1c
    move-exception v1

    const-string v3, "getMetaDataBoolean"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " GetMetaData Exception:\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_f
.end method

.method public static b(Landroid/content/Context;Z)Z
    .registers 5

    const/4 v0, 0x0

    const-string v1, "Utility"

    const-string v2, "check PushService AndroidManifest declearation !"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/q;->c(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    goto :goto_e
.end method

.method public static b(Landroid/content/Context;)[I
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v0, 0x0

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v3, v1, v0

    const/4 v0, 0x1

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v2, v1, v0

    return-object v1
.end method

.method public static c(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_7

    move-result-wide v0

    long-to-int v0, v0

    :goto_6
    return v0

    :catch_7
    move-exception v1

    :try_start_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_13
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_19

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_6

    :catch_19
    move-exception v1

    const-string v2, "Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static c()J
    .registers 6

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_27

    move-result-wide v0

    :goto_26
    return-wide v0

    :catch_27
    move-exception v2

    const-string v3, "Utility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Lcom/baidu/android/pushservice/j/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_16
    const-string v0, ""

    :goto_18
    return-object v0

    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a8

    :try_start_3d
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/j/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4c} :catch_8b

    :goto_4c
    :try_start_4c
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+++++++++++++++++++++ push token is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4c .. :try_end_6a} :catch_6b

    goto :goto_18

    :catch_6b
    move-exception v0

    const-string v1, "Utility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_18

    :catch_8b
    move-exception v0

    const-string v2, "Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a8
    move-object v0, v1

    goto :goto_4c
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 5

    invoke-static {p0}, Lcom/baidu/android/pushservice/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v0, 0x0

    :goto_d
    const-string v1, "Utility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- isDisableService : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_26
    const-string v1, "disabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_d

    :cond_30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisableService"

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/q;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_d
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_15

    const/4 v0, 0x1

    goto :goto_9

    :catch_15
    move-exception v1

    goto :goto_9
.end method

.method private static c(Landroid/content/Context;Z)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3a

    const-string v2, "com.baidu.android.pushservice.action.advertise.notification.SHOW"

    const-string v3, "com.baidu.android.pushservice.PushServiceReceiver"

    invoke-static {p0, v2, v3, v1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v1, "Utility"

    const-string v2, "com.baidu.android.pushservice.PushServiceReceiver did not declaredcom.baidu.android.pushservice.action.advertise.notification.SHOW"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return v0

    :cond_16
    const-string v2, "com.baidu.android.pushservice.action.adnotification.ADCLICK"

    const-string v3, "com.baidu.android.pushservice.PushServiceReceiver"

    invoke-static {p0, v2, v3, v1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v1, "Utility"

    const-string v2, "com.baidu.android.pushservice.PushServiceReceiver did not declaredcom.baidu.android.pushservice.action.adnotification.ADCLICK"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_28
    const-string v2, "com.baidu.android.pushservice.action.adnotification.ADDELETE"

    const-string v3, "com.baidu.android.pushservice.PushServiceReceiver"

    invoke-static {p0, v2, v3, v1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v1, "Utility"

    const-string v2, "com.baidu.android.pushservice.PushServiceReceiver did not declaredcom.baidu.android.pushservice.action.adnotification.ADDELETE"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_3a
    const-string v2, "com.baidu.android.pushservice.action.notification.SHOW"

    const-string v3, "com.baidu.android.pushservice.PushServiceReceiver"

    invoke-static {p0, v2, v3, v1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v1, "Utility"

    const-string v2, "com.baidu.android.pushservice.PushServiceReceiver did not declaredcom.baidu.android.pushservice.action.notification.SHOW"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_4c
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v3, "com.baidu.android.pushservice.PushServiceReceiver"

    invoke-static {p0, v2, v3, v1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v1, "Utility"

    const-string v2, "com.baidu.android.pushservice.PushServiceReceiver did not declaredandroid.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_5e
    const-string v2, "com.baidu.android.pushservice.action.BIND_SYNC"

    const-string v3, "com.baidu.android.pushservice.RegistrationReceiver"

    invoke-static {p0, v2, v3, v1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_70

    const-string v1, "Utility"

    const-string v2, "com.baidu.android.pushservice.RegistrationReceiver did not declaredcom.baidu.android.pushservice.action.BIND_SYNC"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_70
    const-string v2, "com.baidu.android.pushservice.action.METHOD"

    const-string v3, "com.baidu.android.pushservice.RegistrationReceiver"

    invoke-static {p0, v2, v3, v1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_82

    const-string v1, "Utility"

    const-string v2, "com.baidu.android.pushservice.PushServiceReceiver did not declaredcom.baidu.android.pushservice.action.notification.SHOW"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_82
    move v0, v1

    goto :goto_15
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static d(Ljava/lang/String;)I
    .registers 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/bin/ping -w 1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_7a
    .catchall {:try_start_2 .. :try_end_1c} :catchall_94

    move-result-object v3

    :try_start_1d
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2b} :catch_b1
    .catchall {:try_start_1d .. :try_end_2b} :catchall_a8

    :try_start_2b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    move v2, v0

    :cond_31
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_67

    add-int/lit8 v2, v2, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "64 bytes from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4f} :catch_b5
    .catchall {:try_start_2b .. :try_end_4f} :catchall_aa

    move-result v4

    if-eqz v4, :cond_64

    if-eqz v1, :cond_57

    :try_start_54
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_5d

    :cond_57
    :goto_57
    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_5c
    :goto_5c
    return v0

    :catch_5d
    move-exception v1

    const-string v2, "Utility"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_57

    :cond_64
    const/4 v4, 0x3

    if-le v2, v4, :cond_31

    :cond_67
    const/4 v0, -0x1

    if-eqz v1, :cond_6d

    :try_start_6a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_73

    :cond_6d
    :goto_6d
    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    goto :goto_5c

    :catch_73
    move-exception v1

    const-string v2, "Utility"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6d

    :catch_7a
    move-exception v0

    move-object v1, v2

    :goto_7c
    :try_start_7c
    const-string v3, "Utility"

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_ad

    if-eqz v1, :cond_86

    :try_start_83
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_8d

    :cond_86
    :goto_86
    if-eqz v2, :cond_8b

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_8b
    const/4 v0, 0x1

    goto :goto_5c

    :catch_8d
    move-exception v0

    const-string v1, "Utility"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_86

    :catchall_94
    move-exception v0

    move-object v3, v2

    :goto_96
    if-eqz v2, :cond_9b

    :try_start_98
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_a1

    :cond_9b
    :goto_9b
    if-eqz v3, :cond_a0

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_a0
    throw v0

    :catch_a1
    move-exception v1

    const-string v2, "Utility"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9b

    :catchall_a8
    move-exception v0

    goto :goto_96

    :catchall_aa
    move-exception v0

    move-object v2, v1

    goto :goto_96

    :catchall_ad
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_96

    :catch_b1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_7c

    :catch_b5
    move-exception v0

    move-object v2, v3

    goto :goto_7c
.end method

.method public static d(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.android.pushservice.action.METHOD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "pkg_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "method_version"

    const-string v2, "V2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_d

    const/16 v3, 0x220

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_21} :catch_36

    move-result-object v1

    :goto_22
    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_d

    :catch_36
    move-exception v1

    const-string v2, "Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_22
.end method

.method public static d()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/baidu/android/pushservice/util/d;->a()Lcom/baidu/android/pushservice/util/d;

    move-result-object v1

    const-string v2, "ro.miui.ui.version.name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/baidu/android/pushservice/util/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "V6"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "V7"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_1f

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1d
    const/4 v0, 0x1

    :cond_1e
    :goto_1e
    return v0

    :catch_1f
    move-exception v1

    goto :goto_1e
.end method

.method public static e(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.android.pushservice.action.METHOD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "method_version"

    const-string v2, "V2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v6, 0x1

    const-string v0, ""

    :try_start_3
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "http://"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_13
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_4d

    array-length v1, v3

    if-lez v1, :cond_4d

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v4, :cond_42

    aget-object v2, v3, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1e

    :cond_42
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_4d

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4c} :catch_4e

    move-result-object v0

    :cond_4d
    :goto_4d
    return-object v0

    :catch_4e
    move-exception v0

    const-string v0, ""

    goto :goto_4d
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    const/16 v3, 0x80

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_1e

    move-result-object v1

    :goto_f
    if-eqz v1, :cond_8

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_8

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "IsBaiduApp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_8

    :catch_1e
    move-exception v1

    const-string v3, "isBaiduApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " GetMetaData Exception:\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_f
.end method

.method public static f(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5

    const/4 v3, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.android.pushservice.action.METHOD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "method_version"

    const-string v2, "V2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/p;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "method"

    const-string v2, "pushservice_restart_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "priority2"

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_25
    if-eqz p1, :cond_2a

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2a
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/b;->a(Landroid/content/Context;Z)V

    return-void

    :cond_32
    const-string v1, "priority2"

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->k(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_25
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)J
    .registers 8

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    :goto_a
    return-wide v0

    :cond_b
    :try_start_b
    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/q;->s(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".push_sync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v3, "priority2"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_32} :catch_34

    move-result-wide v0

    goto :goto_a

    :catch_34
    move-exception v2

    const-string v3, "Utility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create packagecontext exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static g(Landroid/content/Context;)Landroid/content/Intent;
    .registers 2

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->d(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.baidu.android.pushservice.action.PUSH_SERVICE"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_5e

    move-result-object v0

    if-nez v0, :cond_14

    :cond_13
    :goto_13
    return v4

    :cond_14
    const/16 v3, 0x220

    :try_start_16
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_84

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    :goto_1c
    move v3, v4

    :goto_1d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_86

    const-string v6, "com.baidu.android.pushservice.PushService"

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v0, :cond_80

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z

    :goto_4b
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.baidu.android.pushservice.PushService"

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-eq v1, v5, :cond_5c

    if-nez v1, :cond_13

    if-eqz v0, :cond_13

    :cond_5c
    move v4, v5

    goto :goto_13

    :catch_5e
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_61
    const-string v3, "Utility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    move-object v1, v0

    goto :goto_1c

    :cond_80
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1d

    :catch_84
    move-exception v2

    goto :goto_61

    :cond_86
    move v0, v4

    goto :goto_4b
.end method

.method public static i(Landroid/content/Context;)V
    .registers 3

    const-string v0, "Utility"

    const-string v1, ">>> setAlarmForPeriodRestart"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v0, 0x493e0

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;J)V

    return-void
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.baidu.android.pushservice.action.notification.CLICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_61

    move-result-object v2

    if-nez v2, :cond_18

    :cond_17
    :goto_17
    return v3

    :cond_18
    const/16 v5, 0x220

    :try_start_1a
    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_83

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v4, :cond_17

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    :goto_3c
    const-string v5, "com.baidu.android.pushservice.action.MESSAGE"

    invoke-static {p0, v5, v1, v4}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "com.baidu.android.pushservice.action.RECEIVE"

    invoke-static {p0, v5, v1, v4}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_17

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-eq v1, v4, :cond_5f

    if-nez v1, :cond_17

    if-eqz v0, :cond_17

    :cond_5f
    move v3, v4

    goto :goto_17

    :catch_61
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_64
    const-string v5, "Utility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    move-object v0, v1

    goto :goto_1e

    :catch_83
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v8

    goto :goto_64

    :cond_88
    move v0, v3

    goto :goto_3c
.end method

.method public static j(Landroid/content/Context;)J
    .registers 9

    const-wide/16 v6, 0x1

    const/4 v0, 0x5

    const/4 v5, 0x1

    invoke-static {}, Lcom/baidu/android/pushservice/b;->a()S

    move-result v1

    int-to-long v2, v1

    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v1

    if-lez v1, :cond_19

    if-le v1, v0, :cond_77

    :goto_11
    const/4 v1, 0x4

    shl-long/2addr v2, v1

    const-wide/16 v4, 0xa

    add-long/2addr v2, v4

    int-to-long v0, v0

    add-long/2addr v0, v2

    :goto_18
    return-wide v0

    :cond_19
    const/4 v0, 0x2

    shl-long v0, v2, v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    const-string v2, "Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PriorityVersion, baidu app"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-long/2addr v0, v6

    :cond_45
    shl-long/2addr v0, v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/baidu/android/pushservice/util/q;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string v2, "Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PriorityVersion, system app"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-long/2addr v0, v6

    :cond_6f
    shl-long/2addr v0, v5

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->n(Landroid/content/Context;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_18

    :cond_77
    move v0, v1

    goto :goto_11
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".push_sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "version2"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_2a

    :cond_29
    :goto_29
    return v0

    :cond_2a
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.baidu.android.pushservice.CommandService"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/pm/ServiceInfo;

    invoke-direct {v4}, Landroid/content/pm/ServiceInfo;-><init>()V

    const-string v4, ""

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_53

    const-string v0, "Utility"

    const-string v2, "com.baidu.android.pushservice.CommandService did not declared "

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_29

    :cond_53
    iget-boolean v2, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    if-nez v2, :cond_29

    const-string v0, "Utility"

    const-string v2, "com.baidu.android.pushservice.CommandService  exported declared wrong"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5e} :catch_60

    move v0, v1

    goto :goto_29

    :catch_60
    move-exception v0

    const-string v2, "Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_29
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_2
    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/q;->s(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".push_sync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_40

    move-result-object v1

    move-object v2, v1

    :goto_1f
    if-nez v2, :cond_5e

    const-string v1, "Utility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t init Version!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    return v0

    :catch_40
    move-exception v1

    const-string v3, "Utility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_5e
    const-string v1, "version2"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_68

    move v0, v1

    goto :goto_3f

    :cond_68
    const-string v1, "version"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_3f
.end method

.method public static k(Landroid/content/Context;)J
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".push_sync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "priority2"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "BaiduPush_CHANNEL"

    invoke-static {p0, p1, v0}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method static l(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/q;->i(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static m(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/q;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static n(Landroid/content/Context;)I
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "android.intent.action.USER_PRESENT"

    const-string v3, "com.baidu.android.pushservice.PushServiceReceiver"

    invoke-static {p0, v2, v3, v1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    move v0, v1

    :cond_d
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    const-string v3, "com.baidu.android.pushservice.PushServiceReceiver"

    invoke-static {p0, v2, v3, v1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_19

    add-int/lit8 v0, v0, 0x1

    :cond_19
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    const-string v3, "com.baidu.android.pushservice.PushServiceReceiver"

    invoke-static {p0, v2, v3, v1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_25

    add-int/lit8 v0, v0, 0x1

    :cond_25
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    const-string v3, "com.baidu.android.pushservice.PushServiceReceiver"

    invoke-static {p0, v2, v3, v1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_31

    add-int/lit8 v0, v0, 0x1

    :cond_31
    return v0
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/q;->o(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_14

    :goto_13
    return-object p1

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".push_sync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    const-string v1, "com.baidu.push.cur_pkg"

    invoke-static {p0, v1}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v2, v4

    :goto_39
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :try_start_49
    invoke-static {p0, v6}, Lcom/baidu/android/pushservice/util/q;->s(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_87

    move-result-object v1

    :try_start_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ".push_sync"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x5

    invoke-virtual {v1, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_64} :catch_138

    move-result-object v0

    move-object v8, v1

    :goto_66
    if-nez v0, :cond_a8

    const-string v0, "Utility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " doesn\'t init Version!"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :catch_87
    move-exception v0

    move-object v1, v7

    :goto_89
    const-string v8, "Utility"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create packagecontext exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    move-object v8, v1

    goto :goto_66

    :cond_a8
    const-string v1, "priority2"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v11, v0, v2

    if-lez v11, :cond_10c

    const-string v11, "Utility"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Find more higher priority pkg : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " priority = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",Current highest priority pkg : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " priority = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v6}, Lcom/baidu/android/pushservice/util/q;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f2

    move-object p1, v6

    :goto_ef
    move-wide v2, v0

    goto/16 :goto_39

    :cond_f2
    const-string v0, "Utility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "push service is disabled"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    goto :goto_ef

    :cond_10c
    cmp-long v11, v0, v2

    if-nez v11, :cond_13b

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13b

    invoke-static {v8, v6}, Lcom/baidu/android/pushservice/util/q;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13b

    move-object p1, v6

    goto :goto_ef

    :cond_11e
    const-string v0, "Utility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current highest priority Push PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :catch_138
    move-exception v0

    goto/16 :goto_89

    :cond_13b
    move-wide v0, v2

    goto :goto_ef
.end method

.method public static o(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.android.pushservice.action.BIND_SYNC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_14

    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    const/16 v3, 0x220

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_1b

    move-result-object v0

    goto :goto_13

    :catch_1b
    move-exception v1

    const-string v2, "Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_9
    const-string v1, "Utility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNoDisturb parameters illegal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    return v0

    :cond_22
    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_3b

    const/4 v2, 0x4

    array-length v3, v1

    if-ne v2, v3, :cond_3b

    aget v0, v1, v0

    const/4 v2, 0x1

    aget v2, v1, v2

    const/4 v3, 0x2

    aget v3, v1, v3

    const/4 v4, 0x3

    aget v1, v1, v4

    invoke-static {v0, v2, v3, v1}, Lcom/baidu/android/pushservice/util/q;->a(IIII)Z

    move-result v0

    :cond_3b
    const-string v1, "Utility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNoDisturb :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/baidu/android/pushservice/j/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.baidu.pushservice.singelinstancev2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/j/e;->a([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/j/e;->a([BZ)Ljava/lang/String;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1b} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_37

    move-result-object v0

    goto :goto_7

    :catch_1d
    move-exception v1

    const-string v1, "Utility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " packageName not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_37
    move-exception v1

    const-string v2, "Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static q(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/q;->o(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2f
    return-object v1
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "com.baidu.android.pushservice.MESSAGE_IDS_RECEIVED"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_c
    const-string v0, "com.baidu.android.pushservice.MESSAGE_IDS_RECEIVED"

    invoke-static {p0, v0, p1}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v0, 0x1

    goto :goto_12

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_29

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c
.end method

.method public static r(Landroid/content/Context;)Ljava/util/List;
    .registers 6
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_16

    const-string v2, "Utility"

    const-string v3, "ActivityManager is null !!!"

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const/16 v2, 0x1f4

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_24
    const-string v2, "Utility"

    const-string v3, "runnServs is null !!!"

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.baidu.android.pushservice.PushService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_52} :catch_53

    goto :goto_2f

    :catch_53
    move-exception v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_5b
    return-object v1
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x2

    :try_start_8
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    :cond_c
    :goto_c
    return-object v0

    :catch_d
    move-exception v1

    const-string v2, "Utility"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/j;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_3d

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WIFI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :cond_24
    :goto_24
    return-object v0

    :cond_25
    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v0, "unknown"

    goto :goto_24

    :cond_3d
    const-string v0, "unknown"

    goto :goto_24
.end method

.method public static t(Landroid/content/Context;)I
    .registers 5

    const/4 v1, 0x0

    const-string v0, ""

    if-eqz p0, :cond_23

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/j;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "WF"

    :cond_23
    :goto_23
    :pswitch_23
    const-string v2, "WF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    const/4 v0, 0x1

    :goto_2c
    return v0

    :cond_2d
    const-string v0, "2G"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    packed-switch v2, :pswitch_data_78

    goto :goto_23

    :pswitch_37
    const-string v0, "3G"

    goto :goto_23

    :pswitch_3a
    const-string v0, "3G"

    goto :goto_23

    :pswitch_3d
    const-string v0, "3G"

    goto :goto_23

    :pswitch_40
    const-string v0, "3G"

    goto :goto_23

    :pswitch_43
    const-string v0, "3G"

    goto :goto_23

    :pswitch_46
    const-string v0, "3G"

    goto :goto_23

    :pswitch_49
    const-string v0, "3G"

    goto :goto_23

    :pswitch_4c
    const-string v0, "3G"

    goto :goto_23

    :pswitch_4f
    const-string v0, "3G"

    goto :goto_23

    :pswitch_52
    const-string v0, "3G"

    goto :goto_23

    :pswitch_55
    const-string v0, "4G"

    goto :goto_23

    :cond_58
    const-string v2, "2G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    const/4 v0, 0x2

    goto :goto_2c

    :cond_62
    const-string v2, "3G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const/4 v0, 0x3

    goto :goto_2c

    :cond_6c
    const-string v2, "4G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    const/4 v0, 0x4

    goto :goto_2c

    :cond_76
    move v0, v1

    goto :goto_2c

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_23
        :pswitch_23
        :pswitch_37
        :pswitch_23
        :pswitch_3d
        :pswitch_40
        :pswitch_3a
        :pswitch_43
        :pswitch_49
        :pswitch_46
        :pswitch_23
        :pswitch_4f
        :pswitch_55
        :pswitch_4c
        :pswitch_52
    .end packed-switch
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    :try_start_2
    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_d

    move-result-object v0

    :goto_c
    return-object v0

    :catch_d
    move-exception v1

    const-string v2, "Utility"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "com.baidu.push.cur_pkg"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/q;->m(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/q;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const-string v1, "Utility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Highest priority Service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is disabled,Maybe use setComponentEnabledSetting method"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/android/pushservice/c/b;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_75

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_75

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/h;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_2b
    if-nez v0, :cond_74

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".push_sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "r_v2"

    invoke-static {p0, v2, v3}, Lcom/baidu/android/pushservice/util/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/android/pushservice/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_74

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_74

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_74

    move v0, v1

    :cond_74
    return v0

    :cond_75
    move v0, v2

    goto :goto_2b
.end method

.method private static v(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public static v(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/q;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static w(Landroid/content/Context;)J
    .registers 15

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/q;->o(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_16

    const-wide/16 v2, 0x0

    :goto_15
    return-wide v2

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".push_sync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "priority2"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v4, "com.baidu.push.cur_pkg"

    invoke-static {p0, v4}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v12, v0

    move-object v1, v2

    move-wide v2, v12

    :goto_47
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_135

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_59
    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/q;->s(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ".push_sync"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x5

    invoke-virtual {v5, v4, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_74} :catch_97

    move-result-object v4

    move-object v6, v5

    :goto_76
    if-nez v4, :cond_b7

    const-string v4, "Utility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " doesn\'t init Version!"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    :catch_97
    move-exception v4

    const-string v9, "Utility"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "create packagecontext exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    move-object v6, v5

    goto :goto_76

    :cond_b7
    const-string v5, "priority2"

    const-wide/16 v10, 0x0

    invoke-interface {v4, v5, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v9, v4, v2

    if-lez v9, :cond_122

    const-string v9, "Utility"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Find more higher priority pkg : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " priority = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",Current highest priority pkg : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " priority = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/baidu/android/pushservice/util/q;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_106

    move-object v2, v0

    move-wide v0, v4

    :goto_101
    move-wide v12, v0

    move-object v1, v2

    move-wide v2, v12

    goto/16 :goto_47

    :cond_106
    const-string v4, "Utility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "push service is disabled"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v12, v2

    move-object v2, v1

    move-wide v0, v12

    goto :goto_101

    :cond_122
    cmp-long v9, v4, v2

    if-nez v9, :cond_159

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_159

    invoke-static {v6, v0}, Lcom/baidu/android/pushservice/util/q;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_159

    move-object v2, v0

    move-wide v0, v4

    goto :goto_101

    :cond_135
    const-string v0, "Utility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current highest priority Push PackageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Highest Priority is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_159
    move-wide v12, v2

    move-object v2, v1

    move-wide v0, v12

    goto :goto_101
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/baidu/android/pushservice/f/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_52

    move v0, v1

    :goto_9
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/j;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_16

    move v2, v1

    :cond_16
    const-string v1, "220.181.112.244"

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/q;->d(Ljava/lang/String;)I

    move-result v1

    const-string v3, "202.108.23.105"

    invoke-static {v3}, Lcom/baidu/android/pushservice/util/q;->d(Ljava/lang/String;)I

    move-result v3

    const-string v4, "202.108.23.109"

    invoke-static {v4}, Lcom/baidu/android/pushservice/util/q;->d(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_2d
    const-string v6, "frontia_avail"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "network_avail"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "baidu_avail"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "sa_avail"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "logic_avail"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_46} :catch_4b

    :goto_46
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_4b
    move-exception v0

    const-string v1, "Utility"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_46

    :cond_52
    move v0, v2

    goto :goto_9
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "www.baidu.com"

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sa.tuisong.baidu.com"

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "api.tuisong.baidu.com"

    invoke-static {v2}, Lcom/baidu/android/pushservice/util/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_17
    const-string v4, "baidu_ip"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sa_ip"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "logic_ip"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_26} :catch_4d

    :goto_26
    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v0

    if-lez v0, :cond_48

    const-string v0, "Utility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkInfo json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_4d
    move-exception v0

    const-string v1, "Utility"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method private static z(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "com.baidu.android.pushservice.action.PUSH_SERVICE"

    const-string v1, "com.baidu.android.pushservice.PushService"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
