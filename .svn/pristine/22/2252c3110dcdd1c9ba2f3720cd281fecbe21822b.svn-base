.class public Lcom/vivo/upgrade/utils/ShellUtils;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;
    }
.end annotation


# static fields
.field public static final COMMAND_EXIT:Ljava/lang/String; = "exit\n"

.field public static final COMMAND_LINE_END:Ljava/lang/String; = "\n"

.field public static final COMMAND_SH:Ljava/lang/String; = "sh"

.field public static final COMMAND_SU:Ljava/lang/String; = "su"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRootPermission()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    const-string v2, "echo root"

    invoke-static {v2, v0, v1}, Lcom/vivo/upgrade/utils/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;

    move-result-object v2

    iget v2, v2, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->result:I

    if-nez v2, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method public static checkVivoRootPermission()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-static {}, Lcom/vivo/upgrade/utils/Util;->isVivoPhone()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 47
    const-string v2, "echo root"

    invoke-static {v2, v0, v1}, Lcom/vivo/upgrade/utils/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;

    move-result-object v2

    iget v2, v2, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;->result:I

    if-nez v2, :cond_13

    .line 49
    :goto_12
    return v0

    :cond_13
    move v0, v1

    .line 47
    goto :goto_12

    :cond_15
    move v0, v1

    .line 49
    goto :goto_12
.end method

.method public static exec(Ljava/lang/String;)V
    .registers 7
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 289
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    .line 290
    .local v0, "cmds":[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "sh"

    aput-object v4, v0, v3

    .line 291
    const/4 v3, 0x1

    const-string v4, "-c"

    aput-object v4, v0, v3

    .line 292
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 293
    .local v2, "rt":Ljava/lang/Runtime;
    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "chmod 777 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 295
    :try_start_29
    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 300
    .end local v0    # "cmds":[Ljava/lang/String;
    .end local v2    # "rt":Ljava/lang/Runtime;
    :cond_2c
    :goto_2c
    return-void

    .line 296
    .restart local v0    # "cmds":[Ljava/lang/String;
    .restart local v2    # "rt":Ljava/lang/Runtime;
    :catch_2d
    move-exception v1

    .line 297
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c
.end method

.method public static execCommand(Ljava/lang/String;)Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;
    .registers 16
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 199
    const/4 v13, 0x4

    new-array v0, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "pm"

    aput-object v14, v0, v13

    const/4 v13, 0x1

    const-string v14, "install"

    aput-object v14, v0, v13

    const/4 v13, 0x2

    const-string v14, "-r"

    aput-object v14, v0, v13

    const/4 v13, 0x3

    aput-object p0, v0, v13

    .line 200
    .local v0, "args":[Ljava/lang/String;
    new-instance v6, Ljava/lang/ProcessBuilder;

    invoke-direct {v6, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 202
    .local v6, "processBuilder":Ljava/lang/ProcessBuilder;
    const/4 v5, 0x0

    .line 203
    .local v5, "process":Ljava/lang/Process;
    const/4 v10, 0x0

    .line 204
    .local v10, "successResult":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 205
    .local v3, "errorResult":Ljava/io/BufferedReader;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v9, "successMsg":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v2, "errorMsg":Ljava/lang/StringBuilder;
    const/4 v7, -0x1

    .line 210
    .local v7, "result":I
    :try_start_29
    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v5

    .line 211
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3b} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3b} :catch_df
    .catchall {:try_start_29 .. :try_end_3b} :catchall_b3

    .line 212
    .end local v10    # "successResult":Ljava/io/BufferedReader;
    .local v11, "successResult":Ljava/io/BufferedReader;
    :try_start_3b
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_49} :catch_e6
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_49} :catch_e1
    .catchall {:try_start_3b .. :try_end_49} :catchall_d8

    .line 213
    .end local v3    # "errorResult":Ljava/io/BufferedReader;
    .local v4, "errorResult":Ljava/io/BufferedReader;
    :try_start_49
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v7

    .line 216
    :goto_4d
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "s":Ljava/lang/String;
    if-nez v8, :cond_75

    .line 220
    :goto_53
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_56} :catch_79
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_56} :catch_93
    .catchall {:try_start_49 .. :try_end_56} :catchall_db

    move-result-object v8

    if-nez v8, :cond_8f

    .line 229
    if-eqz v11, :cond_5e

    .line 230
    :try_start_5b
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 232
    :cond_5e
    if-eqz v4, :cond_63

    .line 233
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_63} :catch_c9

    .line 238
    :cond_63
    :goto_63
    if-eqz v5, :cond_68

    .line 239
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    :cond_68
    move-object v3, v4

    .end local v4    # "errorResult":Ljava/io/BufferedReader;
    .restart local v3    # "errorResult":Ljava/io/BufferedReader;
    move-object v10, v11

    .line 243
    .end local v8    # "s":Ljava/lang/String;
    .end local v11    # "successResult":Ljava/io/BufferedReader;
    .restart local v10    # "successResult":Ljava/io/BufferedReader;
    :cond_6a
    :goto_6a
    new-instance v14, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;

    if-nez v9, :cond_ce

    move-object v13, v12

    :goto_6f
    if-nez v2, :cond_d3

    :goto_71
    invoke-direct {v14, v7, v13, v12}, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v14

    .line 217
    .end local v3    # "errorResult":Ljava/io/BufferedReader;
    .end local v10    # "successResult":Ljava/io/BufferedReader;
    .restart local v4    # "errorResult":Ljava/io/BufferedReader;
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v11    # "successResult":Ljava/io/BufferedReader;
    :cond_75
    :try_start_75
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_93
    .catchall {:try_start_75 .. :try_end_78} :catchall_db

    goto :goto_4d

    .line 223
    .end local v8    # "s":Ljava/lang/String;
    :catch_79
    move-exception v1

    move-object v3, v4

    .end local v4    # "errorResult":Ljava/io/BufferedReader;
    .restart local v3    # "errorResult":Ljava/io/BufferedReader;
    move-object v10, v11

    .line 224
    .end local v11    # "successResult":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/io/IOException;
    .restart local v10    # "successResult":Ljava/io/BufferedReader;
    :goto_7c
    :try_start_7c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_b3

    .line 229
    if-eqz v10, :cond_84

    .line 230
    :try_start_81
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 232
    :cond_84
    if-eqz v3, :cond_89

    .line 233
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_89} :catch_a9

    .line 238
    :cond_89
    :goto_89
    if-eqz v5, :cond_6a

    .line 239
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    goto :goto_6a

    .line 221
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "errorResult":Ljava/io/BufferedReader;
    .end local v10    # "successResult":Ljava/io/BufferedReader;
    .restart local v4    # "errorResult":Ljava/io/BufferedReader;
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v11    # "successResult":Ljava/io/BufferedReader;
    :cond_8f
    :try_start_8f
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_79
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_93
    .catchall {:try_start_8f .. :try_end_92} :catchall_db

    goto :goto_53

    .line 225
    .end local v8    # "s":Ljava/lang/String;
    :catch_93
    move-exception v1

    move-object v3, v4

    .end local v4    # "errorResult":Ljava/io/BufferedReader;
    .restart local v3    # "errorResult":Ljava/io/BufferedReader;
    move-object v10, v11

    .line 226
    .end local v11    # "successResult":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v10    # "successResult":Ljava/io/BufferedReader;
    :goto_96
    :try_start_96
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_b3

    .line 229
    if-eqz v10, :cond_9e

    .line 230
    :try_start_9b
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 232
    :cond_9e
    if-eqz v3, :cond_a3

    .line 233
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a3} :catch_ae

    .line 238
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a3
    :goto_a3
    if-eqz v5, :cond_6a

    .line 239
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    goto :goto_6a

    .line 235
    .local v1, "e":Ljava/io/IOException;
    :catch_a9
    move-exception v1

    .line 236
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_89

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    :catch_ae
    move-exception v1

    .line 236
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3

    .line 227
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_b3
    move-exception v12

    .line 229
    :goto_b4
    if-eqz v10, :cond_b9

    .line 230
    :try_start_b6
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 232
    :cond_b9
    if-eqz v3, :cond_be

    .line 233
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_be} :catch_c4

    .line 238
    :cond_be
    :goto_be
    if-eqz v5, :cond_c3

    .line 239
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    .line 241
    :cond_c3
    throw v12

    .line 235
    :catch_c4
    move-exception v1

    .line 236
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_be

    .line 235
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "errorResult":Ljava/io/BufferedReader;
    .end local v10    # "successResult":Ljava/io/BufferedReader;
    .restart local v4    # "errorResult":Ljava/io/BufferedReader;
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v11    # "successResult":Ljava/io/BufferedReader;
    :catch_c9
    move-exception v1

    .line 236
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    .line 243
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "errorResult":Ljava/io/BufferedReader;
    .end local v8    # "s":Ljava/lang/String;
    .end local v11    # "successResult":Ljava/io/BufferedReader;
    .restart local v3    # "errorResult":Ljava/io/BufferedReader;
    .restart local v10    # "successResult":Ljava/io/BufferedReader;
    :cond_ce
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_6f

    .line 244
    :cond_d3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_71

    .line 227
    .end local v10    # "successResult":Ljava/io/BufferedReader;
    .restart local v11    # "successResult":Ljava/io/BufferedReader;
    :catchall_d8
    move-exception v12

    move-object v10, v11

    .end local v11    # "successResult":Ljava/io/BufferedReader;
    .restart local v10    # "successResult":Ljava/io/BufferedReader;
    goto :goto_b4

    .end local v3    # "errorResult":Ljava/io/BufferedReader;
    .end local v10    # "successResult":Ljava/io/BufferedReader;
    .restart local v4    # "errorResult":Ljava/io/BufferedReader;
    .restart local v11    # "successResult":Ljava/io/BufferedReader;
    :catchall_db
    move-exception v12

    move-object v3, v4

    .end local v4    # "errorResult":Ljava/io/BufferedReader;
    .restart local v3    # "errorResult":Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11    # "successResult":Ljava/io/BufferedReader;
    .restart local v10    # "successResult":Ljava/io/BufferedReader;
    goto :goto_b4

    .line 225
    :catch_df
    move-exception v1

    goto :goto_96

    .end local v10    # "successResult":Ljava/io/BufferedReader;
    .restart local v11    # "successResult":Ljava/io/BufferedReader;
    :catch_e1
    move-exception v1

    move-object v10, v11

    .end local v11    # "successResult":Ljava/io/BufferedReader;
    .restart local v10    # "successResult":Ljava/io/BufferedReader;
    goto :goto_96

    .line 223
    :catch_e4
    move-exception v1

    goto :goto_7c

    .end local v10    # "successResult":Ljava/io/BufferedReader;
    .restart local v11    # "successResult":Ljava/io/BufferedReader;
    :catch_e6
    move-exception v1

    move-object v10, v11

    .end local v11    # "successResult":Ljava/io/BufferedReader;
    .restart local v10    # "successResult":Ljava/io/BufferedReader;
    goto :goto_7c
.end method

.method public static execCommand(Ljava/lang/String;Z)Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;
    .registers 5
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "isRoot"    # Z

    .prologue
    const/4 v2, 0x1

    .line 61
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, v2}, Lcom/vivo/upgrade/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCommand(Ljava/lang/String;ZZ)Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;
    .registers 5
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z

    .prologue
    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lcom/vivo/upgrade/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCommand(Ljava/util/List;Z)Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;
    .registers 4
    .param p1, "isRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_9

    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/vivo/upgrade/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3
.end method

.method public static execCommand(Ljava/util/List;ZZ)Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;
    .registers 4
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-static {v0, p1, p2}, Lcom/vivo/upgrade/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3
.end method

.method public static execCommand([Ljava/lang/String;Z)Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;
    .registers 3
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "isRoot"    # Z

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/vivo/upgrade/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCommand([Ljava/lang/String;ZZ)Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;
    .registers 24
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z

    .prologue
    .line 127
    const/4 v12, -0x1

    .line 128
    .local v12, "result":I
    if-eqz p0, :cond_a

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_1a

    .line 129
    :cond_a
    new-instance v18, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v12, v1, v2}, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_19
    return-object v18

    .line 132
    :cond_1a
    const/4 v11, 0x0

    .line 133
    .local v11, "process":Ljava/lang/Process;
    const/16 v16, 0x0

    .line 134
    .local v16, "successResult":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 135
    .local v7, "errorResult":Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 136
    .local v14, "successMsg":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 138
    .local v5, "errorMsg":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 140
    .local v9, "os":Ljava/io/DataOutputStream;
    :try_start_21
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    if-eqz p1, :cond_c0

    const-string v18, "su"

    :goto_29
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v11

    .line 141
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-virtual {v11}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_3c} :catch_195
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3c} :catch_17f
    .catchall {:try_start_21 .. :try_end_3c} :catchall_135

    .line 142
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .local v10, "os":Ljava/io/DataOutputStream;
    :try_start_3c
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_43
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_c4

    .line 152
    const-string v18, "exit\n"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 155
    invoke-virtual {v11}, Ljava/lang/Process;->waitFor()I

    move-result v12

    .line 157
    if-eqz p2, :cond_92

    .line 158
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_5e} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_5e} :catch_181
    .catchall {:try_start_3c .. :try_end_5e} :catchall_164

    .line 159
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .local v15, "successMsg":Ljava/lang/StringBuilder;
    :try_start_5e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_63} :catch_198
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_63} :catch_184
    .catchall {:try_start_5e .. :try_end_63} :catchall_167

    .line 160
    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .local v6, "errorMsg":Ljava/lang/StringBuilder;
    :try_start_63
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    invoke-virtual {v11}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v17 .. v18}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_71} :catch_19d
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_71} :catch_188
    .catchall {:try_start_63 .. :try_end_71} :catchall_16b

    .line 161
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .local v17, "successResult":Ljava/io/BufferedReader;
    :try_start_71
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    invoke-virtual {v11}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_81} :catch_1a3
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_81} :catch_18d
    .catchall {:try_start_71 .. :try_end_81} :catchall_170

    .line 163
    .end local v7    # "errorResult":Ljava/io/BufferedReader;
    .local v8, "errorResult":Ljava/io/BufferedReader;
    :goto_81
    :try_start_81
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, "s":Ljava/lang/String;
    if-nez v13, :cond_fa

    .line 166
    :goto_87
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_8a} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8a} :catch_10b
    .catchall {:try_start_81 .. :try_end_8a} :catchall_177

    move-result-object v13

    if-nez v13, :cond_106

    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    move-object v7, v8

    .end local v8    # "errorResult":Ljava/io/BufferedReader;
    .restart local v7    # "errorResult":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .line 176
    .end local v13    # "s":Ljava/lang/String;
    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    :cond_92
    if-eqz v10, :cond_97

    .line 177
    :try_start_94
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 179
    :cond_97
    if-eqz v16, :cond_9c

    .line 180
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    .line 182
    :cond_9c
    if-eqz v7, :cond_a1

    .line 183
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_a1} :catch_150

    .line 189
    :cond_a1
    :goto_a1
    if-eqz v11, :cond_a6

    .line 190
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    :cond_a6
    move-object v9, v10

    .line 193
    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    :cond_a7
    :goto_a7
    new-instance v19, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;

    if-nez v14, :cond_156

    const/16 v18, 0x0

    move-object/from16 v20, v18

    :goto_af
    if-nez v5, :cond_15e

    const/16 v18, 0x0

    :goto_b3
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v12, v1, v2}, Lcom/vivo/upgrade/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v19

    goto/16 :goto_19

    .line 140
    :cond_c0
    :try_start_c0
    const-string v18, "sh"
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c2} :catch_195
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c2} :catch_17f
    .catchall {:try_start_c0 .. :try_end_c2} :catchall_135

    goto/16 :goto_29

    .line 142
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    :cond_c4
    :try_start_c4
    aget-object v3, p0, v18

    .line 143
    .local v3, "command":Ljava/lang/String;
    if-nez v3, :cond_cc

    .line 142
    :goto_c8
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_43

    .line 148
    :cond_cc
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 149
    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_df} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_df} :catch_181
    .catchall {:try_start_c4 .. :try_end_df} :catchall_164

    goto :goto_c8

    .line 170
    .end local v3    # "command":Ljava/lang/String;
    :catch_e0
    move-exception v4

    move-object v9, v10

    .line 171
    .end local v10    # "os":Ljava/io/DataOutputStream;
    .local v4, "e":Ljava/io/IOException;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    :goto_e2
    :try_start_e2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_135

    .line 176
    if-eqz v9, :cond_ea

    .line 177
    :try_start_e7
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 179
    :cond_ea
    if-eqz v16, :cond_ef

    .line 180
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    .line 182
    :cond_ef
    if-eqz v7, :cond_f4

    .line 183
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_f4} :catch_12b

    .line 189
    :cond_f4
    :goto_f4
    if-eqz v11, :cond_a7

    .line 190
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    goto :goto_a7

    .line 164
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v7    # "errorResult":Ljava/io/BufferedReader;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v8    # "errorResult":Ljava/io/BufferedReader;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v13    # "s":Ljava/lang/String;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successResult":Ljava/io/BufferedReader;
    :cond_fa
    :try_start_fa
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 170
    .end local v13    # "s":Ljava/lang/String;
    :catch_fe
    move-exception v4

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    move-object v7, v8

    .end local v8    # "errorResult":Ljava/io/BufferedReader;
    .restart local v7    # "errorResult":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    goto :goto_e2

    .line 167
    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v7    # "errorResult":Ljava/io/BufferedReader;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v8    # "errorResult":Ljava/io/BufferedReader;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v13    # "s":Ljava/lang/String;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successResult":Ljava/io/BufferedReader;
    :cond_106
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_109} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_109} :catch_10b
    .catchall {:try_start_fa .. :try_end_109} :catchall_177

    goto/16 :goto_87

    .line 172
    .end local v13    # "s":Ljava/lang/String;
    :catch_10b
    move-exception v4

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    move-object v7, v8

    .end local v8    # "errorResult":Ljava/io/BufferedReader;
    .restart local v7    # "errorResult":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .line 173
    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    :goto_112
    :try_start_112
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_115
    .catchall {:try_start_112 .. :try_end_115} :catchall_135

    .line 176
    if-eqz v9, :cond_11a

    .line 177
    :try_start_117
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 179
    :cond_11a
    if-eqz v16, :cond_11f

    .line 180
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    .line 182
    :cond_11f
    if-eqz v7, :cond_124

    .line 183
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_124} :catch_130

    .line 189
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_124
    :goto_124
    if-eqz v11, :cond_a7

    .line 190
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_a7

    .line 185
    .local v4, "e":Ljava/io/IOException;
    :catch_12b
    move-exception v4

    .line 186
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f4

    .line 185
    .local v4, "e":Ljava/lang/Exception;
    :catch_130
    move-exception v4

    .line 186
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_124

    .line 174
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_135
    move-exception v18

    .line 176
    :goto_136
    if-eqz v9, :cond_13b

    .line 177
    :try_start_138
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 179
    :cond_13b
    if-eqz v16, :cond_140

    .line 180
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    .line 182
    :cond_140
    if-eqz v7, :cond_145

    .line 183
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_145} :catch_14b

    .line 189
    :cond_145
    :goto_145
    if-eqz v11, :cond_14a

    .line 190
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    .line 192
    :cond_14a
    throw v18

    .line 185
    :catch_14b
    move-exception v4

    .line 186
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_145

    .line 185
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    :catch_150
    move-exception v4

    .line 186
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a1

    .line 193
    .end local v4    # "e":Ljava/io/IOException;
    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    :cond_156
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v20, v18

    goto/16 :goto_af

    .line 194
    :cond_15e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_b3

    .line 174
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    :catchall_164
    move-exception v18

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    goto :goto_136

    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    :catchall_167
    move-exception v18

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto :goto_136

    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    :catchall_16b
    move-exception v18

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto :goto_136

    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successResult":Ljava/io/BufferedReader;
    :catchall_170
    move-exception v18

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    move-object/from16 v16, v17

    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    goto :goto_136

    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v7    # "errorResult":Ljava/io/BufferedReader;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v8    # "errorResult":Ljava/io/BufferedReader;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successResult":Ljava/io/BufferedReader;
    :catchall_177
    move-exception v18

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    move-object v7, v8

    .end local v8    # "errorResult":Ljava/io/BufferedReader;
    .restart local v7    # "errorResult":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    goto :goto_136

    .line 172
    :catch_17f
    move-exception v4

    goto :goto_112

    .end local v9    # "os":Ljava/io/DataOutputStream;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    :catch_181
    move-exception v4

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    goto :goto_112

    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    :catch_184
    move-exception v4

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto :goto_112

    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    :catch_188
    move-exception v4

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto :goto_112

    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successResult":Ljava/io/BufferedReader;
    :catch_18d
    move-exception v4

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    move-object/from16 v16, v17

    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    goto/16 :goto_112

    .line 170
    :catch_195
    move-exception v4

    goto/16 :goto_e2

    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    :catch_198
    move-exception v4

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto/16 :goto_e2

    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    :catch_19d
    move-exception v4

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto/16 :goto_e2

    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successResult":Ljava/io/BufferedReader;
    :catch_1a3
    move-exception v4

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    move-object/from16 v16, v17

    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    goto/16 :goto_e2
.end method
