.class Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;
.super Ljava/lang/Thread;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->getDownloadUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    .line 196
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;)Lcom/nearme/platform/opensdk/pay/download/DownloadManager;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 199
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    const-string v1, "content-type"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$4(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://nativepay.keke.cn/plugin/post/getappdownloadurl"

    invoke-static {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/util/http/MyHttpClient;->getUrlConnecttion(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 203
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 204
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 205
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 206
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 207
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 208
    const-string v1, "content-type"

    const-string v2, "application/json; charset=UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 210
    const-string v2, "hail{\"createtime\":\"\",\"ext1\":\"\",\"ext2\":\"\",\"sign\":\"\",\"status\":\"0\",\"type\":\"0\",\"url\":\"\"}ng"

    .line 211
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 212
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 213
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 215
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 216
    const/16 v2, 0xc8

    if-ne v2, v1, :cond_bf

    .line 217
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 218
    const/16 v2, 0x3f4

    new-array v2, v2, [B

    .line 219
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 221
    :goto_5e
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a7

    .line 225
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mDownloadUrl is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nearme/platform/opensdk/pay/download/util/LogUtil;->d(Ljava/lang/String;)V

    .line 227
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mState:I
    invoke-static {v4}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$5(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)I

    move-result v4

    if-eq v3, v4, :cond_a0

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mState:I
    invoke-static {v4}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$5(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)I

    move-result v4

    if-eq v3, v4, :cond_a0

    .line 228
    iget-object v3, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$2(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3$1;

    invoke-direct {v4, p0, v2}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3$1;-><init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    :cond_a0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 249
    :goto_a3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 260
    :goto_a6
    return-void

    .line 222
    :cond_a7
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_ab} :catch_ac

    goto :goto_5e

    .line 252
    :catch_ac
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 253
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$2(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3$3;

    invoke-direct {v1, p0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3$3;-><init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a6

    .line 242
    :cond_bf
    :try_start_bf
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$2(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3$2;

    invoke-direct {v2, p0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3$2;-><init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_cd} :catch_ac

    goto :goto_a3
.end method
