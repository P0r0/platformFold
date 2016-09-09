.class public Lcom/duoku/platform/download/SilentInstallService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z

.field public static final EXTRA_INSTALLER_PACK:Ljava/lang/String; = "arg_pack"

.field private static final TAG:Ljava/lang/String; = "AppInstaller"


# instance fields
.field private mCount:I

.field private mHandler:Landroid/os/Handler;

.field private mInstallHandler:Landroid/os/Handler;

.field private mInstallThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/duoku/platform/download/SilentInstallService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/duoku/platform/download/SilentInstallService;->mCount:I

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/duoku/platform/download/SilentInstallService;)I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/duoku/platform/download/SilentInstallService;->mCount:I

    return v0
.end method

.method static synthetic access$1(Lcom/duoku/platform/download/SilentInstallService;I)V
    .registers 2

    .prologue
    .line 44
    iput p1, p0, Lcom/duoku/platform/download/SilentInstallService;->mCount:I

    return-void
.end method

.method static synthetic access$2(Lcom/duoku/platform/download/SilentInstallService;Lcom/duoku/platform/download/mode/InstallPacket;)V
    .registers 2

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/SilentInstallService;->installSilent(Lcom/duoku/platform/download/mode/InstallPacket;)V

    return-void
.end method

.method static synthetic access$3(Lcom/duoku/platform/download/SilentInstallService;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/duoku/platform/download/SilentInstallService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4()Z
    .registers 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/duoku/platform/download/SilentInstallService;->DEBUG:Z

    return v0
.end method

.method private installAPKBySUCommand(Lcom/duoku/platform/download/mode/InstallPacket;)V
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 227
    const-string v1, "SilentInstallService"

    const-string v3, "installAPKBySUCommand"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v1, "AppInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "installAPKBySUCommand data:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-nez p1, :cond_20

    .line 364
    :goto_1f
    return-void

    .line 233
    :cond_20
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstallPacket;->getFilepath()Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstallPacket;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 260
    const/4 v3, 0x0

    .line 264
    :try_start_29
    const-string v1, "SilentInstallService"

    const-string v6, "SilentInstallService execute \'su\'"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v6, "su"

    invoke-virtual {v1, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 267
    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 268
    if-eqz v1, :cond_f2

    .line 270
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "pm install -r \'"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "\'\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "UTF-8"

    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 274
    const-string v7, "SilentInstallService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SilentInstallService \'pm install -r "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 276
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 278
    const-string v1, "exit\n"

    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 279
    const-string v1, "SilentInstallService"

    const-string v7, "SilentInstallService execute \'exit\',waitting..."

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 281
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_92} :catch_207
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_92} :catch_1b7
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_92} :catch_1d2
    .catchall {:try_start_29 .. :try_end_92} :catchall_1ed

    move-result v7

    .line 285
    :try_start_93
    sget-boolean v1, Lcom/duoku/platform/download/SilentInstallService;->DEBUG:Z

    if-eqz v1, :cond_ab

    .line 287
    const-string v1, "AppInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "silent install finished, exit value is:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_ab
    const-string v8, "SilentInstallService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v1, "SilentInstallService waitFor exitValue:"

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v7, :cond_143

    move v1, v2

    :goto_b7
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    if-nez v7, :cond_209

    .line 294
    new-instance v7, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 296
    :cond_cd
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_146

    move v1, v0

    .line 309
    :goto_d4
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 311
    sget-boolean v2, Lcom/duoku/platform/download/SilentInstallService;->DEBUG:Z

    if-eqz v2, :cond_ed

    .line 313
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 314
    :cond_e4
    :goto_e4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_181

    .line 323
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 326
    :cond_ed
    :goto_ed
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_f0} :catch_19b
    .catch Ljava/lang/InterruptedException; {:try_start_93 .. :try_end_f0} :catch_204
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_f0} :catch_201
    .catchall {:try_start_93 .. :try_end_f0} :catchall_1fd

    move v2, v0

    move v0, v1

    .line 350
    :cond_f2
    if-eqz v3, :cond_100

    if-eqz v2, :cond_100

    .line 352
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 353
    const-string v1, "SilentInstallService"

    const-string v2, "SilentInstallService process destroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_100
    :goto_100
    const-string v1, "SilentInstallService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SilentInstallService finished. \u7ed3\u679c:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v1, "AppInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "silent install finished, \u7ed3\u679c:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v1, Landroid/content/Intent;

    const-string v2, "duoku.gamesearch.intent.action.PACKAGE_ADDED_AUTO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    const-string v2, "package_AUTO"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v2, "file_AUTO"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v2, "status_AUTO"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    invoke-static {v1}, Lcom/duoku/platform/download/utils/AppUtil;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1f

    :cond_143
    move v1, v0

    .line 289
    goto/16 :goto_b7

    .line 298
    :cond_146
    :try_start_146
    sget-boolean v8, Lcom/duoku/platform/download/SilentInstallService;->DEBUG:Z

    if-eqz v8, :cond_15e

    .line 300
    const-string v8, "AppInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "result:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_15e
    const-string v8, "SilentInstallService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "readLine "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v8, "success"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_cd

    move v1, v2

    .line 306
    goto/16 :goto_d4

    .line 316
    :cond_181
    sget-boolean v8, Lcom/duoku/platform/download/SilentInstallService;->DEBUG:Z

    if-eqz v8, :cond_e4

    .line 318
    const-string v8, "AppInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "error:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_199
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_199} :catch_19b
    .catch Ljava/lang/InterruptedException; {:try_start_146 .. :try_end_199} :catch_204
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_199} :catch_201
    .catchall {:try_start_146 .. :try_end_199} :catchall_1fd

    goto/16 :goto_e4

    .line 329
    :catch_19b
    move-exception v1

    move v2, v0

    .line 331
    :goto_19d
    :try_start_19d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 332
    const-string v6, "SilentInstallService"

    const-string v7, "IOException "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a7
    .catchall {:try_start_19d .. :try_end_1a7} :catchall_1ed

    .line 350
    if-eqz v3, :cond_100

    if-eqz v2, :cond_100

    .line 352
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 353
    const-string v1, "SilentInstallService"

    const-string v2, "SilentInstallService process destroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_100

    .line 336
    :catch_1b7
    move-exception v1

    .line 338
    :goto_1b8
    :try_start_1b8
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 339
    const-string v6, "SilentInstallService"

    const-string v7, "InterruptedException "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c2
    .catchall {:try_start_1b8 .. :try_end_1c2} :catchall_1ed

    .line 350
    if-eqz v3, :cond_100

    if-eqz v2, :cond_100

    .line 352
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 353
    const-string v1, "SilentInstallService"

    const-string v2, "SilentInstallService process destroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_100

    .line 342
    :catch_1d2
    move-exception v1

    .line 344
    :goto_1d3
    :try_start_1d3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 346
    const-string v6, "SilentInstallService"

    const-string v7, "Other Exception "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1dd
    .catchall {:try_start_1d3 .. :try_end_1dd} :catchall_1ed

    .line 350
    if-eqz v3, :cond_100

    if-eqz v2, :cond_100

    .line 352
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 353
    const-string v1, "SilentInstallService"

    const-string v2, "SilentInstallService process destroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_100

    .line 349
    :catchall_1ed
    move-exception v0

    .line 350
    :goto_1ee
    if-eqz v3, :cond_1fc

    if-eqz v2, :cond_1fc

    .line 352
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 353
    const-string v1, "SilentInstallService"

    const-string v2, "SilentInstallService process destroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_1fc
    throw v0

    .line 349
    :catchall_1fd
    move-exception v1

    move v2, v0

    move-object v0, v1

    goto :goto_1ee

    .line 342
    :catch_201
    move-exception v1

    move v2, v0

    goto :goto_1d3

    .line 336
    :catch_204
    move-exception v1

    move v2, v0

    goto :goto_1b8

    .line 329
    :catch_207
    move-exception v1

    goto :goto_19d

    :cond_209
    move v1, v0

    goto/16 :goto_ed
.end method

.method private installSilent(Lcom/duoku/platform/download/mode/InstallPacket;)V
    .registers 2

    .prologue
    .line 213
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 118
    const-string v0, "AppInstaller"

    const-string v1, "[SilentInstallService#onCreate]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Lcom/duoku/platform/download/SilentInstallService$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/SilentInstallService$1;-><init>(Lcom/duoku/platform/download/SilentInstallService;)V

    iput-object v0, p0, Lcom/duoku/platform/download/SilentInstallService;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/duoku/platform/download/SilentInstallService;->mInstallThread:Landroid/os/HandlerThread;

    .line 133
    iget-object v0, p0, Lcom/duoku/platform/download/SilentInstallService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 134
    new-instance v0, Lcom/duoku/platform/download/SilentInstallService$2;

    iget-object v1, p0, Lcom/duoku/platform/download/SilentInstallService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/download/SilentInstallService$2;-><init>(Lcom/duoku/platform/download/SilentInstallService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/duoku/platform/download/SilentInstallService;->mInstallHandler:Landroid/os/Handler;

    .line 159
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 78
    sget-boolean v0, Lcom/duoku/platform/download/SilentInstallService;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 80
    const-string v0, "AppInstaller"

    const-string v1, "destory called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "duoku.gamesearch.intent.action.INSTALL_SERVICE_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppUtil;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    iget-object v0, p0, Lcom/duoku/platform/download/SilentInstallService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 86
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 87
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    .prologue
    .line 92
    const-string v0, "AppInstaller"

    const-string v1, "[SilentInstallService#onStartCommand]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-eqz p1, :cond_3b

    .line 96
    const-string v0, "arg_pack"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/InstallPacket;

    .line 97
    const-string v1, "AppInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStartCommand data:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/duoku/platform/download/SilentInstallService;->mInstallHandler:Landroid/os/Handler;

    if-eqz v1, :cond_40

    .line 100
    iget-object v1, p0, Lcom/duoku/platform/download/SilentInstallService;->mInstallHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 101
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 103
    iget v0, p0, Lcom/duoku/platform/download/SilentInstallService;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/duoku/platform/download/SilentInstallService;->mCount:I

    .line 111
    :cond_3b
    :goto_3b
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 107
    :cond_40
    const-string v0, "AppInstaller"

    const-string v1, "install handler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method
