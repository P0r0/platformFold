.class Lmobisocial/longdan/net/WsRpcConnection$CloseSocketTask;
.super Ljava/util/TimerTask;
.source "WsRpcConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/net/WsRpcConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseSocketTask"
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnection;


# direct methods
.method private constructor <init>(Lmobisocial/longdan/net/WsRpcConnection;)V
    .registers 2

    .prologue
    .line 530
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$CloseSocketTask;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.CloseSocketTask;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection$CloseSocketTask;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/net/WsRpcConnection$1;)V
    .registers 3
    .param p1, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;
    .param p2, "x1"    # Lmobisocial/longdan/net/WsRpcConnection$1;

    .prologue
    .line 530
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$CloseSocketTask;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.CloseSocketTask;"
    invoke-direct {p0, p1}, Lmobisocial/longdan/net/WsRpcConnection$CloseSocketTask;-><init>(Lmobisocial/longdan/net/WsRpcConnection;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 534
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$CloseSocketTask;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.CloseSocketTask;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$CloseSocketTask;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v0}, Lmobisocial/longdan/net/WsRpcConnection;->disconnect()V

    .line 535
    return-void
.end method
