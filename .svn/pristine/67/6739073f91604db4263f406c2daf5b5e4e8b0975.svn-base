.class public Lcom/duoku/platform/download/utils/DateUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_DISPLAY_FORMAT:Ljava/lang/String; = "yyyy.MM.dd"

.field public static final DEFAULT_DISPLAY_LOG_FORMAT:Ljava/lang/String; = "yyyy.MM.dd.HH"

.field public static final DEFAULT_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final FORMAT1:Ljava/lang/String; = "yyyy-MM-dd-HH-mm-ss"

.field public static final FORMAT2:Ljava/lang/String; = "MM/dd/yyyy HH:mm"

.field public static final FORMAT3:Ljava/lang/String; = "yyyy-MM-dd:HH-mm-ss"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(JLjava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 80
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    .line 87
    :goto_e
    return-object v0

    .line 83
    :catch_f
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    const-string v0, "yyyy.MM.dd"

    invoke-static {p0, v0}, Lcom/duoku/platform/download/utils/DateUtil;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 94
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    .line 101
    :goto_9
    return-object v0

    .line 97
    :catch_a
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static getFormatData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 67
    :try_start_7
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/duoku/platform/download/utils/DateUtil;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_e} :catch_10

    move-result-object v0

    .line 73
    :goto_f
    return-object v0

    .line 69
    :catch_10
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 73
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static pareseDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3

    .prologue
    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 53
    :try_start_7
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_a
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v0

    .line 59
    :goto_b
    return-object v0

    .line 55
    :catch_c
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 59
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static pareseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .registers 3

    .prologue
    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 34
    :try_start_5
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v0

    .line 40
    :goto_9
    return-object v0

    .line 36
    :catch_a
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 40
    const/4 v0, 0x0

    goto :goto_9
.end method
