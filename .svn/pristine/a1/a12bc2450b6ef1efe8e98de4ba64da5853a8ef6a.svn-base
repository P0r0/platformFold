.class Lmobisocial/longdan/net/WsRpcConnection$11;
.super Ljava/lang/Object;
.source "WsRpcConnection.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/longdan/net/WsRpcConnection;->doHelloChallenge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse",
        "<",
        "Lmobisocial/longdan/LDProtocols$LDHelloChallengeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnection;

.field final synthetic val$challengeBytes:[B

.field final synthetic val$sharedSecret:[B


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnection;[B[B)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 589
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$11;, "Lmobisocial/longdan/net/WsRpcConnection$11;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    iput-object p2, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->val$challengeBytes:[B

    iput-object p3, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->val$sharedSecret:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method doChallengeFailure(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 679
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$11;, "Lmobisocial/longdan/net/WsRpcConnection$11;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to complete challenge/response"

    invoke-static {v0, v1, p1}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 680
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v0}, Lmobisocial/longdan/net/WsRpcConnection;->disconnect()V

    .line 681
    return-void
.end method

.method public onException(Lmobisocial/longdan/exception/LongdanException;)V
    .registers 2
    .param p1, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 675
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$11;, "Lmobisocial/longdan/net/WsRpcConnection$11;"
    invoke-virtual {p0, p1}, Lmobisocial/longdan/net/WsRpcConnection$11;->doChallengeFailure(Ljava/lang/Exception;)V

    .line 676
    return-void
.end method

.method public onResponse(Lmobisocial/longdan/LDProtocols$LDHelloChallengeResponse;)V
    .registers 13
    .param p1, "response"    # Lmobisocial/longdan/LDProtocols$LDHelloChallengeResponse;

    .prologue
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$11;, "Lmobisocial/longdan/net/WsRpcConnection$11;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 593
    iget-object v6, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mDisposed:Z
    invoke-static {v6}, Lmobisocial/longdan/net/WsRpcConnection;->access$100(Lmobisocial/longdan/net/WsRpcConnection;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 594
    iget-object v6, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This connection was disposed. Stack trace:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :goto_2e
    return-void

    .line 597
    :cond_2f
    iget-object v4, p1, Lmobisocial/longdan/LDProtocols$LDHelloChallengeResponse;->SourceChallenge:[B

    .line 598
    .local v4, "serverChallenge":[B
    array-length v6, v4

    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->val$challengeBytes:[B

    array-length v7, v7

    if-ge v6, v7, :cond_42

    .line 599
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Challenge too small"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lmobisocial/longdan/net/WsRpcConnection$11;->doChallengeFailure(Ljava/lang/Exception;)V

    goto :goto_2e

    .line 601
    :cond_42
    iget-object v6, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->val$sharedSecret:[B

    array-length v6, v6

    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->val$challengeBytes:[B

    array-length v7, v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    new-array v5, v6, [B

    .line 602
    .local v5, "toHash":[B
    aput-byte v10, v5, v9

    .line 603
    iget-object v6, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->val$sharedSecret:[B

    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->val$sharedSecret:[B

    array-length v7, v7

    invoke-static {v6, v9, v5, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 604
    iget-object v6, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->val$challengeBytes:[B

    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->val$sharedSecret:[B

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->val$challengeBytes:[B

    array-length v8, v8

    invoke-static {v6, v9, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 607
    :try_start_64
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_69
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_64 .. :try_end_69} :catch_a9

    move-result-object v1

    .line 612
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 613
    .local v3, "expected":[B
    iget-object v6, p1, Lmobisocial/longdan/LDProtocols$LDHelloChallengeResponse;->DestinationResponse:[B

    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_ae

    .line 614
    iget-object v6, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AUTHERROR - expected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " got: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lmobisocial/longdan/LDProtocols$LDHelloChallengeResponse;->DestinationResponse:[B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "BadAuthentication"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lmobisocial/longdan/net/WsRpcConnection$11;->doChallengeFailure(Ljava/lang/Exception;)V

    goto :goto_2e

    .line 608
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "expected":[B
    :catch_a9
    move-exception v2

    .line 609
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0, v2}, Lmobisocial/longdan/net/WsRpcConnection$11;->doChallengeFailure(Ljava/lang/Exception;)V

    goto :goto_2e

    .line 617
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v3    # "expected":[B
    :cond_ae
    iget-object v6, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->val$sharedSecret:[B

    array-length v6, v6

    array-length v7, v4

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    new-array v5, v6, [B

    .line 618
    const/4 v6, 0x2

    aput-byte v6, v5, v9

    .line 619
    iget-object v6, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->val$sharedSecret:[B

    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->val$sharedSecret:[B

    array-length v7, v7

    invoke-static {v6, v9, v5, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    iget-object v6, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->val$sharedSecret:[B

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    array-length v7, v4

    invoke-static {v4, v9, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 621
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 622
    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 623
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDCompleteChallengeRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDCompleteChallengeRequest;-><init>()V

    .line 624
    .local v0, "completeChallengeReq":Lmobisocial/longdan/LDProtocols$LDCompleteChallengeRequest;
    iput-object v3, v0, Lmobisocial/longdan/LDProtocols$LDCompleteChallengeRequest;->SourceResponse:[B

    .line 625
    iget-object v6, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mAppKeyId:[B
    invoke-static {v6}, Lmobisocial/longdan/net/WsRpcConnection;->access$1500(Lmobisocial/longdan/net/WsRpcConnection;)[B

    move-result-object v6

    if-eqz v6, :cond_110

    .line 626
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 627
    array-length v6, v4

    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mAppKeySecret:[B
    invoke-static {v7}, Lmobisocial/longdan/net/WsRpcConnection;->access$1600(Lmobisocial/longdan/net/WsRpcConnection;)[B

    move-result-object v7

    array-length v7, v7

    add-int/2addr v6, v7

    new-array v5, v6, [B

    .line 628
    iget-object v6, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mAppKeySecret:[B
    invoke-static {v6}, Lmobisocial/longdan/net/WsRpcConnection;->access$1600(Lmobisocial/longdan/net/WsRpcConnection;)[B

    move-result-object v6

    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mAppKeySecret:[B
    invoke-static {v7}, Lmobisocial/longdan/net/WsRpcConnection;->access$1600(Lmobisocial/longdan/net/WsRpcConnection;)[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v6, v9, v5, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 629
    iget-object v6, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mAppKeySecret:[B
    invoke-static {v6}, Lmobisocial/longdan/net/WsRpcConnection;->access$1600(Lmobisocial/longdan/net/WsRpcConnection;)[B

    move-result-object v6

    array-length v6, v6

    array-length v7, v4

    invoke-static {v4, v9, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 630
    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    iput-object v6, v0, Lmobisocial/longdan/LDProtocols$LDCompleteChallengeRequest;->AppChallengeResponse:[B

    .line 632
    :cond_110
    iget-object v6, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v6, v0}, Lmobisocial/longdan/net/WsRpcConnection;->populateDeviceProperties(Lmobisocial/longdan/LDProtocols$LDCompleteChallengeRequest;)V

    .line 633
    iget-object v6, p0, Lmobisocial/longdan/net/WsRpcConnection$11;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    const-class v7, Lmobisocial/longdan/LDProtocols$LDCompleteChallengeResponse;

    new-instance v8, Lmobisocial/longdan/net/WsRpcConnection$11$1;

    invoke-direct {v8, p0}, Lmobisocial/longdan/net/WsRpcConnection$11$1;-><init>(Lmobisocial/longdan/net/WsRpcConnection$11;)V

    invoke-virtual {v6, v0, v7, v8}, Lmobisocial/longdan/net/WsRpcConnection;->callCore(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V

    goto/16 :goto_2e
.end method

.method public bridge synthetic onResponse(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .registers 2

    .prologue
    .line 589
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$11;, "Lmobisocial/longdan/net/WsRpcConnection$11;"
    check-cast p1, Lmobisocial/longdan/LDProtocols$LDHelloChallengeResponse;

    invoke-virtual {p0, p1}, Lmobisocial/longdan/net/WsRpcConnection$11;->onResponse(Lmobisocial/longdan/LDProtocols$LDHelloChallengeResponse;)V

    return-void
.end method
