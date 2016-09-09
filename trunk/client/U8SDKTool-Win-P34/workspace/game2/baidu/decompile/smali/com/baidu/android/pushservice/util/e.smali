.class public Lcom/baidu/android/pushservice/util/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/android/pushservice/util/e;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_5

    const-string v0, ""

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_23

    move-result-object v0

    :goto_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_14
    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_47

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_47

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_21} :catch_4f

    move-result-object v0

    goto :goto_4

    :catch_23
    move-exception v1

    const-string v1, "CommonParams"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_e

    :cond_47
    :try_start_47
    const-string v1, "CommonParams"

    const-string v2, "object null or can\'t cast to String"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4e} :catch_4f

    goto :goto_4

    :catch_4f
    move-exception v1

    const-string v1, "CommonParams"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cast to String "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_4
.end method

.method private static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "baidu/pushservice/files"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1a
    new-instance v4, Ljava/io/File;

    const-string v3, ".info"

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_93

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2c} :catch_55
    .catchall {:try_start_6 .. :try_end_2c} :catchall_7f

    :try_start_2c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    new-instance v2, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v2, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, ""

    invoke-static {p0, v1, v2}, Lcom/baidu/android/pushservice/jni/BaiduAppSSOJni;->getDecrypted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_47} :catch_90
    .catchall {:try_start_2c .. :try_end_47} :catchall_8d

    move-object v0, v1

    :goto_48
    if-eqz v3, :cond_4d

    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    :cond_4d
    :goto_4d
    return-object v0

    :catch_4e
    move-exception v1

    const-string v2, "CommonParams"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4d

    :catch_55
    move-exception v1

    :goto_56
    :try_start_56
    const-string v3, "CommonParams"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get params exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_72
    .catchall {:try_start_56 .. :try_end_72} :catchall_7f

    if-eqz v2, :cond_4d

    :try_start_74
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_4d

    :catch_78
    move-exception v1

    const-string v2, "CommonParams"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4d

    :catchall_7f
    move-exception v0

    :goto_80
    if-eqz v2, :cond_85

    :try_start_82
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    :cond_85
    :goto_85
    throw v0

    :catch_86
    move-exception v1

    const-string v2, "CommonParams"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_85

    :catchall_8d
    move-exception v0

    move-object v2, v3

    goto :goto_80

    :catch_90
    move-exception v1

    move-object v2, v3

    goto :goto_56

    :cond_93
    move-object v3, v2

    goto :goto_48
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_16

    move-result v0

    :goto_c
    if-nez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_2

    :catch_16
    move-exception v1

    const-string v1, "CommonParams"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putInt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_c
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_12

    move-result v0

    :goto_c
    if-nez v0, :cond_2

    invoke-static {p0, p1, p2}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_2

    :catch_12
    move-exception v1

    const-string v1, "CommonParams"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_c
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Lcom/baidu/android/pushservice/util/q;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b9

    sget-object v4, Lcom/baidu/android/pushservice/util/e;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_c
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_1a

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_56

    :cond_1a
    :try_start_1a
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "baidu/pushservice/files"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_31

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_31
    new-instance v5, Ljava/io/File;

    const-string v6, ".info"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v3, v1}, Lcom/baidu/android/pushservice/jni/BaiduAppSSOJni;->getEncrypted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_45} :catch_80
    .catchall {:try_start_1a .. :try_end_45} :catchall_ab

    move-result v3

    if-eqz v3, :cond_59

    if-eqz v2, :cond_4d

    :try_start_4a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4f
    .catchall {:try_start_4a .. :try_end_4d} :catchall_56

    :cond_4d
    :goto_4d
    :try_start_4d
    monitor-exit v4

    :goto_4e
    return v0

    :catch_4f
    move-exception v1

    const-string v2, "CommonParams"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4d

    :catchall_56
    move-exception v0

    monitor-exit v4
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_56

    throw v0

    :cond_59
    :try_start_59
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_62
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_6a} :catch_80
    .catchall {:try_start_59 .. :try_end_6a} :catchall_ab

    :try_start_6a
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_71} :catch_c8
    .catchall {:try_start_6a .. :try_end_71} :catchall_c5

    const/4 v0, 0x1

    if-eqz v3, :cond_77

    :try_start_74
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_79
    .catchall {:try_start_74 .. :try_end_77} :catchall_56

    :cond_77
    :goto_77
    :try_start_77
    monitor-exit v4

    goto :goto_4e

    :catch_79
    move-exception v1

    const-string v2, "CommonParams"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_56

    goto :goto_77

    :catch_80
    move-exception v1

    :goto_81
    :try_start_81
    const-string v3, "CommonParams"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write params exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v1, v5}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_9d
    .catchall {:try_start_81 .. :try_end_9d} :catchall_ab

    if-eqz v2, :cond_a2

    :try_start_9f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a4
    .catchall {:try_start_9f .. :try_end_a2} :catchall_56

    :cond_a2
    :goto_a2
    :try_start_a2
    monitor-exit v4

    goto :goto_4e

    :catch_a4
    move-exception v1

    const-string v2, "CommonParams"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_aa
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_56

    goto :goto_a2

    :catchall_ab
    move-exception v0

    :goto_ac
    if-eqz v2, :cond_b1

    :try_start_ae
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2
    .catchall {:try_start_ae .. :try_end_b1} :catchall_56

    :cond_b1
    :goto_b1
    :try_start_b1
    throw v0

    :catch_b2
    move-exception v1

    const-string v2, "CommonParams"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b8
    .catchall {:try_start_b1 .. :try_end_b8} :catchall_56

    goto :goto_b1

    :cond_b9
    const-string v1, "CommonParams"

    const-string v2, "write permission not granted"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_4e

    :catchall_c5
    move-exception v0

    move-object v2, v3

    goto :goto_ac

    :catch_c8
    move-exception v1

    move-object v2, v3

    goto :goto_81
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/q;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v1, Lcom/baidu/android/pushservice/util/e;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    :goto_14
    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v0

    :cond_18
    const-string v0, "CommonParams"

    const-string v1, "write permission not granted"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_14
.end method
