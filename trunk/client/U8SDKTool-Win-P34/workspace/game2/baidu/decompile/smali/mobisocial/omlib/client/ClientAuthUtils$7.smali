.class Lmobisocial/omlib/client/ClientAuthUtils$7;
.super Ljava/lang/Object;
.source "ClientAuthUtils.java"

# interfaces
.implements Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientAuthUtils;->confirmPinForIdentityBlocking(Lmobisocial/longdan/LDProtocols$LDIdentity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientAuthUtils;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientAuthUtils;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientAuthUtils;

    .prologue
    .line 320
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils$7;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientAuthUtils$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountConnected(Ljava/lang/String;)V
    .registers 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 325
    return-void
.end method

.method public onException(Lmobisocial/longdan/exception/LongdanException;)V
    .registers 3
    .param p1, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 329
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 330
    return-void
.end method
