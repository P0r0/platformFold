.class public Lcom/gionee/game/offlinesdk/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final ENABLE_SAVELOG_FLAG_FOLDER:Ljava/lang/String; = "log"

.field private static final GLOBAL_TAG:Ljava/lang/String; = "GameSDK"

.field private static final SAVELOG_FILE_NAME:Ljava/lang/String; = "gameofflinelog.txt"

.field private static final SINGLE_LOG_LENGTH:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "LogUtils"

.field private static sEnableLog:Z

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static sIsSaveLog:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sEnableLog:Z

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sIsSaveLog:Z

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string v0, "TAG"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method private static formatLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "log"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "level"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    sget-object v2, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sFormatter:Ljava/text/SimpleDateFormat;

    monitor-enter v2

    .line 175
    :try_start_d
    sget-object v1, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_41

    .line 177
    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 176
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method private static getExternalStorageDirectory()Ljava/lang/String;
    .registers 4

    .prologue
    .line 188
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "rootpath":Ljava/lang/String;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_23
    const-string v1, "LogUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExternalStorageDirectory() path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-object v0
.end method

.method public static getFunctionName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 134
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "-> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const-string v1, "-> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getThreadName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 142
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    .local v1, "sb":Ljava/lang/StringBuffer;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v2, "-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_31} :catch_36

    .line 152
    :goto_31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 149
    :catch_36
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LogUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method

.method public static loadInitConfigs()V
    .registers 4

    .prologue
    .line 25
    const-string v2, "LogUtils"

    const-string v3, "loadInitConfigs ..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/StorageUtils;->isSDCardMounted()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 27
    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "sdCardDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "saveLogFlagFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 30
    const-string v2, "LogUtils"

    const-string v3, "DownloadManager savelog flag is true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v2, 0x1

    sput-boolean v2, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sIsSaveLog:Z

    .line 35
    :cond_39
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-boolean v0, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sIsSaveLog:Z

    invoke-static {p0, p1, v0}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 39
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isSave"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xbb8

    .line 42
    sget-boolean v0, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sEnableLog:Z

    if-eqz v0, :cond_4c

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_4d

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameSDK."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    :goto_41
    if-eqz p2, :cond_4c

    .line 52
    :try_start_43
    const-string v0, "i"

    invoke-static {p1, p0, v0}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->formatLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->saveToSDCard(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4c} :catch_77

    .line 57
    :cond_4c
    :goto_4c
    return-void

    .line 47
    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameSDK."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 53
    :catch_77
    move-exception v0

    goto :goto_4c
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-boolean v0, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sEnableLog:Z

    if-eqz v0, :cond_27

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameSDK."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-boolean v0, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sIsSaveLog:Z

    if-eqz v0, :cond_27

    .line 76
    :try_start_1e
    const-string v0, "D"

    invoke-static {p1, p0, v0}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->formatLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->saveToSDCard(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_28

    .line 81
    :cond_27
    :goto_27
    return-void

    .line 77
    :catch_28
    move-exception v0

    goto :goto_27
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 84
    sget-boolean v1, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sEnableLog:Z

    if-eqz v1, :cond_40

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameSDK."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-boolean v1, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sIsSaveLog:Z

    if-eqz v1, :cond_40

    .line 88
    :try_start_37
    const-string v1, "E"

    invoke-static {p1, p0, v1}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->formatLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->saveToSDCard(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_40} :catch_41

    .line 94
    :cond_40
    :goto_40
    return-void

    .line 89
    :catch_41
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    sget-boolean v1, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sEnableLog:Z

    if-eqz v1, :cond_3a

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameSDK."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    sget-boolean v1, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sIsSaveLog:Z

    if-eqz v1, :cond_3a

    .line 101
    :try_start_31
    const-string v1, "E"

    invoke-static {p1, p0, v1}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->formatLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->saveToSDCard(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_3b

    .line 107
    :cond_3a
    :goto_3a
    return-void

    .line 102
    :catch_3b
    move-exception v0

    .line 103
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a
.end method

.method public static logv(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-boolean v0, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sEnableLog:Z

    if-eqz v0, :cond_3a

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameSDK."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-boolean v0, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sIsSaveLog:Z

    if-eqz v0, :cond_3a

    .line 64
    :try_start_31
    const-string v0, "V"

    invoke-static {p1, p0, v0}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->formatLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->saveToSDCard(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_3b

    .line 69
    :cond_3a
    :goto_3a
    return-void

    .line 65
    :catch_3b
    move-exception v0

    goto :goto_3a
.end method

.method public static printException(Ljava/lang/Exception;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 166
    sget-boolean v0, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sEnableLog:Z

    if-eqz v0, :cond_d

    .line 167
    const-string v0, "TAG"

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    :cond_d
    return-void
.end method

.method public static printStack()V
    .registers 3

    .prologue
    .line 156
    sget-boolean v1, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sEnableLog:Z

    if-eqz v1, :cond_10

    .line 158
    :try_start_4
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "printStack"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_c

    .line 159
    :catch_c
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->printException(Ljava/lang/Exception;)V

    .line 163
    :cond_10
    return-void
.end method

.method public static saveToSDCard(Ljava/lang/String;)V
    .registers 10
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/StorageUtils;->isSDCardMounted()Z

    move-result v5

    if-eqz v5, :cond_60

    .line 116
    :try_start_6
    const-string v0, "Time : "

    .line 117
    .local v0, "data":Ljava/lang/String;
    sget-object v6, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sFormatter:Ljava/text/SimpleDateFormat;

    monitor-enter v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_64

    .line 118
    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/gionee/game/offlinesdk/utils/LogUtils;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_61

    .line 120
    :try_start_3b
    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/StorageUtils;->getHomeDirAbsolute()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "sdCardDir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v5, "gameofflinelog.txt"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v3, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .local v3, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 124
    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/RandomAccessFile;->write([B)V

    .line 125
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_60} :catch_64

    .line 130
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .end local v4    # "sdCardDir":Ljava/lang/String;
    :cond_60
    :goto_60
    return-void

    .line 119
    .restart local v0    # "data":Ljava/lang/String;
    :catchall_61
    move-exception v5

    :try_start_62
    monitor-exit v6
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    :try_start_63
    throw v5
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_64} :catch_64

    .line 126
    .end local v0    # "data":Ljava/lang/String;
    :catch_64
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_60
.end method
