.class Lmobisocial/omlib/client/ClientAuthUtils$5;
.super Ljava/lang/Object;
.source "ClientAuthUtils.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientAuthUtils;->connectIdentity(Lmobisocial/longdan/LDProtocols$LDIdentity;)V
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
        "Lmobisocial/longdan/LDProtocols$LDSimpleResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientAuthUtils;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientAuthUtils;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientAuthUtils;

    .prologue
    .line 217
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils$5;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lmobisocial/longdan/exception/LongdanException;)V
    .registers 4
    .param p1, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 226
    const-string v0, "Omlib"

    const-string v1, "Identity registration failed"

    invoke-static {v0, v1, p1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    return-void
.end method

.method public bridge synthetic onResponse(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .registers 2

    .prologue
    .line 217
    check-cast p1, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    invoke-virtual {p0, p1}, Lmobisocial/omlib/client/ClientAuthUtils$5;->onResponse(Lmobisocial/longdan/LDProtocols$LDSimpleResponse;)V

    return-void
.end method

.method public onResponse(Lmobisocial/longdan/LDProtocols$LDSimpleResponse;)V
    .registers 4
    .param p1, "response"    # Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    .prologue
    .line 221
    const-string v0, "Omlib"

    const-string v1, "Successfully posted identity!"

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method
