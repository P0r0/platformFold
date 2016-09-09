.class final Lcom/unionpay/sdk/ah;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^([0-9A-F]{2}:){5}([0-9A-F]{2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/unionpay/sdk/ah;->b:Ljava/util/regex/Pattern;

    const-string v0, "[0-3][0-9a-f]{24,32}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/unionpay/sdk/ah;->c:Ljava/util/regex/Pattern;

    const-string v0, "[0-3][0-9a-f]{32}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/unionpay/sdk/ah;->d:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/sdk/ah;->e:Ljava/lang/String;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 12

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v3, "/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_e} :catch_6b

    move-object v0, v1

    move v1, v2

    :goto_10
    if-ge v1, v5, :cond_3d

    :try_start_12
    aget-object v3, v4, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_68

    const-string v6, "/sdcard"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_68

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_3e

    new-instance v6, Ljava/io/File;

    const-string v7, ".tcookieid"

    invoke-direct {v6, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/unionpay/sdk/ah;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/aw;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3e

    :cond_3d
    :goto_3d
    return-object v0

    :cond_3e
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_68

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    move v3, v2

    :goto_4a
    if-ge v3, v7, :cond_68

    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_65

    new-instance v9, Ljava/io/File;

    const-string v10, ".tcookieid"

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/unionpay/sdk/ah;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/aw;->b(Ljava/lang/String;)Z
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_62} :catch_73

    move-result v8

    if-eqz v8, :cond_3d

    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :catch_6b
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    :goto_6f
    invoke-static {v1}, Lcom/unionpay/sdk/al;->a(Ljava/lang/Throwable;)V

    goto :goto_3d

    :catch_73
    move-exception v1

    goto :goto_6f
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .registers 16

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-class v6, Lcom/unionpay/sdk/ah;

    monitor-enter v6

    :try_start_5
    sget-object v0, Lcom/unionpay/sdk/ah;->a:Ljava/lang/String;

    if-nez v0, :cond_181

    const-string v0, "unionpayid"

    const-string v2, "pref.deviceid.key"

    invoke-static {p0, v0, v2}, Lcom/unionpay/sdk/an;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/aw;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_203

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref.deviceid.key"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_23
    invoke-static {}, Lcom/unionpay/sdk/ah;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/unionpay/sdk/ah;->b()Z

    move-result v8

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19a

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    if-eqz v8, :cond_185

    const-string v0, ".tcookieid"

    :goto_41
    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/unionpay/sdk/ah;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/aw;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, ".tid"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/unionpay/sdk/ah;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unionpay/sdk/ah;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :cond_6e
    move-object v4, v0

    :goto_6f
    const/4 v0, 0x3

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v5, v9, v0

    const/4 v0, 0x1

    aput-object v7, v9, v0

    const/4 v0, 0x2

    aput-object v4, v9, v0

    array-length v10, v9

    move v0, v3

    :goto_7d
    if-ge v0, v10, :cond_200

    aget-object v2, v9, v0

    invoke-static {v2}, Lcom/unionpay/sdk/aw;->b(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_19f

    sget-object v11, Lcom/unionpay/sdk/ah;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_19f

    :goto_93
    invoke-static {v2}, Lcom/unionpay/sdk/aw;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1fd

    invoke-static {v5}, Lcom/unionpay/sdk/aw;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1fd

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v0, v10, v12

    if-gez v0, :cond_1fd

    array-length v10, v9

    :goto_ad
    if-ge v3, v10, :cond_1fd

    aget-object v0, v9, v3

    invoke-static {v0}, Lcom/unionpay/sdk/aw;->b(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1a3

    sget-object v11, Lcom/unionpay/sdk/ah;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_1a3

    :goto_c3
    invoke-static {v0}, Lcom/unionpay/sdk/aw;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1fa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/unionpay/sdk/ah;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/unionpay/sdk/ah;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/unionpay/sdk/aw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_10a
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_10d
    .catchall {:try_start_5 .. :try_end_10d} :catchall_1e8

    move-result v0

    if-nez v0, :cond_125

    :try_start_110
    const-string v0, "unionpayid"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_125

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pref.deviceid.key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_125
    .catch Ljava/lang/Throwable; {:try_start_110 .. :try_end_125} :catch_1f7
    .catchall {:try_start_110 .. :try_end_125} :catchall_1e8

    :cond_125
    :goto_125
    :try_start_125
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17c

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    if-eqz v8, :cond_1a8

    const-string v0, ".tcookieid"

    :goto_135
    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_138
    .catchall {:try_start_125 .. :try_end_138} :catchall_1e8

    :try_start_138
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13d
    .catch Ljava/lang/Throwable; {:try_start_138 .. :try_end_13d} :catch_1f4
    .catchall {:try_start_138 .. :try_end_13d} :catchall_1e1

    :try_start_13d
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/unionpay/sdk/aw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1bd

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "setReadable"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v8

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_179
    .catch Ljava/lang/Throwable; {:try_start_13d .. :try_end_179} :catch_1d8
    .catchall {:try_start_13d .. :try_end_179} :catchall_1ef

    :goto_179
    :try_start_179
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_17c
    .catch Ljava/lang/Throwable; {:try_start_179 .. :try_end_17c} :catch_1eb
    .catchall {:try_start_179 .. :try_end_17c} :catchall_1e8

    :cond_17c
    :goto_17c
    :try_start_17c
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    sput-object v2, Lcom/unionpay/sdk/ah;->a:Ljava/lang/String;

    :cond_181
    sget-object v0, Lcom/unionpay/sdk/ah;->a:Ljava/lang/String;
    :try_end_183
    .catchall {:try_start_17c .. :try_end_183} :catchall_1e8

    monitor-exit v6

    return-object v0

    :cond_185
    :try_start_185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, ".tcookieid"

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/unionpay/sdk/ah;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_41

    :cond_19a
    const-string v0, ""

    move-object v4, v0

    goto/16 :goto_6f

    :cond_19f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7d

    :cond_1a3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_ad

    :cond_1a8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, ".tcookieid"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/unionpay/sdk/ah;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1ba
    .catchall {:try_start_185 .. :try_end_1ba} :catchall_1e8

    move-result-object v0

    goto/16 :goto_135

    :cond_1bd
    :try_start_1bd
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "chmod 444 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1d7
    .catch Ljava/lang/Throwable; {:try_start_1bd .. :try_end_1d7} :catch_1d8
    .catchall {:try_start_1bd .. :try_end_1d7} :catchall_1ef

    goto :goto_179

    :catch_1d8
    move-exception v1

    :goto_1d9
    if-eqz v0, :cond_17c

    :try_start_1db
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1de
    .catch Ljava/lang/Throwable; {:try_start_1db .. :try_end_1de} :catch_1df
    .catchall {:try_start_1db .. :try_end_1de} :catchall_1e8

    goto :goto_17c

    :catch_1df
    move-exception v0

    goto :goto_17c

    :catchall_1e1
    move-exception v0

    :goto_1e2
    if-eqz v1, :cond_1e7

    :try_start_1e4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e7
    .catch Ljava/lang/Throwable; {:try_start_1e4 .. :try_end_1e7} :catch_1ed
    .catchall {:try_start_1e4 .. :try_end_1e7} :catchall_1e8

    :cond_1e7
    :goto_1e7
    :try_start_1e7
    throw v0
    :try_end_1e8
    .catchall {:try_start_1e7 .. :try_end_1e8} :catchall_1e8

    :catchall_1e8
    move-exception v0

    monitor-exit v6

    throw v0

    :catch_1eb
    move-exception v0

    goto :goto_17c

    :catch_1ed
    move-exception v1

    goto :goto_1e7

    :catchall_1ef
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    goto :goto_1e2

    :catch_1f4
    move-exception v0

    move-object v0, v1

    goto :goto_1d9

    :catch_1f7
    move-exception v0

    goto/16 :goto_125

    :cond_1fa
    move-object v2, v0

    goto/16 :goto_10a

    :cond_1fd
    move-object v0, v2

    goto/16 :goto_c3

    :cond_200
    move-object v2, v1

    goto/16 :goto_93

    :cond_203
    move-object v5, v0

    goto/16 :goto_23
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_24
    .catchall {:try_start_1 .. :try_end_12} :catchall_2d

    const/16 v0, 0x80

    :try_start_14
    new-array v3, v0, [B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v0, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_20} :catch_3d
    .catchall {:try_start_14 .. :try_end_20} :catchall_3b

    :try_start_20
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_35

    :goto_23
    return-object v0

    :catch_24
    move-exception v0

    move-object v0, v1

    :goto_26
    if-eqz v0, :cond_2b

    :try_start_28
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_37

    :cond_2b
    :goto_2b
    move-object v0, v1

    goto :goto_23

    :catchall_2d
    move-exception v0

    move-object v2, v1

    :goto_2f
    if-eqz v2, :cond_34

    :try_start_31
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_39

    :cond_34
    :goto_34
    throw v0

    :catch_35
    move-exception v1

    goto :goto_23

    :catch_37
    move-exception v0

    goto :goto_2b

    :catch_39
    move-exception v1

    goto :goto_34

    :catchall_3b
    move-exception v0

    goto :goto_2f

    :catch_3d
    move-exception v0

    move-object v0, v2

    goto :goto_26
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static b()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x9

    :try_start_4
    invoke-static {v0}, Lcom/unionpay/sdk/aw;->a(I)Z

    move-result v0

    if-eqz v0, :cond_27

    const-class v0, Landroid/os/Environment;

    const-string v3, "isExternalStorageRemovable"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_22} :catch_26

    move-result v0

    :goto_23
    if-nez v0, :cond_29

    :goto_25
    return v1

    :catch_26
    move-exception v0

    :cond_27
    move v0, v1

    goto :goto_23

    :cond_29
    move v1, v2

    goto :goto_25
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    sget-boolean v0, Lcom/unionpay/sdk/aw;->a:Z

    if-nez v0, :cond_6

    :goto_5
    return-object v1

    :cond_6
    :try_start_6
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/unionpay/sdk/aw;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_25} :catch_47

    move-result-object v0

    if-eqz v0, :cond_45

    :try_start_28
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "00:00:00:00:00:00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    sget-object v2, Lcom/unionpay/sdk/ah;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_41} :catch_4a

    move-result v2

    if-nez v2, :cond_45

    :cond_44
    move-object v0, v1

    :cond_45
    :goto_45
    move-object v1, v0

    goto :goto_5

    :catch_47
    move-exception v0

    move-object v0, v1

    goto :goto_45

    :catch_4a
    move-exception v1

    goto :goto_45

    :cond_4c
    move-object v0, v1

    goto :goto_45
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/16 v5, 0x2d

    sget-object v0, Lcom/unionpay/sdk/ah;->e:Ljava/lang/String;

    if-nez v0, :cond_8e

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x40

    new-array v1, v1, [Landroid/hardware/Sensor;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    array-length v4, v1

    if-ge v3, v4, :cond_1b

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ltz v3, :cond_1b

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    aput-object v0, v1, v3

    goto :goto_1b

    :cond_3b
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_41
    array-length v3, v1

    if-ge v0, v3, :cond_80

    aget-object v3, v1, v0

    if-eqz v3, :cond_7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_80
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/sdk/ah;->e:Ljava/lang/String;

    :cond_8e
    sget-object v0, Lcom/unionpay/sdk/ah;->e:Ljava/lang/String;

    return-object v0
.end method
