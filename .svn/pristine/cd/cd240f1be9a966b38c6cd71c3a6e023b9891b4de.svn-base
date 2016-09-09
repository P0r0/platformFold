.class public Lcom/baidu/bdgame/sdk/obf/ls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:I = 0x2710

.field private static c:Lcom/baidu/bdgame/sdk/obf/ls;


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ls;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ls;-><init>()V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ls;->c:Lcom/baidu/bdgame/sdk/obf/ls;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ls;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ls;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/baidu/bdgame/sdk/obf/ls;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ls;->c:Lcom/baidu/bdgame/sdk/obf/ls;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ls;Ljava/lang/Throwable;)Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ls;->a(Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Throwable;)Lorg/json/JSONObject;
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 94
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 96
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 98
    array-length v5, v4

    move v0, v1

    :goto_13
    if-ge v0, v5, :cond_6c

    aget-object v6, v4, v0

    .line 100
    const/4 v7, 0x1

    :try_start_18
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 101
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v7, "BaiduPlatformSDK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_60} :catch_63

    .line 98
    :goto_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 103
    :catch_63
    move-exception v6

    .line 104
    const-string v6, "BaiduPlatformSDK"

    const-string v7, "an error occured when collect crash info"

    invoke-static {v6, v7}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    .line 108
    :cond_6c
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 109
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 110
    invoke-virtual {p1, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 112
    :goto_7d
    if-eqz v0, :cond_87

    .line 113
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_7d

    .line 116
    :cond_87
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 117
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_9e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x2710

    if-le v4, v5, :cond_9e

    .line 120
    const/16 v4, 0x270f

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_9e
    :try_start_9e
    const-string v1, "Device"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v1, "Log"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ac
    .catch Lorg/json/JSONException; {:try_start_9e .. :try_end_ac} :catch_ad

    .line 130
    :goto_ac
    return-object v2

    .line 126
    :catch_ad
    move-exception v0

    .line 127
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "an error occured when put crash info into json."

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ac
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ls;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ls;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 56
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ls;->d:Landroid/content/Context;

    .line 58
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ls;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 60
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ls;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eq v0, p0, :cond_10

    .line 61
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 65
    :goto_f
    return-void

    .line 63
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ls;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    goto :goto_f
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ls;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 73
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ls$1;

    invoke-direct {v0, p0, p2}, Lcom/baidu/bdgame/sdk/obf/ls$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ls;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ls$1;->start()V

    .line 91
    return-void
.end method
