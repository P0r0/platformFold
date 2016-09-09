.class public Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;
    }
.end annotation


# static fields
.field private static final APP_TAG:Ljava/lang/String; = "GNAccountSDK"

.field private static final ERROR_FILE_NAME:Ljava/lang/String; = "GNAccountSDK_error"

.field private static final FILE_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final FILE_DIR:Ljava/lang/String; = "/log/GNAccountSDK/"

.field private static final FILE_NAME:Ljava/lang/String; = "GNAccountSDK"

.field private static final FILE_SUFFIX:Ljava/lang/String; = ".log"

.field private static final LOG_TIME_FORMAT:Ljava/lang/String; = "MM-dd HH:mm:ss.SSS"

.field private static final extInfoEnable:Z = true

.field private static final logEnable:Z = true

.field private static final logLevel:I = 0x2

.field private static final logToFileEnable:Z

.field private static targetErrFile:Ljava/io/File;

.field private static targetErrFileWriter:Ljava/io/Writer;

.field private static targetFile:Ljava/io/File;

.field private static targetFileBeginTs:J

.field private static targetFileEndTs:J

.field private static targetFileWriter:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 256
    sput-object v0, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFile:Ljava/io/File;

    .line 257
    sput-object v0, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFileWriter:Ljava/io/Writer;

    .line 259
    sput-wide v2, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFileBeginTs:J

    .line 260
    sput-wide v2, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFileEndTs:J

    .line 262
    sput-object v0, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetErrFile:Ljava/io/File;

    .line 263
    sput-object v0, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetErrFileWriter:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildMessge(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 6
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "level"    # I

    .prologue
    .line 175
    if-nez p0, :cond_4

    .line 176
    const-string p0, ""

    .line 178
    .end local p0    # "obj":Ljava/lang/Object;
    :cond_4
    const-string v1, ""

    .line 181
    .local v1, "retString":Ljava/lang/String;
    invoke-static {}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->getMethodInfo()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "functionInfo":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 183
    const-string v0, ""

    .line 186
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->getLevelInfo(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static d(Ljava/lang/Object;)V
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 85
    const-string v0, "GNAccountSDK"

    invoke-static {v0, p0}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GNAccountSDK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 92
    return-void
.end method

.method public static e(Ljava/lang/Object;)V
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 116
    instance-of v0, p0, Ljava/lang/Throwable;

    if-eqz v0, :cond_a

    .line 117
    check-cast p0, Ljava/lang/Throwable;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->e(Ljava/lang/Throwable;)V

    .line 121
    .restart local p0    # "obj":Ljava/lang/Object;
    :goto_9
    return-void

    .line 120
    :cond_a
    const-string v0, "GNAccountSDK"

    invoke-static {v0, p0}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GNAccountSDK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, p1, v1}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 127
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 131
    const-string v0, "GNAccountSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 133
    return-void
.end method

.method private static getDestLogFile(Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;)Ljava/io/File;
    .registers 11
    .param p0, "type"    # Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 296
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 297
    .local v3, "sdCardDir":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/log/GNAccountSDK/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "filePath":Ljava/lang/String;
    sget-object v5, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;->ErrorFile:Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;

    if-ne p0, v5, :cond_5c

    .line 299
    sget-object v5, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetErrFile:Ljava/io/File;

    if-nez v5, :cond_59

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "GNAccountSDK_error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetErrFile:Ljava/io/File;

    .line 303
    sget-object v5, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetErrFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_59

    .line 304
    sget-object v5, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetErrFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 305
    sget-object v5, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetErrFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 308
    :cond_59
    sget-object v5, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetErrFile:Ljava/io/File;

    .line 324
    :goto_5b
    return-object v5

    .line 310
    :cond_5c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 311
    .local v0, "currentTs":J
    sget-object v5, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFile:Ljava/io/File;

    if-eqz v5, :cond_70

    sget-wide v6, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFileEndTs:J

    cmp-long v5, v0, v6

    if-gtz v5, :cond_70

    sget-wide v6, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFileBeginTs:J

    cmp-long v5, v0, v6

    if-gez v5, :cond_e6

    .line 313
    :cond_70
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "subDir":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GNAccountSDK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFile:Ljava/io/File;

    .line 316
    sget-object v5, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_e6

    .line 317
    sget-object v5, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 318
    sget-object v5, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 320
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sput-wide v6, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFileBeginTs:J

    .line 321
    sget-wide v6, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFileBeginTs:J

    const-wide/32 v8, 0x5265c00

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    sput-wide v6, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFileEndTs:J

    .line 324
    .end local v4    # "subDir":Ljava/lang/String;
    :cond_e6
    sget-object v5, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFile:Ljava/io/File;

    goto/16 :goto_5b
.end method

.method private static getDestLogWriter(Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;)Ljava/io/Writer;
    .registers 8
    .param p0, "type"    # Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 280
    sget-object v2, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;->ErrorFile:Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;

    if-ne p0, v2, :cond_23

    .line 281
    sget-object v2, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetErrFileWriter:Ljava/io/Writer;

    if-nez v2, :cond_20

    .line 282
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    sget-object v5, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;->ErrorFile:Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;

    invoke-static {v5}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->getDestLogFile(Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sput-object v2, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetErrFileWriter:Ljava/io/Writer;

    .line 284
    :cond_20
    sget-object v2, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetErrFileWriter:Ljava/io/Writer;

    .line 291
    :goto_22
    return-object v2

    .line 287
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 288
    .local v0, "currentTs":J
    sget-object v2, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFileWriter:Ljava/io/Writer;

    if-eqz v2, :cond_37

    sget-wide v2, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFileEndTs:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_37

    sget-wide v2, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFileBeginTs:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_4e

    .line 289
    :cond_37
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    sget-object v5, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;->Ordinary:Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;

    invoke-static {v5}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->getDestLogFile(Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sput-object v2, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFileWriter:Ljava/io/Writer;

    .line 291
    :cond_4e
    sget-object v2, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->targetFileWriter:Ljava/io/Writer;

    goto :goto_22
.end method

.method private static getLevelInfo(I)Ljava/lang/String;
    .registers 2
    .param p0, "level"    # I

    .prologue
    .line 219
    packed-switch p0, :pswitch_data_16

    .line 231
    const-string v0, "\u4e0d\u652f\u6301\u7684Log\u7ea7\u522b"

    :goto_5
    return-object v0

    .line 221
    :pswitch_6
    const-string v0, "V"

    goto :goto_5

    .line 223
    :pswitch_9
    const-string v0, "D"

    goto :goto_5

    .line 225
    :pswitch_c
    const-string v0, "I"

    goto :goto_5

    .line 227
    :pswitch_f
    const-string v0, "W"

    goto :goto_5

    .line 229
    :pswitch_12
    const-string v0, "E"

    goto :goto_5

    .line 219
    nop

    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private static getMethodInfo()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 196
    .local v1, "sts":[Ljava/lang/StackTraceElement;
    if-nez v1, :cond_c

    .line 212
    :cond_b
    :goto_b
    return-object v2

    .line 199
    :cond_c
    array-length v4, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v4, :cond_b

    aget-object v0, v1, v3

    .line 200
    .local v0, "st":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 199
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 203
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 206
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Thread-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 210
    const-string v3, "()]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_b
.end method

.method private static getTimestamp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/Object;)V
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 75
    const-string v0, "GNAccountSDK"

    invoke-static {v0, p0}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GNAccountSDK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 82
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "level"    # I

    .prologue
    .line 137
    :try_start_0
    invoke-static {p1, p2}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->buildMessge(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "messge":Ljava/lang/String;
    packed-switch p2, :pswitch_data_34

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e0d\u652f\u6301\u7684Log\u7ea7\u522b"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v1    # "messge":Ljava/lang/String;
    :goto_19
    return-void

    .line 140
    .restart local v1    # "messge":Ljava/lang/String;
    :pswitch_1a
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_19

    .line 166
    .end local v1    # "messge":Ljava/lang/String;
    :catch_1e
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_19

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "messge":Ljava/lang/String;
    :pswitch_23
    :try_start_23
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 146
    :pswitch_27
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 149
    :pswitch_2b
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 152
    :pswitch_2f
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_32} :catch_1e

    goto :goto_19

    .line 138
    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_1a
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
    .end packed-switch
.end method

.method private static saveToSDCard(Ljava/lang/String;Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;)V
    .registers 5
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 246
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 247
    invoke-static {p1}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->getDestLogWriter(Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;)Ljava/io/Writer;

    move-result-object v0

    .line 248
    .local v0, "bw":Ljava/io/Writer;
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 253
    .end local v0    # "bw":Ljava/io/Writer;
    :cond_1b
    return-void
.end method

.method public static v(Ljava/lang/Object;)V
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 95
    const-string v0, "GNAccountSDK"

    invoke-static {v0, p0}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GNAccountSDK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 102
    return-void
.end method

.method public static w(Ljava/lang/Object;)V
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 105
    const-string v0, "GNAccountSDK"

    invoke-static {v0, p0}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GNAccountSDK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, p1, v1}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 112
    return-void
.end method
