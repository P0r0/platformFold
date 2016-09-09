.class Lmobisocial/omlib/client/ClientAuthUtils$3;
.super Ljava/lang/Object;
.source "ClientAuthUtils.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientAuthUtils;->confirmAuthCodeBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientAuthUtils;

.field final synthetic val$pushWaiter:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientAuthUtils;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientAuthUtils;

    .prologue
    .line 166
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils$3;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientAuthUtils$3;->val$pushWaiter:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushReceived(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .registers 3
    .param p1, "request"    # Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    .prologue
    .line 170
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils$3;->val$pushWaiter:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 171
    return-void
.end method
