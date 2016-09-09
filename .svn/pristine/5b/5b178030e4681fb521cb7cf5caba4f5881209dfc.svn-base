.class public Lcom/baidu/android/pushservice/f/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/android/pushservice/f/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/f/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/j;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 5

    invoke-static {p0}, Lcom/baidu/android/pushservice/f/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v1, "android.permission.INTERNET"

    invoke-static {p0, v1}, Lcom/baidu/android/pushservice/util/q;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    :try_start_e
    invoke-static {}, Lcom/baidu/android/pushservice/ah;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/baidu/android/pushservice/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/f/b;->b()I

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/f/b;->a()Ljava/io/InputStream;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_22} :catch_27

    move-result-object v1

    if-eqz v1, :cond_26

    const/4 v0, 0x1

    :cond_26
    :goto_26
    return v0

    :catch_27
    move-exception v1

    goto :goto_26
.end method
