.class final Lcom/unionpay/sdk/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/sdk/r$b;,
        Lcom/unionpay/sdk/r$a;,
        Lcom/unionpay/sdk/r$c;
    }
.end annotation


# static fields
.field static a:Z

.field static volatile b:Z

.field static volatile c:Z

.field static d:Z

.field static e:Ljava/util/List;

.field static f:Z

.field private static final g:Landroid/os/HandlerThread;

.field private static h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/unionpay/sdk/r;->a:Z

    sput-boolean v1, Lcom/unionpay/sdk/r;->b:Z

    sput-boolean v1, Lcom/unionpay/sdk/r;->c:Z

    sput-boolean v1, Lcom/unionpay/sdk/r;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/unionpay/sdk/r;->e:Ljava/util/List;

    sput-boolean v1, Lcom/unionpay/sdk/r;->f:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PauseEventThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unionpay/sdk/r;->g:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/sdk/r;->h:Landroid/os/Handler;

    sget-object v0, Lcom/unionpay/sdk/r;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/unionpay/sdk/s;

    sget-object v1, Lcom/unionpay/sdk/r;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unionpay/sdk/s;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/unionpay/sdk/r;->h:Landroid/os/Handler;

    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_24
    return-object v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private static final a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v1, v3

    if-le v1, v0, :cond_3a

    :goto_1a
    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_3c

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\t"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_3a
    array-length v0, v3

    goto :goto_1a

    :cond_3c
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_46

    const/4 v1, 0x1

    invoke-static {v2, v3, v0, v1}, Lcom/unionpay/sdk/r;->a(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;Ljava/lang/Throwable;I)V

    :cond_46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()V
    .registers 8

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Determine if app is quiting, after being waited for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/unionpay/sdk/ad;->j:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sec, now isAppQuiting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/unionpay/sdk/am;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unionpay/sdk/al;->a([Ljava/lang/String;)V

    invoke-static {}, Lcom/unionpay/sdk/am;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-static {}, Lcom/unionpay/sdk/r$b;->a()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Lcom/unionpay/sdk/r$a;

    invoke-direct {v0}, Lcom/unionpay/sdk/r$a;-><init>()V

    iget-object v1, v0, Lcom/unionpay/sdk/r$a;->a:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/unionpay/sdk/r$a;->a:Ljava/util/HashMap;

    const-string v2, "occurTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/unionpay/sdk/r$a;->a:Ljava/util/HashMap;

    const-string v2, "sessionEnd"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/unionpay/sdk/aj;->a()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-string v0, "2"

    invoke-static {v0}, Lcom/unionpay/sdk/am;->a(Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_82} :catch_83

    :cond_82
    :goto_82
    return-void

    :catch_83
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_82
.end method

.method static a(Landroid/content/Context;)V
    .registers 4

    sget-boolean v0, Lcom/unionpay/sdk/r;->b:Z

    if-nez v0, :cond_55

    if-nez p0, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "unionpay_APP_ID"

    invoke-static {v0, v1}, Lcom/unionpay/sdk/r;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unionpay_CHANNEL_ID"

    invoke-static {v0, v2}, Lcom/unionpay/sdk/r;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_35
    const-string v0, "[SDKInit] unionpay_APP_ID not found in AndroidManifest.xml!"

    invoke-static {v0}, Lcom/unionpay/sdk/al;->b(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_3a} :catch_3b

    goto :goto_6

    :catch_3b
    move-exception v0

    const-string v1, "[SDKInit] Failed to initialize!"

    invoke-static {v1, v0}, Lcom/unionpay/sdk/al;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_42
    if-eqz v0, :cond_4e

    :try_start_44
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_50

    :cond_4e
    const-string v0, "Default"

    :cond_50
    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/unionpay/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_54} :catch_3b

    goto :goto_6

    :cond_55
    invoke-static {}, Lcom/unionpay/sdk/r;->d()V

    invoke-static {}, Lcom/unionpay/sdk/r;->e()V

    goto :goto_6
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageStart being called! pageName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/al;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/unionpay/sdk/r;->d:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/sdk/r;->d:Z

    :goto_1a
    return-void

    :cond_1b
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_31

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_27
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/unionpay/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1a

    :cond_31
    invoke-static {p0, p1, v2}, Lcom/unionpay/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1a
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    if-eqz p0, :cond_9

    sget-boolean v0, Lcom/unionpay/sdk/r;->b:Z

    if-nez v0, :cond_9

    invoke-static {p0}, Lcom/unionpay/sdk/r;->a(Landroid/content/Context;)V

    :cond_9
    new-instance v0, Lcom/unionpay/sdk/z;

    invoke-direct {v0, p2, p1}, Lcom/unionpay/sdk/z;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/unionpay/sdk/aw;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/unionpay/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    new-instance v0, Lcom/unionpay/sdk/t;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/unionpay/sdk/t;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/unionpay/sdk/aw;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcom/unionpay/sdk/r;->b:Z

    if-nez v2, :cond_30

    if-nez p3, :cond_20

    if-eqz p0, :cond_1e

    if-eqz p1, :cond_1e

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    :goto_16
    if-nez v0, :cond_20

    const-string v0, "[SDKInit] Failed to initialize due to invalid input."

    invoke-static {v0}, Lcom/unionpay/sdk/al;->b(Ljava/lang/String;)V

    :goto_1d
    return-void

    :cond_1e
    move v0, v1

    goto :goto_16

    :cond_20
    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/unionpay/sdk/aw;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "[SDKInit] Permission \"android.permission.INTERNET\" is needed."

    invoke-static {v0}, Lcom/unionpay/sdk/al;->b(Ljava/lang/String;)V

    :goto_2d
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/sdk/r;->b:Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_30} :catch_a9

    :cond_30
    :goto_30
    new-instance v0, Lcom/unionpay/sdk/r$c;

    invoke-direct {v0}, Lcom/unionpay/sdk/r$c;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_1d

    :cond_39
    :try_start_39
    const-string v0, "ChannelConfig.json"

    invoke-static {p0, v0}, Lcom/unionpay/sdk/aw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f2

    :cond_4b
    :goto_4b
    invoke-static {p0, p1, p2}, Lcom/unionpay/sdk/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/unionpay/sdk/r;->d()V

    invoke-static {}, Lcom/unionpay/sdk/ai;->a()Lcom/unionpay/sdk/OttoBus;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/sdk/as;->a()Lcom/unionpay/sdk/as;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/sdk/OttoBus;->register(Ljava/lang/Object;)V

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/unionpay/sdk/aw;->a(I)Z
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_61} :catch_a9

    move-result v0

    if-eqz v0, :cond_c4

    const/4 v0, 0x0

    :try_start_65
    sget-object v1, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_b0

    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    :cond_73
    :goto_73
    if-eqz v0, :cond_a0

    sget-boolean v1, Lcom/unionpay/sdk/r;->f:Z

    if-nez v1, :cond_a0

    const-string v1, "android.app.Application$ActivityLifecycleCallbacks"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "registerActivityLifecycleCallbacks"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v2, Lcom/unionpay/sdk/af;

    invoke-direct {v2}, Lcom/unionpay/sdk/af;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/sdk/r;->f:Z
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_a0} :catch_bb

    :cond_a0
    :goto_a0
    :try_start_a0
    new-instance v0, Lcom/unionpay/sdk/aa;

    invoke-direct {v0, p0}, Lcom/unionpay/sdk/aa;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/unionpay/sdk/aw;->a(Ljava/lang/Runnable;)V
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a8} :catch_a9

    goto :goto_2d

    :catch_a9
    move-exception v0

    const-string v1, "[SDKInit] Failed to initialize!"

    invoke-static {v1, v0}, Lcom/unionpay/sdk/al;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    :cond_b0
    :try_start_b0
    sget-object v1, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_73

    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_ba} :catch_bb

    goto :goto_73

    :catch_bb
    move-exception v0

    :try_start_bc
    sget-boolean v1, Lcom/unionpay/sdk/r;->a:Z

    if-eqz v1, :cond_a0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a0

    :cond_c4
    new-instance v0, Lcom/unionpay/sdk/ab;

    invoke-direct {v0, p0}, Lcom/unionpay/sdk/ab;-><init>(Landroid/content/Context;)V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_c9} :catch_a9

    :try_start_c9
    const-string v1, "android.app.ActivityManagerNative"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "gDefault"

    const-string v3, "android.app.IActivityManager"

    invoke-static {v1, v0, v2, v3}, Lcom/unionpay/sdk/aw;->a(Ljava/lang/Class;Lcom/unionpay/sdk/ao;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/sdk/r;->f:Z
    :try_end_d9
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_d9} :catch_da

    goto :goto_a0

    :catch_da
    move-exception v0

    :try_start_db
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerActivityLifecycleListener "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/al;->b(Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/lang/Throwable; {:try_start_db .. :try_end_f1} :catch_a9

    goto :goto_a0

    :cond_f2
    move-object p2, v0

    goto/16 :goto_4b
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    invoke-static {}, Lcom/unionpay/sdk/am;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/unionpay/sdk/am;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/unionpay/sdk/r;->e()V

    :cond_15
    const-string v0, "0"

    invoke-static {v0}, Lcom/unionpay/sdk/am;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_21

    sget-boolean v0, Lcom/unionpay/sdk/r;->f:Z

    if-eqz v0, :cond_21

    :goto_20
    return-void

    :cond_21
    const/4 v0, 0x0

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_52

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_36
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_46

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/sdk/r;->d:Z

    goto :goto_20

    :cond_46
    new-instance v1, Lcom/unionpay/sdk/u;

    invoke-direct {v1, p1, p0, v0}, Lcom/unionpay/sdk/u;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/unionpay/sdk/aw;->a(Ljava/lang/Runnable;)V

    goto :goto_20

    :cond_4f
    move-object v1, v0

    move-object v0, p1

    goto :goto_36

    :cond_52
    move-object v1, v0

    move-object v0, p1

    goto :goto_36
.end method

.method static a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 3

    new-instance v0, Lcom/unionpay/sdk/y;

    invoke-direct {v0, p1, p0}, Lcom/unionpay/sdk/y;-><init>(Ljava/lang/Throwable;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/unionpay/sdk/aw;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static final a(Ljava/lang/String;J)V
    .registers 6

    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    const-string v1, "unionpaypref_longtime"

    const-string v2, "unionpayadditionalVersionName"

    invoke-static {v0, v1, v2, p0}, Lcom/unionpay/sdk/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    const-string v1, "unionpaypref_longtime"

    const-string v2, "unionpayadditionalVersionCode"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/unionpay/sdk/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1a
    return-void
.end method

.method private static final a(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;Ljava/lang/Throwable;I)V
    .registers 11

    const/16 v2, 0x32

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v3, v1, -0x1

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    move v6, v1

    move v1, v3

    move v3, v6

    :goto_f
    if-ltz v1, :cond_24

    if-ltz v3, :cond_24

    aget-object v4, v0, v1

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v4

    goto :goto_f

    :cond_24
    if-le v1, v2, :cond_27

    move v1, v2

    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Caused by : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_40
    if-gt v3, v1, :cond_5f

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\t"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_5f
    const/4 v1, 0x5

    if-lt p3, v1, :cond_63

    :cond_62
    return-void

    :cond_63
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_62

    add-int/lit8 p3, p3, 0x1

    move-object p1, v0

    goto :goto_2
.end method

.method static final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    move-object v0, p0

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_7

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move v0, v1

    :goto_33
    const/4 v5, 0x3

    if-ge v0, v5, :cond_93

    array-length v5, v2

    if-ge v1, v5, :cond_93

    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "java."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4f

    const-string v6, "java."

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_90

    :cond_4f
    const-string v6, "javax."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5f

    const-string v6, "javax."

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_90

    :cond_5f
    const-string v6, "android."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6f

    const-string v6, "android."

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_90

    :cond_6f
    const-string v6, "com.android."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7f

    const-string v5, "com.android."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_90

    :cond_7f
    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    :cond_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_93
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_a1
    invoke-static {}, Lcom/unionpay/sdk/ar;->c()Lcom/unionpay/sdk/ar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unionpay/sdk/v;->a()V

    invoke-static {}, Lcom/unionpay/sdk/ar;->c()Lcom/unionpay/sdk/ar;

    move-result-object v2

    invoke-static {p0}, Lcom/unionpay/sdk/r;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/unionpay/sdk/v;->a(JLjava/lang/String;)J

    invoke-static {}, Lcom/unionpay/sdk/ar;->c()Lcom/unionpay/sdk/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/sdk/v;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    const-string v3, "unionpaypref_shorttime"

    const-string v4, "unionpaypref.end.key"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/unionpay/sdk/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_5

    :cond_cd
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_a1
.end method

.method static synthetic b()V
    .registers 5

    invoke-static {}, Lcom/unionpay/sdk/am;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    const-string v3, "unionpaypref_longtime"

    const-string v4, "unionpaypref.init.key"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/unionpay/sdk/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/unionpay/sdk/am;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/sdk/aw;->c:Z

    goto :goto_1b
.end method

.method static b(Landroid/content/Context;)V
    .registers 3

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/unionpay/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageEnd being called! pageName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/al;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_24

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    :cond_24
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_34

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/sdk/r;->d:Z

    :goto_33
    return-void

    :cond_34
    const/4 v0, 0x7

    invoke-static {p0, p1, v0}, Lcom/unionpay/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_33
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/unionpay/sdk/am;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/unionpay/sdk/am;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/unionpay/sdk/r;->e()V

    :cond_15
    const-string v0, "0"

    invoke-static {v0}, Lcom/unionpay/sdk/am;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/unionpay/sdk/r;->b:Z

    if-nez v0, :cond_21

    invoke-static {p0, p1, p2}, Lcom/unionpay/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    new-instance v0, Lcom/unionpay/sdk/w;

    invoke-direct {v0, p0}, Lcom/unionpay/sdk/w;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/unionpay/sdk/aw;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    const/4 v1, 0x0

    const-string v0, "1"

    invoke-static {v0}, Lcom/unionpay/sdk/am;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_d

    sget-boolean v0, Lcom/unionpay/sdk/r;->f:Z

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    new-instance v0, Lcom/unionpay/sdk/x;

    invoke-direct {v0, p1, p0}, Lcom/unionpay/sdk/x;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/unionpay/sdk/aw;->a(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/unionpay/sdk/r;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/unionpay/sdk/r;->h:Landroid/os/Handler;

    sget-wide v2, Lcom/unionpay/sdk/ad;->j:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_c
.end method

.method static synthetic c()V
    .registers 0

    invoke-static {}, Lcom/unionpay/sdk/r;->e()V

    return-void
.end method

.method static c(Landroid/content/Context;)V
    .registers 3

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/unionpay/sdk/r;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    sget-boolean v0, Lcom/unionpay/sdk/r;->b:Z

    if-nez v0, :cond_9

    invoke-static {p0}, Lcom/unionpay/sdk/r;->a(Landroid/content/Context;)V

    :cond_9
    invoke-static {p0}, Lcom/unionpay/sdk/ah;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d()V
    .registers 2

    sget-object v0, Lcom/unionpay/sdk/r;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/unionpay/sdk/r;->e:Ljava/util/List;

    invoke-static {}, Lcom/unionpay/sdk/h;->a()Lcom/unionpay/sdk/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/unionpay/sdk/r;->e:Ljava/util/List;

    invoke-static {}, Lcom/unionpay/sdk/f;->a()Lcom/unionpay/sdk/f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/unionpay/sdk/r;->e:Ljava/util/List;

    invoke-static {}, Lcom/unionpay/sdk/g;->a()Lcom/unionpay/sdk/g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/unionpay/sdk/r;->e:Ljava/util/List;

    invoke-static {}, Lcom/unionpay/sdk/d;->a()Lcom/unionpay/sdk/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static e()V
    .registers 4

    new-instance v0, Lcom/unionpay/sdk/r$a;

    invoke-direct {v0}, Lcom/unionpay/sdk/r$a;-><init>()V

    iget-object v1, v0, Lcom/unionpay/sdk/r$a;->a:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/unionpay/sdk/r$a;->a:Ljava/util/HashMap;

    const-string v2, "controller"

    invoke-static {}, Lcom/unionpay/sdk/h;->a()Lcom/unionpay/sdk/h;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x66

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/unionpay/sdk/aj;->a()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
