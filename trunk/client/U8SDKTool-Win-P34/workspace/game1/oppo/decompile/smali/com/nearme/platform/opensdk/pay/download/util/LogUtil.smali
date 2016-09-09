.class public Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static DEBUG_LEVEL:I = 0x0

.field private static final DECISION:Z = true

.field public static final TAG:Ljava/lang/String; = "PayApkDownLoad"

.field private static cmd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x3

    sput v0, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->DEBUG_LEVEL:I

    .line 120
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->log(ILjava/lang/String;)V

    .line 43
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->log(ILjava/lang/String;)V

    .line 55
    return-void
.end method

.method private static getStackTraceString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v4, 0x3

    .line 98
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 101
    const-string v0, ""

    .line 103
    array-length v3, v2

    if-lt v3, v4, :cond_47

    .line 104
    aget-object v2, v2, v4

    .line 107
    :try_start_16
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 108
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_21} :catch_4c

    move-result-object v0

    .line 112
    :goto_22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "-> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 113
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 114
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    :cond_47
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_4c
    move-exception v3

    goto :goto_22
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->log(ILjava/lang/String;)V

    .line 47
    return-void
.end method

.method private static log(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 60
    packed-switch p0, :pswitch_data_a6

    .line 95
    :cond_3
    :goto_3
    return-void

    .line 62
    :pswitch_4
    sget v0, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->DEBUG_LEVEL:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    .line 63
    const-string v0, "PayApkDownLoad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->getStackTraceString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 68
    :pswitch_24
    sget v0, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->DEBUG_LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_3

    .line 69
    const-string v0, "PayApkDownLoad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->getStackTraceString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 74
    :pswitch_44
    sget v0, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->DEBUG_LEVEL:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_3

    .line 75
    const-string v0, "PayApkDownLoad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->getStackTraceString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 80
    :pswitch_64
    sget v0, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->DEBUG_LEVEL:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_3

    .line 81
    const-string v0, "PayApkDownLoad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->getStackTraceString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 86
    :pswitch_84
    sget v0, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->DEBUG_LEVEL:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_3

    .line 87
    const-string v0, "PayApkDownLoad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->getStackTraceString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 60
    nop

    :pswitch_data_a6
    .packed-switch 0x2
        :pswitch_4
        :pswitch_24
        :pswitch_44
        :pswitch_64
        :pswitch_84
    .end packed-switch
.end method

.method public static startLog(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 132
    const-string v0, "PayApkDownLoad"

    invoke-static {v0, p0}, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->startLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public static startLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 144
    if-nez p0, :cond_3

    move-object p0, p1

    .line 147
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->startLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static startLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 161
    if-nez p0, :cond_23

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v1, "V"

    .line 162
    invoke-static {v0, p1, p2, v1}, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->startLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_22
    return-void

    .line 165
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v1, "V"

    .line 165
    invoke-static {v0, p1, p2, v1}, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->startLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method public static startLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 188
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "logcat -d -v time -f "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".log -s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->cmd:Ljava/lang/String;

    .line 192
    :try_start_31
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 193
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sget-object v1, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_5a} :catch_5b

    .line 197
    :goto_5a
    return-void

    .line 195
    :catch_5b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5a
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->log(ILjava/lang/String;)V

    .line 39
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x5

    invoke-static {v0, p0}, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->log(ILjava/lang/String;)V

    .line 51
    return-void
.end method
