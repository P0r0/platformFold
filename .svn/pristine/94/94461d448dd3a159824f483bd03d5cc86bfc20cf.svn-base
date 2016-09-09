.class Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->onClose(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;

.field final synthetic val$code:I

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$writeCloseResponse:Z


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;Z)V
    .registers 7
    .param p1, "this$1"    # Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;->this$1:Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;

    iput p4, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;->val$code:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;->val$reason:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;->val$writeCloseResponse:Z

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .registers 5

    .prologue
    .line 88
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;->this$1:Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->this$0:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    iget v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;->val$code:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;->val$reason:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;->val$writeCloseResponse:Z

    # invokes: Lcom/squareup/okhttp/internal/ws/RealWebSocket;->peerClose(ILjava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->access$400(Lcom/squareup/okhttp/internal/ws/RealWebSocket;ILjava/lang/String;Z)V

    .line 89
    return-void
.end method
