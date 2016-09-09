.class public Lcom/nearme/plugin/framework/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field public static sDebug:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-string v0, "PluginDebug"

    sput-object v0, Lcom/nearme/plugin/framework/LogUtils;->TAG:Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nearme/plugin/framework/LogUtils;->sDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nearme/plugin/framework/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 51
    sget-boolean v0, Lcom/nearme/plugin/framework/LogUtils;->sDebug:Z

    if-eqz v0, :cond_20

    .line 52
    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :cond_20
    return-void
.end method

.method public static getExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 57
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 58
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 60
    :cond_b
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 61
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 41
    sget-boolean v0, Lcom/nearme/plugin/framework/LogUtils;->sDebug:Z

    if-eqz v0, :cond_20

    .line 42
    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :cond_20
    return-void
.end method

.method public static logInit(ZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 16
    sput-boolean p0, Lcom/nearme/plugin/framework/LogUtils;->sDebug:Z

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 18
    sput-object p1, Lcom/nearme/plugin/framework/LogUtils;->TAG:Ljava/lang/String;

    .line 1026
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1027
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "super_key_debug"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1029
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nearme/plugin/framework/LogUtils;->sDebug:Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_39} :catch_3a

    .line 1033
    :cond_39
    :goto_39
    return-void

    .line 22
    :catch_3a
    move-exception v0

    goto :goto_39
.end method
