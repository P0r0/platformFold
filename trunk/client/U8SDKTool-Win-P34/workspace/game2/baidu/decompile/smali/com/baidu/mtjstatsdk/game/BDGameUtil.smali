.class public Lcom/baidu/mtjstatsdk/game/BDGameUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateLogId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 20
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 22
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/game/BDGameUtil;->generateMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateMd5(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/ct;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 38
    .line 41
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_78
    .catchall {:try_start_1 .. :try_end_4} :catchall_58

    move-result-object v3

    .line 43
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_7b
    .catchall {:try_start_5 .. :try_end_f} :catchall_70

    .line 44
    const/16 v0, 0x400

    :try_start_11
    new-array v0, v0, [C

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    :goto_18
    invoke-virtual {v1, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    if-lez v4, :cond_35

    .line 47
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_22} :catch_23
    .catchall {:try_start_11 .. :try_end_22} :catchall_73

    goto :goto_18

    .line 51
    :catch_23
    move-exception v0

    move-object v2, v3

    .line 52
    :goto_25
    :try_start_25
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_75

    .line 54
    if-eqz v2, :cond_2d

    .line 56
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_4e

    .line 62
    :cond_2d
    :goto_2d
    if-eqz v1, :cond_32

    .line 64
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_53

    .line 71
    :cond_32
    :goto_32
    const-string v0, ""

    :cond_34
    :goto_34
    return-object v0

    .line 50
    :cond_35
    :try_start_35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_23
    .catchall {:try_start_35 .. :try_end_38} :catchall_73

    move-result-object v0

    .line 54
    if-eqz v3, :cond_3e

    .line 56
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_49

    .line 62
    :cond_3e
    :goto_3e
    if-eqz v1, :cond_34

    .line 64
    :try_start_40
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_34

    .line 65
    :catch_44
    move-exception v1

    .line 66
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 57
    :catch_49
    move-exception v2

    .line 58
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3e

    .line 57
    :catch_4e
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d

    .line 65
    :catch_53
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    .line 54
    :catchall_58
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_5b
    if-eqz v3, :cond_60

    .line 56
    :try_start_5d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_66

    .line 62
    :cond_60
    :goto_60
    if-eqz v1, :cond_65

    .line 64
    :try_start_62
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_6b

    .line 67
    :cond_65
    :goto_65
    throw v0

    .line 57
    :catch_66
    move-exception v2

    .line 58
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_60

    .line 65
    :catch_6b
    move-exception v1

    .line 66
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_65

    .line 54
    :catchall_70
    move-exception v0

    move-object v1, v2

    goto :goto_5b

    :catchall_73
    move-exception v0

    goto :goto_5b

    :catchall_75
    move-exception v0

    move-object v3, v2

    goto :goto_5b

    .line 51
    :catch_78
    move-exception v0

    move-object v1, v2

    goto :goto_25

    :catch_7b
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_25
.end method

.method public static writeData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/baidu/mtjstatsdk/ct;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 34
    return-void
.end method
