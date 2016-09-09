.class final Lcom/bbk/payment/selfupdate/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:I

.field private final synthetic h:I


# direct methods
.method constructor <init>(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9

    iput-object p1, p0, Lcom/bbk/payment/selfupdate/i;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    iput p2, p0, Lcom/bbk/payment/selfupdate/i;->b:I

    iput-object p3, p0, Lcom/bbk/payment/selfupdate/i;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/bbk/payment/selfupdate/i;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/bbk/payment/selfupdate/i;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/bbk/payment/selfupdate/i;->f:Ljava/lang/String;

    iput p7, p0, Lcom/bbk/payment/selfupdate/i;->g:I

    iput p8, p0, Lcom/bbk/payment/selfupdate/i;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    const/4 v4, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/i;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->i(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Lcom/bbk/payment/selfupdate/SelfUpdateHelper;

    move-result-object v0

    iget v2, p0, Lcom/bbk/payment/selfupdate/i;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->preDownload(J)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/i;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->o(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1a
    return-void

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/bbk/payment/selfupdate/i;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->i(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Lcom/bbk/payment/selfupdate/SelfUpdateHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/selfupdate/i;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v2}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->e(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/selfupdate/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->appendGreneralInfomation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    const-string v4, "/sdcard/.BBKPayment/"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_a4

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :goto_53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/.BBKPayment/"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bbk/payment/selfupdate/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    new-array v4, v0, [B

    move v0, v1

    :cond_73
    iget-object v1, p0, Lcom/bbk/payment/selfupdate/i;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v1}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->i(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Lcom/bbk/payment/selfupdate/SelfUpdateHelper;

    move-result-object v1

    iget v6, p0, Lcom/bbk/payment/selfupdate/i;->b:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->preDownload(J)Z

    move-result v1

    if-nez v1, :cond_ab

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/i;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->o(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_8c} :catch_8d

    goto :goto_1a

    :catch_8d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "CheckForUpdateTask"

    const-string v1, "IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/i;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->o(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1a

    :cond_a4
    :try_start_a4
    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->delete(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_53

    :cond_ab
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v6, p0, Lcom/bbk/payment/selfupdate/i;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    int-to-float v7, v0

    int-to-float v8, v2

    div-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v6, v7}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->a(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;I)V

    iget-object v6, p0, Lcom/bbk/payment/selfupdate/i;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v6}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->f(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/bbk/payment/selfupdate/i;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v6}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->o(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-gtz v1, :cond_117

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/i;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->o(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "name"

    iget-object v3, p0, Lcom/bbk/payment/selfupdate/i;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "downloadMd5"

    iget-object v3, p0, Lcom/bbk/payment/selfupdate/i;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lowMd5"

    iget-object v3, p0, Lcom/bbk/payment/selfupdate/i;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mode"

    iget v3, p0, Lcom/bbk/payment/selfupdate/i;->g:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v1, p0, Lcom/bbk/payment/selfupdate/i;->h:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/bbk/payment/selfupdate/i;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v1}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->o(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1a

    :cond_117
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v1, p0, Lcom/bbk/payment/selfupdate/i;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v1}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->q(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Z
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_120} :catch_8d

    move-result v1

    if-eqz v1, :cond_73

    goto/16 :goto_1a
.end method
