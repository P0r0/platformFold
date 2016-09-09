.class public Lcom/baidu/mtjstatsdk/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mtjstatsdk/GameExceptionListener;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Lcom/baidu/mtjstatsdk/bp;

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/baidu/mtjstatsdk/bp;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/bp;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/bp;->a:Lcom/baidu/mtjstatsdk/bp;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/bp;->d:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/baidu/mtjstatsdk/bp;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 28
    iput-object v0, p0, Lcom/baidu/mtjstatsdk/bp;->c:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public static a()Lcom/baidu/mtjstatsdk/bp;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/baidu/mtjstatsdk/bp;->a:Lcom/baidu/mtjstatsdk/bp;

    return-object v0
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bp;->c:Landroid/content/Context;

    if-eqz v1, :cond_13

    if-eqz p3, :cond_13

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 135
    :cond_13
    :goto_13
    return-void

    .line 106
    :cond_14
    :try_start_14
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 107
    const-string v1, "t"

    invoke-virtual {v3, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 108
    const-string v1, "c"

    invoke-virtual {v3, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v1, "y"

    invoke-virtual {v3, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v2, v0

    .line 112
    :goto_29
    sget-object v0, Lcom/baidu/mtjstatsdk/bp;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_13

    .line 113
    sget-object v0, Lcom/baidu/mtjstatsdk/bp;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    const-string v4, "v"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bp;->c:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/mtjstatsdk/bp;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 118
    if-nez v1, :cond_4f

    .line 119
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 122
    :cond_4f
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 123
    iget-object v4, p0, Lcom/baidu/mtjstatsdk/bp;->c:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "__local_except_cache.json"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 125
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 127
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 128
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 129
    const-string v0, "SDKCrashHandler"

    const-string v1, "Save Exception String Successlly"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_84} :catch_88

    .line 112
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_29

    .line 132
    :catch_88
    move-exception v0

    .line 133
    const-string v1, "SDKCrashHandler"

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 44
    sget-object v0, Lcom/baidu/mtjstatsdk/bp;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bp;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_12

    .line 46
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/bp;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 47
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 49
    :cond_12
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bp;->c:Landroid/content/Context;

    if-nez v0, :cond_1c

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/bp;->c:Landroid/content/Context;

    .line 52
    :cond_1c
    return-void
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 138
    if-nez p1, :cond_4

    .line 172
    :cond_3
    :goto_3
    return-object v1

    .line 143
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "__local_except_cache.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    :try_start_20
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "__local_except_cache.json"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 152
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 155
    :goto_46
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_68

    .line 156
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_56} :catch_57

    goto :goto_46

    .line 164
    :catch_57
    move-exception v0

    .line 165
    const-string v3, "SDKCrashHandler"

    invoke-static {v3, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    :goto_5d
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_3

    .line 169
    :catch_61
    move-exception v0

    .line 170
    const-string v2, "SDKCrashHandler"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 159
    :cond_68
    :try_start_68
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 160
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_7c

    .line 161
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_7a} :catch_57

    :goto_7a
    move-object v1, v0

    .line 166
    goto :goto_5d

    :cond_7c
    move-object v0, v1

    goto :goto_7a
.end method

.method public exceptonAnalysis(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 5

    .prologue
    .line 181
    if-nez p1, :cond_b

    .line 182
    const-string v0, "statsdk"

    const-string v1, "exceptonAnalysis, context=null"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x0

    .line 187
    :goto_a
    return-object v0

    .line 186
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/baidu/mtjstatsdk/bp;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_a
.end method

.method public openExceptonAnalysis(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 202
    const-string v0, "statsdk"

    const-string v1, "openExceptonAnalysis"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/DataCore;->haveSetExceptionListener()Z

    move-result v0

    if-nez v0, :cond_18

    .line 204
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mtjstatsdk/DataCore;->setGameExceptionOperation(Lcom/baidu/mtjstatsdk/GameExceptionListener;)V

    .line 207
    :cond_18
    invoke-static {}, Lcom/baidu/mtjstatsdk/bp;->a()Lcom/baidu/mtjstatsdk/bp;

    move-result-object v0

    .line 208
    invoke-virtual {v0, p1, p2}, Lcom/baidu/mtjstatsdk/bp;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7

    .prologue
    .line 56
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v0, ""

    .line 58
    if-eqz v1, :cond_20

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 60
    :try_start_10
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5d

    .line 62
    const/4 v2, 0x0

    aget-object v0, v0, v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_20} :catch_5f

    .line 73
    :cond_20
    :goto_20
    if-eqz v0, :cond_2a

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 77
    :cond_2a
    :goto_2a
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 78
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 79
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 80
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v2, "SDKCrashHandler"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/baidu/mtjstatsdk/bp;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bp;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 88
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bp;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 90
    :cond_57
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5d
    move-object v0, v1

    .line 64
    goto :goto_20

    .line 66
    :catch_5f
    move-exception v0

    .line 67
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->b(Ljava/lang/Throwable;)I

    .line 68
    const-string v0, ""

    goto :goto_20

    :cond_66
    move-object v1, v0

    goto :goto_2a
.end method
