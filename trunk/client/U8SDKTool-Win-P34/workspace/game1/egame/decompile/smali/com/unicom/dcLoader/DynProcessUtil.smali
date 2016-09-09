.class public Lcom/unicom/dcLoader/DynProcessUtil;
.super Ljava/lang/Object;


# static fields
.field private static final CARES_PATTERN:Ljava/util/regex/Pattern;

.field private static final DEXOPT_PATTERN:Ljava/util/regex/Pattern;

.field private static final PS_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\s(\\d+?)\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/unicom/dcLoader/DynProcessUtil;->CARES_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\s+/system/bin/sh$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/unicom/dcLoader/DynProcessUtil;->PS_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\s+dexopt$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/unicom/dcLoader/DynProcessUtil;->DEXOPT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getChildProcessId()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v12, 0x2

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "/system/bin/sh"

    aput-object v8, v1, v3

    const/4 v3, 0x1

    const-string v8, "-c"

    aput-object v8, v1, v3

    const/4 v3, 0x2

    const-string v8, "ps"

    aput-object v8, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_29} :catch_ce
    .catchall {:try_start_10 .. :try_end_29} :catchall_e0

    move-result-object v3

    :try_start_2a
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_38} :catch_100
    .catchall {:try_start_2a .. :try_end_38} :catchall_f8

    :try_start_38
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_3c
    if-eqz v0, :cond_c3

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_bd

    sget-object v2, Lcom/unicom/dcLoader/DynProcessUtil;->CARES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    sget-object v2, Lcom/unicom/dcLoader/DynProcessUtil;->PS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    sget-object v2, Lcom/unicom/dcLoader/DynProcessUtil;->DEXOPT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const/4 v0, 0x2

    new-array v11, v0, [I

    move v0, v4

    move v2, v4

    :goto_5b
    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_77

    if-ge v2, v12, :cond_77

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v11, v2

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :cond_77
    const/4 v0, 0x0

    aget v0, v11, v0

    if-eq v0, v5, :cond_bd

    const/4 v0, 0x1

    aget v0, v11, v0

    if-ne v0, v5, :cond_bd

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_bd

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_bd

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dead process:pid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    aget v2, v11, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ppid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    aget v2, v11, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget v0, v11, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bd
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_c0} :catch_104
    .catchall {:try_start_38 .. :try_end_c0} :catchall_fb

    move-result-object v0

    goto/16 :goto_3c

    :cond_c3
    if-eqz v3, :cond_c8

    :try_start_c5
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c8} :catch_ee

    :cond_c8
    :goto_c8
    if-eqz v1, :cond_cd

    :try_start_ca
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cd} :catch_f0

    :cond_cd
    :goto_cd
    return-object v7

    :catch_ce
    move-exception v0

    move-object v1, v2

    :goto_d0
    :try_start_d0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_fd

    if-eqz v2, :cond_d8

    :try_start_d5
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_d8} :catch_f2

    :cond_d8
    :goto_d8
    if-eqz v1, :cond_cd

    :try_start_da
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_dd} :catch_de

    goto :goto_cd

    :catch_de
    move-exception v0

    goto :goto_cd

    :catchall_e0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_e3
    if-eqz v3, :cond_e8

    :try_start_e5
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_e8} :catch_f4

    :cond_e8
    :goto_e8
    if-eqz v1, :cond_ed

    :try_start_ea
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ed} :catch_f6

    :cond_ed
    :goto_ed
    throw v0

    :catch_ee
    move-exception v0

    goto :goto_c8

    :catch_f0
    move-exception v0

    goto :goto_cd

    :catch_f2
    move-exception v0

    goto :goto_d8

    :catch_f4
    move-exception v2

    goto :goto_e8

    :catch_f6
    move-exception v1

    goto :goto_ed

    :catchall_f8
    move-exception v0

    move-object v1, v2

    goto :goto_e3

    :catchall_fb
    move-exception v0

    goto :goto_e3

    :catchall_fd
    move-exception v0

    move-object v3, v2

    goto :goto_e3

    :catch_100
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_d0

    :catch_104
    move-exception v0

    move-object v2, v3

    goto :goto_d0
.end method

.method public static getProcessIdList()[I
    .registers 4

    invoke-static {}, Lcom/unicom/dcLoader/DynProcessUtil;->getChildProcessId()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2a

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_2a
    move-object v0, v2

    :goto_2b
    return-object v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method
