.class Lmobisocial/longdan/net/WsRpcConnection$11$1$1;
.super Ljava/lang/Object;
.source "WsRpcConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/longdan/net/WsRpcConnection$11$1;->onResponse(Lmobisocial/longdan/LDProtocols$LDCompleteChallengeResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lmobisocial/longdan/net/WsRpcConnection$11$1;

.field final synthetic val$ccl:Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

.field final synthetic val$response:Lmobisocial/longdan/LDProtocols$LDCompleteChallengeResponse;


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnection$11$1;Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;Lmobisocial/longdan/LDProtocols$LDCompleteChallengeResponse;)V
    .registers 4
    .param p1, "this$2"    # Lmobisocial/longdan/net/WsRpcConnection$11$1;

    .prologue
    .line 641
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$11$1$1;, "Lmobisocial/longdan/net/WsRpcConnection$11$1$1;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection$11$1$1;->this$2:Lmobisocial/longdan/net/WsRpcConnection$11$1;

    iput-object p2, p0, Lmobisocial/longdan/net/WsRpcConnection$11$1$1;->val$ccl:Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

    iput-object p3, p0, Lmobisocial/longdan/net/WsRpcConnection$11$1$1;->val$response:Lmobisocial/longdan/LDProtocols$LDCompleteChallengeResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 645
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$11$1$1;, "Lmobisocial/longdan/net/WsRpcConnection$11$1$1;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$11$1$1;->val$ccl:Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection$11$1$1;->val$response:Lmobisocial/longdan/LDProtocols$LDCompleteChallengeResponse;

    iget-object v1, v1, Lmobisocial/longdan/LDProtocols$LDCompleteChallengeResponse;->LocationIndicator:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;->onClosestCluster(Ljava/lang/String;)V

    .line 646
    return-void
.end method
