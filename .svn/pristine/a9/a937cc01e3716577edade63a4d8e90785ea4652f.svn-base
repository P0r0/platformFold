.class public Lcom/baidu/android/pushservice/PushSettings;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/baidu/android/pushservice/PushSettings;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "com.baidu.pushservice.channel_id"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a()Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/StreamCorruptedException;,
            Ljava/io/IOException;,
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "baidu/pushservice/files"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1c
    new-instance v1, Ljava/io/File;

    const-string v3, "apps"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_52
    .catchall {:try_start_4 .. :try_end_26} :catchall_64

    move-result v2

    if-nez v2, :cond_33

    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v0, v1, v5

    aput-object v0, v1, v6

    invoke-static {v1}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    :goto_32
    return-object v0

    :cond_33
    :try_start_33
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_52
    .catchall {:try_start_33 .. :try_end_38} :catchall_64

    :try_start_38
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_78
    .catchall {:try_start_38 .. :try_end_3d} :catchall_72

    :try_start_3d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_7b
    .catchall {:try_start_3d .. :try_end_42} :catchall_76

    :try_start_42
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_48} :catch_7d
    .catchall {:try_start_42 .. :try_end_48} :catchall_76

    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v5

    aput-object v3, v1, v6

    invoke-static {v1}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    goto :goto_32

    :catch_52
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_55
    :try_start_55
    const-string v4, "PushSettings"

    invoke-static {v4, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_76

    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v5

    aput-object v3, v1, v6

    invoke-static {v1}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    goto :goto_32

    :catchall_64
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_68
    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v5

    aput-object v3, v1, v6

    invoke-static {v1}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_72
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_68

    :catchall_76
    move-exception v0

    goto :goto_68

    :catch_78
    move-exception v1

    move-object v2, v0

    goto :goto_55

    :catch_7b
    move-exception v1

    goto :goto_55

    :catch_7d
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_55
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 3

    const-string v0, "com.baidu.pushservice.cur_period"

    invoke-static {p0, v0, p1}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .registers 6

    if-nez p0, :cond_a

    const-string v0, "PushSettings"

    const-string v1, "setLastSendStatisticTime mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const-string v0, "com.baidu.pushservice.cst"

    invoke-static {p0, v0, p1, p2}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_9
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "com.baidu.pushservice.channel_id"

    invoke-static {p0, v0, p1}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    if-nez p0, :cond_a

    const-string v0, "PushSettings"

    const-string v1, "setApiInfo mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    const/16 v0, 0x9

    if-ne p2, v0, :cond_68

    :try_start_e
    invoke-static {}, Lcom/baidu/android/pushservice/PushSettings;->a()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.baidu.pushservice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.baidu.pushservice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushSettings;->a(Ljava/util/HashMap;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.baidu.pushservice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_5e} :catch_5f

    goto :goto_9

    :catch_5f
    move-exception v0

    const-string v0, "PushSettings"

    const-string v1, "set appInfo exception"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_79
    const-string v1, "2011121211143000"

    const-string v2, "9876543210123456"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/baidu/android/pushservice/j/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/j/b;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_8a} :catch_e7

    move-result-object v0

    :goto_8b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    :try_start_92
    invoke-static {}, Lcom/baidu/android/pushservice/PushSettings;->a()Ljava/util/HashMap;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_f2

    move-result-object v1

    :goto_96
    if-nez v1, :cond_9d

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_9d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.baidu.pushservice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.baidu.pushservice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/baidu/android/pushservice/PushSettings;->a(Ljava/util/HashMap;)V

    :cond_cf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.baidu.pushservice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_e7
    move-exception v0

    const-string v0, ""

    const-string v1, "PushSettings"

    const-string v2, "setAppInfo exception"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    :catch_f2
    move-exception v2

    const-string v3, "PushSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set AppInfo exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string v0, "PushSettings"

    const-string v1, "setLbsEnabled mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v0, "PushSettings"

    const-string v1, "mContext.getPackageName() == null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_1d
    const-string v1, "com.baidu.pushservice.le"

    invoke-static {p0, v1}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_3a
    if-ge v1, v4, :cond_65

    aget-object v5, v3, v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    const/4 v0, 0x1

    if-nez p1, :cond_4e

    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_4e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b

    :cond_65
    if-nez v0, :cond_81

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_81
    const-string v0, "com.baidu.pushservice.le"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_8b
    if-eqz p1, :cond_a

    const-string v0, "com.baidu.pushservice.le"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method private static a(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    const-string v3, "baidu/pushservice/files"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_19
    new-instance v2, Ljava/io/File;

    const-string v3, "baidu/pushservice/files/apps"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
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

    const-string v1, "PushSettings"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    :catch_3f
    move-exception v0

    const-string v1, "PushSettings"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37

    :catch_46
    move-exception v0

    move-object v2, v1

    :goto_48
    :try_start_48
    const-string v3, "PushSettings"

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

    const-string v1, "PushSettings"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37

    :catch_5f
    move-exception v0

    const-string v1, "PushSettings"

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

    const-string v2, "PushSettings"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6d

    :catch_7a
    move-exception v1

    const-string v2, "PushSettings"

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

.method public static b(Landroid/content/Context;I)V
    .registers 4

    if-nez p0, :cond_a

    const-string v0, "PushSettings"

    const-string v1, "setStatisticSendDisabled mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const-string v0, "com.baidu.pushservice.sd"

    invoke-static {p0, v0, p1}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_9
.end method

.method public static b(Landroid/content/Context;J)V
    .registers 6

    if-nez p0, :cond_a

    const-string v0, "PushSettings"

    const-string v1, "setLastSendStatisticTime mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const-string v0, "com.baidu.pushservice.st"

    invoke-static {p0, v0, p1, p2}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_9
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    if-nez p0, :cond_a

    const-string v0, "PushSettings"

    const-string v1, "removeUninstalledAppLbsSwitch mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "com.baidu.pushservice.le"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_2d
    if-ge v0, v3, :cond_51

    aget-object v4, v2, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_3a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_51
    const-string v0, "com.baidu.pushservice.le"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private static b(Landroid/content/Context;Z)V
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.baidu.android.pushservice.action.OPENDEBUGMODE"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    :goto_16
    return-void

    :cond_17
    if-nez p1, :cond_1b

    const-string v0, "com.baidu.android.pushservice.action.CLOSEDEBUGMODE"

    :cond_1b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/baidu/android/pushservice/util/p;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_16

    :catch_24
    move-exception v0

    const-string v1, "PushSettings"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    if-nez p0, :cond_6

    :goto_5
    return v1

    :cond_6
    sget v2, Lcom/baidu/android/pushservice/PushSettings;->a:I

    if-ne v2, v3, :cond_12

    const-string v2, "com.baidu.android.pushservice.PushSettings.debug_mode"

    invoke-static {p0, v2, v3}, Lcom/baidu/android/pushservice/util/l;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/baidu/android/pushservice/PushSettings;->a:I

    :cond_12
    sget v2, Lcom/baidu/android/pushservice/PushSettings;->a:I

    if-ne v2, v0, :cond_18

    :goto_16
    move v1, v0

    goto :goto_5

    :cond_18
    move v0, v1

    goto :goto_16
.end method

.method public static c(Landroid/content/Context;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string v1, "PushSettings"

    const-string v2, "getCurPeriod mContext == null"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_a
    return v0

    :cond_b
    const-string v1, "com.baidu.pushservice.cur_period"

    invoke-static {p0, v1, v0}, Lcom/baidu/android/pushservice/util/l;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_a

    move v0, v1

    goto :goto_a
.end method

.method public static c(Landroid/content/Context;I)V
    .registers 4

    if-nez p0, :cond_a

    const-string v0, "PushSettings"

    const-string v1, "setCurPeriod mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const-string v0, "com.baidu.pushservice.lsi"

    mul-int/lit16 v1, p1, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_9
.end method

.method public static d(Landroid/content/Context;)J
    .registers 3

    if-nez p0, :cond_c

    const-string v0, "PushSettings"

    const-string v1, "getLastSendStatisticTime mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_b
    return-wide v0

    :cond_c
    const-string v0, "com.baidu.pushservice.cst"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/l;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_b
.end method

.method public static e(Landroid/content/Context;)J
    .registers 5

    const-string v0, "com.baidu.pushservice.st"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/l;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_f

    const-wide/32 v0, 0x2932e00

    :cond_f
    return-wide v0
.end method

.method public static enableDebugMode(Landroid/content/Context;Z)V
    .registers 4

    if-eqz p1, :cond_c

    const-string v0, "com.baidu.android.pushservice.PushSettings.debug_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/l;->c(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_8
    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/PushSettings;->b(Landroid/content/Context;Z)V

    return-void

    :cond_c
    const-string v0, "com.baidu.android.pushservice.PushSettings.debug_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/l;->c(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_8
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "com.baidu.pushservice.sd"

    invoke-static {p0, v2, v1}, Lcom/baidu/android/pushservice/util/l;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_b

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method public static g(Landroid/content/Context;)I
    .registers 3

    if-nez p0, :cond_b

    const-string v0, "PushSettings"

    const-string v1, "getLbsSendInterval mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0

    :cond_b
    const-string v0, "com.baidu.pushservice.lsi"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/l;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_a

    const v0, 0x1b7740

    goto :goto_a
.end method

.method public static h(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "com.baidu.pushservice.le"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static i(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "com.baidu.pushservice.lms"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static j(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_9

    const-string v0, "PushSettings"

    const-string v1, "tofms mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v0, "com.baidu.pushservice.lms"

    const-string v1, "off"

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_9

    const-string v0, "PushSettings"

    const-string v1, "toms mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v0, "com.baidu.pushservice.lms"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string v0, "PushSettings"

    const-string v1, "refreshLbsSwitchInfo mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string v1, "com.baidu.pushservice.le"

    invoke-static {p0, v1}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    array-length v5, v3

    move v1, v0

    :goto_2c
    if-ge v1, v5, :cond_5e

    aget-object v6, v3, v1

    const/4 v0, 0x0

    const/4 v7, 0x0

    :try_start_32
    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_35} :catch_3c

    move-result-object v0

    :goto_36
    if-nez v0, :cond_47

    :goto_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2c

    :catch_3c
    move-exception v7

    const-string v8, "PushSettings"

    invoke-static {v7}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    :cond_5e
    const-string v0, "com.baidu.pushservice.le"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method
