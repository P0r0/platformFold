.class Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;
.super Ljava/lang/Object;
.source "ClientAuthUtils.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/ClientAuthUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthenticationCompletionHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse",
        "<",
        "Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final mAuthenicationCompleteListener:Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;

.field final synthetic this$0:Lmobisocial/omlib/client/ClientAuthUtils;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/ClientAuthUtils;Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientAuthUtils;
    .param p2, "listener"    # Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;

    .prologue
    .line 396
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p2, p0, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;->mAuthenicationCompleteListener:Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;

    .line 398
    return-void
.end method


# virtual methods
.method public onException(Lmobisocial/longdan/exception/LongdanException;)V
    .registers 3
    .param p1, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 438
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;->mAuthenicationCompleteListener:Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;

    if-eqz v0, :cond_9

    .line 439
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;->mAuthenicationCompleteListener:Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;

    invoke-interface {v0, p1}, Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;->onException(Lmobisocial/longdan/exception/LongdanException;)V

    .line 440
    :cond_9
    return-void
.end method

.method public onResponse(Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)V
    .registers 6
    .param p1, "responseContainer"    # Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    .prologue
    .line 402
    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;->AccountDetails:Lmobisocial/longdan/LDProtocols$LDAccountDetails;

    .line 403
    .local v0, "response":Lmobisocial/longdan/LDProtocols$LDAccountDetails;
    const-string v1, "Omlib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting account details "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    if-eqz v0, :cond_52

    iget-object v1, v0, Lmobisocial/longdan/LDProtocols$LDAccountDetails;->Account:Ljava/lang/String;

    if-eqz v1, :cond_52

    .line 405
    iget-object v1, v0, Lmobisocial/longdan/LDProtocols$LDAccountDetails;->Account:Ljava/lang/String;

    iget-object v2, p0, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v2, v2, Lmobisocial/omlib/client/ClientAuthUtils;->mAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 406
    const-string v1, "Omlib"

    const-string v2, "Duplicate account info received"

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;->mAuthenicationCompleteListener:Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;

    if-eqz v1, :cond_3e

    .line 408
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;->mAuthenicationCompleteListener:Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;

    iget-object v2, v0, Lmobisocial/longdan/LDProtocols$LDAccountDetails;->Account:Ljava/lang/String;

    invoke-interface {v1, v2}, Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;->onAccountConnected(Ljava/lang/String;)V

    .line 434
    :cond_3e
    :goto_3e
    return-void

    .line 411
    :cond_3f
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v2, v0, Lmobisocial/longdan/LDProtocols$LDAccountDetails;->Account:Ljava/lang/String;

    iput-object v2, v1, Lmobisocial/omlib/client/ClientAuthUtils;->mAccount:Ljava/lang/String;

    .line 412
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v1, v1, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v2, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler$1;

    invoke-direct {v2, p0, p1, v0}, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler$1;-><init>(Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;Lmobisocial/longdan/LDProtocols$LDAccountDetails;)V

    invoke-virtual {v1, v2}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThread(Lmobisocial/omlib/db/DatabaseRunnable;)V

    goto :goto_3e

    .line 430
    :cond_52
    const-string v1, "Omlib"

    const-string v2, "Authentication verification failed."

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;->mAuthenicationCompleteListener:Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;

    if-eqz v1, :cond_3e

    .line 432
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;->mAuthenicationCompleteListener:Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;

    new-instance v2, Lmobisocial/omlib/exception/AuthenticationException;

    const-string v3, "Verification failed"

    invoke-direct {v2, v3}, Lmobisocial/omlib/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;->onException(Lmobisocial/longdan/exception/LongdanException;)V

    goto :goto_3e
.end method

.method public bridge synthetic onResponse(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .registers 2

    .prologue
    .line 392
    check-cast p1, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    invoke-virtual {p0, p1}, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;->onResponse(Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)V

    return-void
.end method
