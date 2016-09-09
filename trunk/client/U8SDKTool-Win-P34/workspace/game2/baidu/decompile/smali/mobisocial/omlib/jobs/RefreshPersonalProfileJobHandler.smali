.class public Lmobisocial/omlib/jobs/RefreshPersonalProfileJobHandler;
.super Ljava/lang/Object;
.source "RefreshPersonalProfileJobHandler.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/DurableJobHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/client/interfaces/DurableJobHandler",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "USER_PROFILE_DETAILS"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public getJobType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    const-string v0, "USER_PROFILE_DETAILS"

    return-object v0
.end method

.method public getSlice()J
    .registers 3

    .prologue
    .line 28
    const-wide v0, 0x492559f64fL

    return-wide v0
.end method

.method public onReconstitutedRequest()Z
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public perform(Lmobisocial/omlib/client/LongdanClient;)Ljava/lang/Object;
    .registers 5
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsRequest;-><init>()V

    .line 48
    .local v0, "r":Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsRequest;
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsResponse;

    invoke-virtual {v1, v0, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    return-object v1
.end method

.method public requestAboutToBeScheduled(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 38
    return-void
.end method

.method public requestComplete(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/Object;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 8
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p4, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 53
    move-object v0, p2

    check-cast v0, Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsResponse;

    .line 54
    .local v0, "response":Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsResponse;
    iget-object v1, v0, Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsResponse;->ProfileDetails:Lmobisocial/longdan/LDProtocols$LDProfileDetails;

    if-nez v1, :cond_8

    .line 57
    :goto_7
    return-void

    .line 56
    :cond_8
    iget-object v1, p1, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    iget-object v2, v0, Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsResponse;->ProfileDetails:Lmobisocial/longdan/LDProtocols$LDProfileDetails;

    invoke-virtual {v1, p3, p4, v2}, Lmobisocial/omlib/client/ClientIdentityUtils;->applyProfileDetails(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDProfileDetails;)V

    goto :goto_7
.end method
