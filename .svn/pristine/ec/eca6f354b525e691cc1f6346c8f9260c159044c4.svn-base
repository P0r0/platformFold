.class Lcom/squareup/okhttp/ws/WebSocketCall$1;
.super Ljava/lang/Object;
.source "WebSocketCall.java"

# interfaces
.implements Lcom/squareup/okhttp/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/ws/WebSocketCall;->enqueue(Lcom/squareup/okhttp/ws/WebSocketListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/ws/WebSocketCall;

.field final synthetic val$listener:Lcom/squareup/okhttp/ws/WebSocketListener;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/ws/WebSocketCall;Lcom/squareup/okhttp/ws/WebSocketListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/squareup/okhttp/ws/WebSocketCall;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/squareup/okhttp/ws/WebSocketCall$1;->this$0:Lcom/squareup/okhttp/ws/WebSocketCall;

    iput-object p2, p0, Lcom/squareup/okhttp/ws/WebSocketCall$1;->val$listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    .registers 5
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/squareup/okhttp/ws/WebSocketCall$1;->val$listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/squareup/okhttp/ws/WebSocketListener;->onFailure(Ljava/io/IOException;Lcom/squareup/okhttp/Response;)V

    .line 108
    return-void
.end method

.method public onResponse(Lcom/squareup/okhttp/Response;)V
    .registers 5
    .param p1, "response"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/ws/WebSocketCall$1;->this$0:Lcom/squareup/okhttp/ws/WebSocketCall;

    iget-object v2, p0, Lcom/squareup/okhttp/ws/WebSocketCall$1;->val$listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    # invokes: Lcom/squareup/okhttp/ws/WebSocketCall;->createWebSocket(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/ws/WebSocketListener;)V
    invoke-static {v1, p1, v2}, Lcom/squareup/okhttp/ws/WebSocketCall;->access$000(Lcom/squareup/okhttp/ws/WebSocketCall;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/ws/WebSocketListener;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 104
    :goto_7
    return-void

    .line 101
    :catch_8
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/squareup/okhttp/ws/WebSocketCall$1;->val$listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    invoke-interface {v1, v0, p1}, Lcom/squareup/okhttp/ws/WebSocketListener;->onFailure(Ljava/io/IOException;Lcom/squareup/okhttp/Response;)V

    goto :goto_7
.end method
