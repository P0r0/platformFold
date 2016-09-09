.class public final Lcom/baidu/android/pushservice/c/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcom/baidu/android/pushservice/c/b;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/android/pushservice/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/android/pushservice/e/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/c/b;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/c/b;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/c/b;->c:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/android/pushservice/c/b;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".push_sync"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/android/pushservice/c/b;->c:Landroid/content/Context;

    const-string v3, "r_v2"

    invoke-static {v0, v2, v3}, Lcom/baidu/android/pushservice/util/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b5

    :try_start_3f
    invoke-static {v0}, Lcom/baidu/android/pushservice/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ClientManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClientManager init strAppsV2 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/c/b;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_65
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/h;

    iget-object v4, p0, Lcom/baidu/android/pushservice/c/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_76} :catch_77

    goto :goto_65

    :catch_77
    move-exception v0

    const-string v3, "ClientManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " v2 initException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_90
    :goto_90
    iget-object v0, p0, Lcom/baidu/android/pushservice/c/b;->c:Landroid/content/Context;

    const-string v3, "com.baidu.push.sync.vn"

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Lcom/baidu/android/pushservice/util/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    :try_start_99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a8} :catch_bd

    :goto_a8
    if-ge v3, v0, :cond_b4

    invoke-direct {p0}, Lcom/baidu/android/pushservice/c/b;->a()V

    iget-object v1, p0, Lcom/baidu/android/pushservice/c/b;->c:Landroid/content/Context;

    const-string v3, "com.baidu.push.sync.vn"

    invoke-static {v1, v2, v3, v0}, Lcom/baidu/android/pushservice/util/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_b4
    return-void

    :cond_b5
    const-string v0, "ClientManager"

    const-string v3, "ClientManager init strAppsV2 empty."

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    :catch_bd
    move-exception v0

    const-string v0, "ClientManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clientmanager not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_a8
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;
    .registers 3

    const-class v1, Lcom/baidu/android/pushservice/c/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pushservice/c/b;->b:Lcom/baidu/android/pushservice/c/b;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/android/pushservice/c/b;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/c/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/android/pushservice/c/b;->b:Lcom/baidu/android/pushservice/c/b;

    :cond_e
    sget-object v0, Lcom/baidu/android/pushservice/c/b;->b:Lcom/baidu/android/pushservice/c/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v1, ""

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/j/b;->a([B)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    const-string v3, "2011121211143000"

    const-string v4, "1234567890123456"

    invoke-static {v3, v4, v2}, Lcom/baidu/android/pushservice/j/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_18

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    const-string v0, "ClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decrypt init strApps exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_17
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/android/pushservice/c/h;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_48

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/h;

    iget-object v3, v0, Lcom/baidu/android/pushservice/c/h;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lcom/baidu/android/pushservice/c/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/baidu/android/pushservice/c/h;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_44

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_44
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    :cond_48
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private a()V
    .registers 3

    const-string v0, "r_v2"

    iget-object v1, p0, Lcom/baidu/android/pushservice/c/b;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/baidu/android/pushservice/c/b;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/android/pushservice/c/h;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/android/pushservice/c/b;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".push_sync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/baidu/android/pushservice/c/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.android.pushservice.action.BIND_SYNC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x220

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_32
    :goto_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    :try_start_3e
    iget-object v1, p0, Lcom/baidu/android/pushservice/c/b;->c:Landroid/content/Context;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/util/q;->s(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".push_sync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1, p1}, Lcom/baidu/android/pushservice/util/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_cf

    invoke-static {v1}, Lcom/baidu/android/pushservice/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/android/pushservice/c/b;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_cf

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_79
    :goto_79
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/android/pushservice/c/h;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_89
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_132

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/android/pushservice/c/h;

    iget-object v10, v1, Lcom/baidu/android/pushservice/c/h;->c:Ljava/lang/String;

    iget-object v11, v2, Lcom/baidu/android/pushservice/c/h;->c:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a9

    iget-object v10, v1, Lcom/baidu/android/pushservice/c/h;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/baidu/android/pushservice/c/h;->a:Ljava/lang/String;

    invoke-static {v10, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_89

    :cond_a9
    move v2, v3

    :goto_aa
    if-nez v2, :cond_79

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_af} :catch_b0

    goto :goto_79

    :catch_b0
    move-exception v0

    const-string v1, "ClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncRegisterDataImpl Exception: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_cf
    :try_start_cf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".self_push_sync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bindinfo"

    invoke-static {v7, v0, v1}, Lcom/baidu/android/pushservice/util/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-static {v0}, Lcom/baidu/android/pushservice/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/c/b;->g(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/h;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_fe
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_130

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/h;

    iget-object v7, v1, Lcom/baidu/android/pushservice/c/h;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/android/pushservice/c/h;->c:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_fe

    move v0, v3

    :goto_115
    if-nez v0, :cond_32

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_11a} :catch_b0

    goto/16 :goto_32

    :cond_11c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12f

    invoke-direct {p0, p2}, Lcom/baidu/android/pushservice/c/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/c/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/c/b;->c:Landroid/content/Context;

    invoke-static {v1, v5, p1, v0}, Lcom/baidu/android/pushservice/util/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12f
    return-void

    :cond_130
    move v0, v4

    goto :goto_115

    :cond_132
    move v2, v4

    goto/16 :goto_aa
.end method

.method private g(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/h;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    array-length v0, v1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_37

    new-instance v0, Lcom/baidu/android/pushservice/c/h;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/c/h;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/android/pushservice/c/h;->c:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/android/pushservice/c/h;->a:Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/c/h;->e:Ljava/lang/String;

    :goto_36
    return-object v0

    :cond_37
    const/4 v0, 0x0

    goto :goto_36
.end method

.method private h(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/android/pushservice/c/h;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :cond_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_1a
    if-ge v1, v4, :cond_8

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x3

    if-ge v6, v7, :cond_2f

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2f
    new-instance v6, Lcom/baidu/android/pushservice/c/h;

    invoke-direct {v6}, Lcom/baidu/android/pushservice/c/h;-><init>()V

    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/android/pushservice/c/h;->c:Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/android/pushservice/c/h;->a:Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/baidu/android/pushservice/c/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c
.end method


# virtual methods
.method public a(Lcom/baidu/android/pushservice/c/h;Z)Ljava/lang/String;
    .registers 6

    const-string v0, "ClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncV2 addOrRemove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client.packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/c/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " client.appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/c/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " client.userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/c/h;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/c/b;->a:Ljava/util/ArrayList;

    const-string v1, "r_v2"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/baidu/android/pushservice/c/b;->a(Lcom/baidu/android/pushservice/c/h;ZLjava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/android/pushservice/c/h;ZLjava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/android/pushservice/c/h;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/android/pushservice/c/h;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    monitor-enter p3

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/h;

    iget-object v3, v0, Lcom/baidu/android/pushservice/c/h;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/baidu/android/pushservice/c/h;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    iget-object v3, v0, Lcom/baidu/android/pushservice/c/h;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/baidu/android/pushservice/c/h;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_26
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2e

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    if-nez v0, :cond_36

    if-eqz p2, :cond_36

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    invoke-direct {p0, p3}, Lcom/baidu/android/pushservice/c/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync  strApps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/c/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/c/b;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/android/pushservice/c/b;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".push_sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p4, v0}, Lcom/baidu/android/pushservice/util/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p3

    return-object v0

    :catchall_76
    move-exception v0

    monitor-exit p3
    :try_end_78
    .catchall {:try_start_2 .. :try_end_78} :catchall_76

    throw v0

    :cond_79
    move v0, v1

    goto :goto_2f
.end method

.method public a(Ljava/lang/String;Lcom/baidu/android/pushservice/e/h;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/android/pushservice/c/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-static {p2}, Lcom/baidu/android/pushservice/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/c/b;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v0, ""

    sget-object v1, Lcom/baidu/android/pushservice/c/b;->b:Lcom/baidu/android/pushservice/c/b;

    if-eqz v1, :cond_44

    if-eqz v2, :cond_44

    const-string v1, "r_v2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/h;

    iget-object v0, v0, Lcom/baidu/android/pushservice/c/h;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3a

    goto :goto_28

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3d
    :try_start_3d
    const-string v0, "ClientManager"

    const-string v1, "ClientManager init strApps empty."

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_3a

    :cond_44
    :goto_44
    monitor-exit p0

    return-void

    :cond_46
    const/4 v1, 0x0

    :goto_47
    :try_start_47
    sget-object v0, Lcom/baidu/android/pushservice/c/b;->b:Lcom/baidu/android/pushservice/c/b;

    iget-object v0, v0, Lcom/baidu/android/pushservice/c/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6f

    sget-object v0, Lcom/baidu/android/pushservice/c/b;->b:Lcom/baidu/android/pushservice/c/b;

    iget-object v0, v0, Lcom/baidu/android/pushservice/c/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/h;

    iget-object v0, v0, Lcom/baidu/android/pushservice/c/h;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    sget-object v0, Lcom/baidu/android/pushservice/c/b;->b:Lcom/baidu/android/pushservice/c/b;

    iget-object v0, v0, Lcom/baidu/android/pushservice/c/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    :goto_6c
    add-int/lit8 v1, v0, 0x1

    goto :goto_47

    :cond_6f
    sget-object v0, Lcom/baidu/android/pushservice/c/b;->b:Lcom/baidu/android/pushservice/c/b;

    iget-object v0, v0, Lcom/baidu/android/pushservice/c/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/baidu/android/pushservice/c/b;->b:Lcom/baidu/android/pushservice/c/b;

    iget-object v0, v0, Lcom/baidu/android/pushservice/c/b;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/c/b;->a(Ljava/util/List;)Ljava/lang/String;
    :try_end_7d
    .catchall {:try_start_47 .. :try_end_7d} :catchall_3a

    move-result-object v0

    :cond_7e
    :try_start_7e
    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/c/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/c/b;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/android/pushservice/c/b;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".push_sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1, v0}, Lcom/baidu/android/pushservice/util/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_a0} :catch_a1
    .catchall {:try_start_7e .. :try_end_a0} :catchall_3a

    goto :goto_44

    :catch_a1
    move-exception v0

    :try_start_a2
    const-string v1, "ClientManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_3a

    goto :goto_44

    :cond_ac
    move v0, v1

    goto :goto_6c
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    :try_start_2
    const-string v1, "2011121211143000"

    const-string v2, "1234567890123456"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/j/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/j/b;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_15

    move-result-object v0

    :goto_14
    return-object v0

    :catch_15
    move-exception v1

    const-string v1, "ClientManager"

    const-string v2, "encrypted init strApps exception."

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    move v0, v1

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/baidu/android/pushservice/c/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/baidu/android/pushservice/c/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/e/h;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/e/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_e

    :cond_2b
    move v0, v1

    goto :goto_e
.end method

.method public c(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/h;
    .registers 5

    iget-object v0, p0, Lcom/baidu/android/pushservice/c/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/h;

    iget-object v2, v0, Lcom/baidu/android/pushservice/c/h;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public d(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/h;
    .registers 5

    iget-object v0, p0, Lcom/baidu/android/pushservice/c/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/h;

    iget-object v2, v0, Lcom/baidu/android/pushservice/c/h;->a:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/baidu/android/pushservice/c/h;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/baidu/android/pushservice/c/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/baidu/android/pushservice/c/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/e/h;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/e/h;->b()Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const-string v0, ""

    goto :goto_14
.end method

.method public f(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/android/pushservice/c/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/android/pushservice/c/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method
