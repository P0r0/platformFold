.class Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1;
.super Landroid/os/AsyncTask;
.source "WatchVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;->run(Lmobisocial/omlib/api/OmletApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;

.field final synthetic val$omletApi:Lmobisocial/omlib/api/OmletApi;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;Lmobisocial/omlib/api/OmletApi;)V
    .registers 3
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;

    .prologue
    .line 96
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 96
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 107
    :try_start_0
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;

    # getter for: Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_HlsLink:Ljava/lang/String;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->access$000(Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 108
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;

    # getter for: Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_HlsLink:Ljava/lang/String;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->access$000(Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_Url:Ljava/lang/String;
    invoke-static {v4, v5}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->access$102(Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    :goto_19
    const/4 v4, 0x0

    return-object v4

    .line 110
    :cond_1b
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    check-cast v3, Lmobisocial/omlib/service/OmlibService;

    .line 111
    .local v3, "omlibService":Lmobisocial/omlib/service/OmlibService;
    new-instance v2, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;

    invoke-direct {v2}, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;-><init>()V

    .line 112
    .local v2, "getDownloadTicketRequest":Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;
    const/4 v4, 0x0

    iput-boolean v4, v2, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;->PreferInsecure:Z

    .line 113
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;

    # getter for: Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_BlobLink:Ljava/lang/String;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->access$200(Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;->BlobLinkString:Ljava/lang/String;

    .line 114
    invoke-virtual {v3}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v4

    const-class v5, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;

    invoke-virtual {v4, v2, v5}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v4

    check-cast v4, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;

    iget-object v0, v4, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;->BlobDownloadTicket:Lmobisocial/longdan/LDProtocols$LDBlobDownloadTicket;

    .line 115
    .local v0, "downloadTicket":Lmobisocial/longdan/LDProtocols$LDBlobDownloadTicket;
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;

    iget-object v5, v0, Lmobisocial/longdan/LDProtocols$LDBlobDownloadTicket;->Url:Ljava/lang/String;

    # setter for: Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_Url:Ljava/lang/String;
    invoke-static {v4, v5}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->access$102(Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4c
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_19

    .line 117
    .end local v0    # "downloadTicket":Lmobisocial/longdan/LDProtocols$LDBlobDownloadTicket;
    .end local v2    # "getDownloadTicketRequest":Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;
    .end local v3    # "omlibService":Lmobisocial/omlib/service/OmlibService;
    :catch_4d
    move-exception v1

    .line 118
    .local v1, "e":Lmobisocial/longdan/exception/LongdanException;
    const-string v4, "WatchVideoActivity"

    const-string v5, "Error "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;

    new-instance v5, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1$1;

    invoke-direct {v5, p0}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1$1;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1;)V

    invoke-virtual {v4, v5}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_19
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 96
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 132
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_VideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;

    # getter for: Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_Url:Ljava/lang/String;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->access$100(Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 133
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_VideoView:Landroid/widget/VideoView;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1$2;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1$2;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 143
    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->showDialog()V

    .line 101
    return-void
.end method
