.class Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3$3;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3$3;->this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3$3;->this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;
    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;->access$0(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;)Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "\u63d2\u4ef6\u4e0b\u8f7d\u5931\u8d25\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-virtual {v0, v1, v2}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->chageState(ILjava/lang/String;)V

    .line 257
    return-void
.end method
