.class public Lcom/youju/statistics/a/s;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/youju/statistics/a/s;->a:Z

    sput-boolean v0, Lcom/youju/statistics/a/s;->b:Z

    sput-boolean v0, Lcom/youju/statistics/a/s;->c:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/youju/statistics/a/s;->d:Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/youju/statistics/a/s;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    sput-boolean v3, Lcom/youju/statistics/a/s;->c:Z

    :cond_1b
    invoke-static {}, Lcom/youju/statistics/a/s;->c()Z

    move-result v0

    if-eqz v0, :cond_23

    sput-boolean v3, Lcom/youju/statistics/a/s;->b:Z

    :cond_23
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/youju/statistics/a/s;->d:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    :try_start_d
    sget-object v2, Lcom/youju/statistics/a/s;->d:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_41

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/youju/statistics/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/youju/statistics/a/s;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YouJu_SDK."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "i"

    invoke-static {p1, p0, v0}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-static {}, Lcom/youju/statistics/a/s;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget-boolean v0, Lcom/youju/statistics/a/s;->b:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YouJu_SDK."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "E"

    invoke-static {p1, p0, v0}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/youju/statistics/a/s;->a:Z

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/youju/statistics/a/s;->a:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "-> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_27

    :goto_22
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_27
    move-exception v0

    const-string v2, "LogUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/youju/statistics/a/s;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget-boolean v0, Lcom/youju/statistics/a/s;->b:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YouJu_SDK."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "D"

    invoke-static {p1, p0, v0}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/youju/statistics/a/s;->c:Z

    if-eqz v0, :cond_b

    :try_start_4
    invoke-static {p1, p0, p2}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method private static b()Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/youju/statistics/a/a;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/youju/statistics/a/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Statistics_SDK_1234567890savelog"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method private static c(Ljava/lang/String;)V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_3
    invoke-static {}, Lcom/youju/statistics/a/a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Statistics_SDK_1234567890savelog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statistics_SDK.txt"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, v3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_44
    .catchall {:try_start_3 .. :try_end_2e} :catchall_51

    :try_start_2e
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3c} :catch_5d
    .catchall {:try_start_2e .. :try_end_3c} :catchall_5a

    new-array v0, v5, [Ljava/io/Closeable;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    :goto_43
    return-void

    :catch_44
    move-exception v0

    move-object v1, v2

    :goto_46
    :try_start_46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_5a

    new-array v0, v5, [Ljava/io/Closeable;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    goto :goto_43

    :catchall_51
    move-exception v0

    :goto_52
    new-array v1, v5, [Ljava/io/Closeable;

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_5a
    move-exception v0

    move-object v2, v1

    goto :goto_52

    :catch_5d
    move-exception v0

    goto :goto_46
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/youju/statistics/a/s;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget-boolean v0, Lcom/youju/statistics/a/s;->b:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YouJu_SDK."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "E"

    invoke-static {p1, p0, v0}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private static c()Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/youju/statistics/a/a;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/youju/statistics/a/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "YouJuLog"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method
