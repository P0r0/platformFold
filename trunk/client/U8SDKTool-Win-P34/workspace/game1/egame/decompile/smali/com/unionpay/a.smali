.class final Lcom/unionpay/a;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    const-string v1, "extra_download_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/unionpay/utils/UPUtils;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_d4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v2

    const-string v0, ""

    if-eqz v2, :cond_ca

    :try_start_29
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_69
    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_d5

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_73} :catch_74

    goto :goto_69

    :catch_74
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_7c
    :goto_7c
    :try_start_7c
    invoke-static {v0}, Lcom/unionpay/utils/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_dc

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/unionpay/UPPayAssistEx;->checkInstalled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_b6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b6
    .catch Ljava/io/FileNotFoundException; {:try_start_7c .. :try_end_b6} :catch_e4

    :cond_b6
    :goto_b6
    const-string v0, "uppay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "downloadFileUri"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ca
    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->e()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->f()Z

    :cond_d4
    return-void

    :cond_d5
    :try_start_d5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_db} :catch_74

    goto :goto_7c

    :cond_dc
    :try_start_dc
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/utils/b;->c(Ljava/lang/String;)V
    :try_end_e3
    .catch Ljava/io/FileNotFoundException; {:try_start_dc .. :try_end_e3} :catch_e4

    goto :goto_b6

    :catch_e4
    move-exception v0

    goto :goto_b6
.end method
