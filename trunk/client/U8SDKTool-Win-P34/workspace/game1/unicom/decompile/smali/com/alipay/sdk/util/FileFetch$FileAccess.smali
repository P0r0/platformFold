.class final Lcom/alipay/sdk/util/FileFetch$FileAccess;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/util/FileFetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FileAccess"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/sdk/util/FileFetch;

.field private b:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/util/FileFetch;)V
    .registers 5

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/sdk/util/FileFetch$FileAccess;->a:Lcom/alipay/sdk/util/FileFetch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {p1}, Lcom/alipay/sdk/util/FileFetch;->a(Lcom/alipay/sdk/util/FileFetch;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/alipay/sdk/util/FileFetch$FileAccess;->b:Ljava/io/FileOutputStream;
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_11} :catch_12

    .line 164
    :goto_11
    return-void

    .line 160
    :catch_12
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_11
.end method


# virtual methods
.method public declared-synchronized a([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/sdk/util/FileFetch$FileAccess;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 169
    monitor-exit p0

    return p3

    .line 168
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/util/FileFetch$FileAccess;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 177
    :goto_5
    return-void

    .line 175
    :catch_6
    move-exception v0

    goto :goto_5
.end method