.class Lmobisocial/omlib/client/ClientFeedUtils$11;
.super Ljava/lang/Object;
.source "ClientFeedUtils.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientFeedUtils;->sendActiveStatusIndicator(JLmobisocial/omlib/api/OmletFeedApi$StatusIndicator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientFeedUtils;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientFeedUtils;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientFeedUtils;

    .prologue
    .line 836
    iput-object p1, p0, Lmobisocial/omlib/client/ClientFeedUtils$11;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lmobisocial/longdan/exception/LongdanException;)V
    .registers 4
    .param p1, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 845
    const-string v0, "ClientFeedUtils"

    const-string v1, "Sending realtime update failed"

    invoke-static {v0, v1, p1}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 846
    return-void
.end method

.method public onResponse(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .registers 2
    .param p1, "response"    # Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    .prologue
    .line 841
    return-void
.end method
