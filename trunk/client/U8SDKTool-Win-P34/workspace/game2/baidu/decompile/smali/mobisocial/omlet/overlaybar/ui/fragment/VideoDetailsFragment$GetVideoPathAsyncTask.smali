.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;
.super Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask;
.source "VideoDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetVideoPathAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;


# direct methods
.method public constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;
    .param p2, "callback"    # Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;

    .prologue
    .line 680
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    .line 681
    invoke-direct {p0, p2}, Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask;-><init>(Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;)V

    .line 682
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 678
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 687
    :try_start_0
    new-instance v2, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;

    invoke-direct {v2}, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;-><init>()V

    .line 688
    .local v2, "getDownloadTicketRequest":Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;
    const/4 v3, 0x0

    iput-boolean v3, v2, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;->PreferInsecure:Z

    .line 689
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_BlobLink:Ljava/lang/String;

    iput-object v3, v2, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;->BlobLinkString:Ljava/lang/String;

    .line 690
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v3

    invoke-virtual {v3}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v3

    invoke-virtual {v3}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v3

    const-class v4, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;

    invoke-virtual {v3, v2, v4}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v3

    check-cast v3, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;

    iget-object v0, v3, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;->BlobDownloadTicket:Lmobisocial/longdan/LDProtocols$LDBlobDownloadTicket;

    .line 691
    .local v0, "downloadTicket":Lmobisocial/longdan/LDProtocols$LDBlobDownloadTicket;
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v4, v0, Lmobisocial/longdan/LDProtocols$LDBlobDownloadTicket;->Url:Ljava/lang/String;

    iput-object v4, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoDownloadUrl:Ljava/lang/String;

    .line 692
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_HlsLink:Ljava/lang/String;

    if-nez v3, :cond_3c

    .line 693
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoDownloadUrl:Ljava/lang/String;

    iput-object v4, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPath:Ljava/lang/String;

    .line 708
    .end local v0    # "downloadTicket":Lmobisocial/longdan/LDProtocols$LDBlobDownloadTicket;
    .end local v2    # "getDownloadTicketRequest":Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;
    :goto_3a
    const/4 v3, 0x0

    return-object v3

    .line 695
    .restart local v0    # "downloadTicket":Lmobisocial/longdan/LDProtocols$LDBlobDownloadTicket;
    .restart local v2    # "getDownloadTicketRequest":Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;
    :cond_3c
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_HlsLink:Ljava/lang/String;

    iput-object v4, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPath:Ljava/lang/String;

    .line 696
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_UsingHlsLink:Z
    :try_end_49
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_49} :catch_4a

    goto :goto_3a

    .line 698
    .end local v0    # "downloadTicket":Lmobisocial/longdan/LDProtocols$LDBlobDownloadTicket;
    .end local v2    # "getDownloadTicketRequest":Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;
    :catch_4a
    move-exception v1

    .line 699
    .local v1, "e":Lmobisocial/longdan/exception/LongdanException;
    const-string v3, "VideoDetails"

    const-string v4, "Error "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask$1;

    invoke-direct {v4, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3a
.end method
