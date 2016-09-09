.class public Lcom/baidu/android/pushservice/ADPushManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ADPushManager"

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/ADPushManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initPushClient(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    const-string v0, "pushclient"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isFirstRun"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/m;->b(Landroid/content/Context;)V

    const-string v1, "isFirstRun"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "ADPushManager"

    const-string v1, "isFirstRun =  true"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isFirstRun =  true"

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    :cond_2c
    :goto_2c
    return-void

    :catch_2d
    move-exception v0

    const-string v1, "ADPushManager"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2c
.end method

.method private static isNullContext(Landroid/content/Context;)Z
    .registers 3

    if-nez p0, :cond_b

    const-string v0, "ADPushManager"

    const-string v1, "Context is null!"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static setPushADMsgEnable(Landroid/content/Context;Z)V
    .registers 3

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/m;->a(Landroid/content/Context;Z)V

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/a;->a(Landroid/content/Context;I)V

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/a;->a(Landroid/content/Context;I)V

    goto :goto_9
.end method

.method public static startWorkForAD(Landroid/content/Context;ILjava/lang/String;)V
    .registers 8

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/baidu/android/pushservice/ADPushManager;->isNullContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    sget-object v0, Lcom/baidu/android/pushservice/ADPushManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_17

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/android/pushservice/ADPushManager;->mHandler:Landroid/os/Handler;

    :cond_17
    invoke-static {p0, p2, v4}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "ADPushManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startWorkforAD from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " check: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startWorkforAD from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    if-eqz v0, :cond_76

    invoke-static {p0}, Lcom/baidu/android/pushservice/ADPushManager;->initPushClient(Landroid/content/Context;)V

    invoke-static {p0, p1, p2, v4}, Lcom/baidu/android/pushservice/PushManager;->startWork(Landroid/content/Context;ILjava/lang/String;Z)V

    sget-object v0, Lcom/baidu/android/pushservice/ADPushManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/android/pushservice/a;

    invoke-direct {v1, p0}, Lcom/baidu/android/pushservice/a;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_76
    const/16 v0, 0x2775

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/PushManager;->checkedSendForUser(Landroid/content/Context;I)V

    goto :goto_7
.end method

.method public static stopWork(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/baidu/android/pushservice/ADPushManager;->isNullContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/baidu/android/pushservice/PushManager;->stopWork(Landroid/content/Context;)V

    goto :goto_6
.end method
