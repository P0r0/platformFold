.class Lmobisocial/omlib/client/ClientAuthUtils$4;
.super Ljava/lang/Object;
.source "ClientAuthUtils.java"

# interfaces
.implements Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;


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

.field final synthetic val$exceptions:[Lmobisocial/longdan/exception/LongdanException;

.field final synthetic val$pushWaiter:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientAuthUtils;Ljava/util/concurrent/CountDownLatch;[Lmobisocial/longdan/exception/LongdanException;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientAuthUtils;

    .prologue
    .line 186
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils$4;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientAuthUtils$4;->val$pushWaiter:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lmobisocial/omlib/client/ClientAuthUtils$4;->val$exceptions:[Lmobisocial/longdan/exception/LongdanException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountConnected(Ljava/lang/String;)V
    .registers 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils$4;->val$pushWaiter:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 191
    return-void
.end method

.method public onException(Lmobisocial/longdan/exception/LongdanException;)V
    .registers 4
    .param p1, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 195
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils$4;->val$exceptions:[Lmobisocial/longdan/exception/LongdanException;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 196
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils$4;->val$pushWaiter:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 197
    return-void
.end method
