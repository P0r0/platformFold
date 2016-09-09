.class public Lcom/baidu/android/pushservice/util/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/util/d;->a:Ljava/util/Properties;

    const/4 v2, 0x0

    :try_start_b
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "build.prop"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_2d
    .catchall {:try_start_b .. :try_end_1b} :catchall_41

    :try_start_1b
    iget-object v0, p0, Lcom/baidu/android/pushservice/util/d;->a:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_52
    .catchall {:try_start_1b .. :try_end_20} :catchall_4f

    if-eqz v1, :cond_25

    :try_start_22
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v0

    const-string v1, "BuildProperties"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25

    :catch_2d
    move-exception v0

    move-object v1, v2

    :goto_2f
    :try_start_2f
    const-string v2, "BuildProperties"

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_4f

    if-eqz v1, :cond_25

    :try_start_36
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_25

    :catch_3a
    move-exception v0

    const-string v1, "BuildProperties"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25

    :catchall_41
    move-exception v0

    :goto_42
    if-eqz v2, :cond_47

    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    :cond_47
    :goto_47
    throw v0

    :catch_48
    move-exception v1

    const-string v2, "BuildProperties"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47

    :catchall_4f
    move-exception v0

    move-object v2, v1

    goto :goto_42

    :catch_52
    move-exception v0

    goto :goto_2f
.end method

.method public static a()Lcom/baidu/android/pushservice/util/d;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/baidu/android/pushservice/util/d;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/util/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/baidu/android/pushservice/util/d;->a:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
