.class Lmobisocial/omlib/client/LongdanClient$3;
.super Ljava/lang/Object;
.source "LongdanClient.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener",
        "<",
        "Lmobisocial/longdan/LDProtocols$LDDeviceRegistrationStateChangedPush;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanClient;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanClient;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    .line 338
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanClient$3;->this$0:Lmobisocial/omlib/client/LongdanClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushReceived(Lmobisocial/longdan/LDProtocols$LDDeviceRegistrationStateChangedPush;)V
    .registers 3
    .param p1, "request"    # Lmobisocial/longdan/LDProtocols$LDDeviceRegistrationStateChangedPush;

    .prologue
    .line 342
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient$3;->this$0:Lmobisocial/omlib/client/LongdanClient;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v0}, Lmobisocial/omlib/client/ClientAuthUtils;->refreshAccountDetails()V

    .line 343
    return-void
.end method

.method public bridge synthetic onPushReceived(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .registers 2

    .prologue
    .line 338
    check-cast p1, Lmobisocial/longdan/LDProtocols$LDDeviceRegistrationStateChangedPush;

    invoke-virtual {p0, p1}, Lmobisocial/omlib/client/LongdanClient$3;->onPushReceived(Lmobisocial/longdan/LDProtocols$LDDeviceRegistrationStateChangedPush;)V

    return-void
.end method
