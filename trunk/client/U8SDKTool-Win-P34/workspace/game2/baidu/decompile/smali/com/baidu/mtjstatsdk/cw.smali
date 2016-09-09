.class public final Lcom/baidu/mtjstatsdk/cw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/text/format/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mtjstatsdk/cw;->a:Landroid/text/format/DateFormat;

    .line 39
    invoke-static {}, Lcom/baidu/mtjstatsdk/cw;->a()V

    .line 40
    new-instance v0, Landroid/text/format/DateFormat;

    invoke-direct {v0}, Landroid/text/format/DateFormat;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/cw;->a:Landroid/text/format/DateFormat;

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 106
    const-string v0, "statsdk"

    invoke-static {v0, p0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 122
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 123
    const/4 v0, -0x1

    .line 127
    :goto_8
    return v0

    .line 126
    :cond_9
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/cw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_8
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .prologue
    .line 140
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 141
    const/4 v0, -0x1

    .line 145
    :goto_8
    return v0

    .line 144
    :cond_9
    const-string v0, "statsdk"

    invoke-static {v0, p0, p1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    const-string v0, "statsdk"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_8
.end method

.method public static a(Ljava/lang/Throwable;)I
    .registers 2

    .prologue
    .line 110
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs a([Ljava/lang/Object;)I
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 115
    const/4 v0, -0x1

    .line 118
    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/cw;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_8
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 34
    const-string v0, "_b_sdk.log"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/ct;->a(Ljava/lang/String;)Z

    .line 35
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7

    .prologue
    .line 59
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 60
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 61
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/baidu/mtjstatsdk/cw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 67
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 71
    :goto_2d
    return-void

    .line 68
    :catch_2e
    move-exception v0

    .line 69
    const-string v1, "Log.debug"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d
.end method

.method public static a(I)Z
    .registers 2

    .prologue
    .line 82
    const-string v0, "statsdk"

    invoke-static {v0, p0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;I)Z
    .registers 3

    .prologue
    .line 78
    sget v0, Lcom/baidu/mtjstatsdk/cs;->a:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static b(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 176
    const/4 v0, -0x1

    .line 180
    :goto_8
    return v0

    .line 179
    :cond_9
    const-string v0, "statsdk"

    invoke-static {v0, p0}, Lcom/baidu/mtjstatsdk/cw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "statsdk"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_8
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .prologue
    .line 226
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 227
    const/4 v0, -0x1

    .line 231
    :goto_8
    return v0

    .line 230
    :cond_9
    const-string v0, "statsdk"

    invoke-static {v0, p0, p1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    const-string v0, "statsdk"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_8
.end method

.method public static b(Ljava/lang/Throwable;)I
    .registers 2

    .prologue
    .line 222
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/baidu/mtjstatsdk/cw;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs b([Ljava/lang/Object;)I
    .registers 2

    .prologue
    .line 184
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 185
    const/4 v0, -0x1

    .line 188
    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/cw;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_8
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 56
    const-class v0, Lcom/baidu/mtjstatsdk/cw;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static c(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 213
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 214
    const/4 v0, -0x1

    .line 218
    :goto_8
    return v0

    .line 217
    :cond_9
    const-string v0, "statsdk"

    invoke-static {v0, p0}, Lcom/baidu/mtjstatsdk/cw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v0, "statsdk"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_8
.end method

.method public static varargs c([Ljava/lang/Object;)I
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 206
    const/4 v0, -0x1

    .line 209
    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/cw;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c(Ljava/lang/String;)I

    move-result v0

    goto :goto_8
.end method

.method private static d([Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    array-length v2, p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_17

    aget-object v3, p0, v0

    .line 169
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 171
    :cond_17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
