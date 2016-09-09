.class public Lmobisocial/omlib/client/ClientGameUtils;
.super Ljava/lang/Object;
.source "ClientGameUtils.java"


# instance fields
.field private final longdanClient:Lmobisocial/omlib/client/LongdanClient;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/LongdanClient;)V
    .registers 2
    .param p1, "longdanClient"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lmobisocial/omlib/client/ClientGameUtils;->longdanClient:Lmobisocial/omlib/client/LongdanClient;

    .line 42
    return-void
.end method

.method private eventReportRequest(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDClientEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDClientEvent;>;"
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDEventReportRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDEventReportRequest;-><init>()V

    .line 162
    .local v0, "eventReportRequest":Lmobisocial/longdan/LDProtocols$LDEventReportRequest;
    iput-object p1, v0, Lmobisocial/longdan/LDProtocols$LDEventReportRequest;->Events:Ljava/util/List;

    .line 163
    new-instance v1, Lmobisocial/omlib/jobs/ControlMessageJobHandler;

    invoke-direct {v1, v0}, Lmobisocial/omlib/jobs/ControlMessageJobHandler;-><init>(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V

    .line 164
    .local v1, "messageJobHandler":Lmobisocial/omlib/jobs/ControlMessageJobHandler;
    iget-object v2, p0, Lmobisocial/omlib/client/ClientGameUtils;->longdanClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V

    .line 165
    return-void
.end method


# virtual methods
.method public addView(Lmobisocial/longdan/LDProtocols$LDPostId;)Lmobisocial/longdan/LDProtocols$LDSimpleResponse;
    .registers 5
    .param p1, "postId"    # Lmobisocial/longdan/LDProtocols$LDPostId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDAddViewRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDAddViewRequest;-><init>()V

    .line 91
    .local v0, "addViewRequest":Lmobisocial/longdan/LDProtocols$LDAddViewRequest;
    iput-object p1, v0, Lmobisocial/longdan/LDProtocols$LDAddViewRequest;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    .line 92
    iget-object v1, p0, Lmobisocial/omlib/client/ClientGameUtils;->longdanClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    invoke-virtual {v1, v0, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    return-object v1
.end method

.method public followUser(Ljava/lang/String;Z)Lmobisocial/longdan/LDProtocols$LDSimpleResponse;
    .registers 6
    .param p1, "accountToFollow"    # Ljava/lang/String;
    .param p2, "follow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDFollowUserRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDFollowUserRequest;-><init>()V

    .line 97
    .local v0, "followUserRequest":Lmobisocial/longdan/LDProtocols$LDFollowUserRequest;
    iput-object p1, v0, Lmobisocial/longdan/LDProtocols$LDFollowUserRequest;->AccountToFollow:Ljava/lang/String;

    .line 98
    iput-boolean p2, v0, Lmobisocial/longdan/LDProtocols$LDFollowUserRequest;->Follow:Z

    .line 99
    iget-object v1, p0, Lmobisocial/omlib/client/ClientGameUtils;->longdanClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    invoke-virtual {v1, v0, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    return-object v1
.end method

.method public getAccountsFolowed(Ljava/lang/String;[BI)Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedResponse;
    .registers 7
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "continuationKey"    # [B
    .param p3, "numToGet"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedRequest;-><init>()V

    .line 133
    .local v0, "getAccountsFollowedRequest":Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedRequest;
    iput-object p1, v0, Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedRequest;->Account:Ljava/lang/String;

    .line 134
    iput-object p2, v0, Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedRequest;->ContinuationKey:[B

    .line 135
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedRequest;->NumToGet:Ljava/lang/Integer;

    .line 136
    iget-object v1, p0, Lmobisocial/omlib/client/ClientGameUtils;->longdanClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedResponse;

    invoke-virtual {v1, v0, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedResponse;

    return-object v1
.end method

.method public getDownloadTicket(ZLjava/lang/String;)Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;
    .registers 6
    .param p1, "alreadyEncrypted"    # Z
    .param p2, "blobLinkString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;-><init>()V

    .line 142
    .local v0, "getDownloadTicketRequest":Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;
    iput-object p2, v0, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;->BlobLinkString:Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lmobisocial/omlib/client/ClientGameUtils;->longdanClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;

    invoke-virtual {v1, v0, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;

    return-object v1
.end method

.method public getFollowingWalls([B)Lmobisocial/longdan/LDProtocols$LDWallsResponse;
    .registers 5
    .param p1, "continuationKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDGetFollowingWallRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDGetFollowingWallRequest;-><init>()V

    .line 121
    .local v0, "getFollowingWallRequest":Lmobisocial/longdan/LDProtocols$LDGetFollowingWallRequest;
    iput-object p1, v0, Lmobisocial/longdan/LDProtocols$LDGetFollowingWallRequest;->ContinuationKey:[B

    .line 122
    iget-object v1, p0, Lmobisocial/omlib/client/ClientGameUtils;->longdanClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDWallsResponse;

    invoke-virtual {v1, v0, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDWallsResponse;

    return-object v1
.end method

.method public getGameWall(Ljava/lang/String;Lmobisocial/longdan/LDProtocols$LDPostTag;[BI)Lmobisocial/longdan/LDProtocols$LDWallResponse;
    .registers 8
    .param p1, "gameTag"    # Ljava/lang/String;
    .param p2, "optionalSecondTag"    # Lmobisocial/longdan/LDProtocols$LDPostTag;
    .param p3, "continuationKey"    # [B
    .param p4, "postsToGet"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDGetGameWallRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDGetGameWallRequest;-><init>()V

    .line 112
    .local v0, "getGameWallRequest":Lmobisocial/longdan/LDProtocols$LDGetGameWallRequest;
    iput-object p1, v0, Lmobisocial/longdan/LDProtocols$LDGetGameWallRequest;->GameTag:Ljava/lang/String;

    .line 113
    iput-object p2, v0, Lmobisocial/longdan/LDProtocols$LDGetGameWallRequest;->SecondTag:Lmobisocial/longdan/LDProtocols$LDPostTag;

    .line 114
    iput-object p3, v0, Lmobisocial/longdan/LDProtocols$LDGetGameWallRequest;->ContinuationKey:[B

    .line 115
    iput p4, v0, Lmobisocial/longdan/LDProtocols$LDGetGameWallRequest;->PostsToGet:I

    .line 116
    iget-object v1, p0, Lmobisocial/omlib/client/ClientGameUtils;->longdanClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDWallResponse;

    invoke-virtual {v1, v0, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDWallResponse;

    return-object v1
.end method

.method public getPost(Lmobisocial/longdan/LDProtocols$LDPostId;)Lmobisocial/longdan/LDProtocols$LDGetPostResponse;
    .registers 5
    .param p1, "postId"    # Lmobisocial/longdan/LDProtocols$LDPostId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDGetPostRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDGetPostRequest;-><init>()V

    .line 127
    .local v0, "getPostRequest":Lmobisocial/longdan/LDProtocols$LDGetPostRequest;
    iput-object p1, v0, Lmobisocial/longdan/LDProtocols$LDGetPostRequest;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    .line 128
    iget-object v1, p0, Lmobisocial/omlib/client/ClientGameUtils;->longdanClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDGetPostResponse;

    invoke-virtual {v1, v0, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDGetPostResponse;

    return-object v1
.end method

.method public getStandardPostTags()Lmobisocial/longdan/LDProtocols$LDGetStandardPostTagsResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDGetStandardPostTagsRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDGetStandardPostTagsRequest;-><init>()V

    .line 148
    .local v0, "getStandardPostTagsRequest":Lmobisocial/longdan/LDProtocols$LDGetStandardPostTagsRequest;
    iget-object v1, p0, Lmobisocial/omlib/client/ClientGameUtils;->longdanClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDGetStandardPostTagsResponse;

    invoke-virtual {v1, v0, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDGetStandardPostTagsResponse;

    return-object v1
.end method

.method public getUserWall(Ljava/lang/String;[BI)Lmobisocial/longdan/LDProtocols$LDWallResponse;
    .registers 7
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "continuationKey"    # [B
    .param p3, "postsToGet"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDGetUserWallRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDGetUserWallRequest;-><init>()V

    .line 104
    .local v0, "ldGetUserWallRequest":Lmobisocial/longdan/LDProtocols$LDGetUserWallRequest;
    iput-object p1, v0, Lmobisocial/longdan/LDProtocols$LDGetUserWallRequest;->Account:Ljava/lang/String;

    .line 105
    iput-object p2, v0, Lmobisocial/longdan/LDProtocols$LDGetUserWallRequest;->ContinuationKey:[B

    .line 106
    iput p3, v0, Lmobisocial/longdan/LDProtocols$LDGetUserWallRequest;->PostsToGet:I

    .line 107
    iget-object v1, p0, Lmobisocial/omlib/client/ClientGameUtils;->longdanClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDWallResponse;

    invoke-virtual {v1, v0, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDWallResponse;

    return-object v1
.end method

.method public likePost(Lmobisocial/longdan/LDProtocols$LDPostId;Z)Lmobisocial/longdan/LDProtocols$LDSimpleResponse;
    .registers 6
    .param p1, "postId"    # Lmobisocial/longdan/LDProtocols$LDPostId;
    .param p2, "like"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDLikePostRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDLikePostRequest;-><init>()V

    .line 84
    .local v0, "likePostRequest":Lmobisocial/longdan/LDProtocols$LDLikePostRequest;
    iput-boolean p2, v0, Lmobisocial/longdan/LDProtocols$LDLikePostRequest;->Like:Z

    .line 85
    iput-object p1, v0, Lmobisocial/longdan/LDProtocols$LDLikePostRequest;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    .line 86
    iget-object v1, p0, Lmobisocial/omlib/client/ClientGameUtils;->longdanClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    invoke-virtual {v1, v0, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    return-object v1
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/String;Lmobisocial/longdan/LDProtocols$LDPostTag;Ljava/util/List;)Lmobisocial/longdan/LDProtocols$LDAddPostResponse;
    .registers 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "primaryTag"    # Lmobisocial/longdan/LDProtocols$LDPostTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmobisocial/longdan/LDProtocols$LDPostTag;",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDPostTag;",
            ">;)",
            "Lmobisocial/longdan/LDProtocols$LDAddPostResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 60
    .local p4, "secondaryTags":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDPostTag;>;"
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDPostMessageRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDPostMessageRequest;-><init>()V

    .line 61
    .local v0, "addPostRequest":Lmobisocial/longdan/LDProtocols$LDPostMessageRequest;
    iput-object p1, v0, Lmobisocial/longdan/LDProtocols$LDPostMessageRequest;->Title:Ljava/lang/String;

    .line 62
    iput-object p2, v0, Lmobisocial/longdan/LDProtocols$LDPostMessageRequest;->Message:Ljava/lang/String;

    .line 63
    iput-object p3, v0, Lmobisocial/longdan/LDProtocols$LDPostMessageRequest;->PrimaryTag:Lmobisocial/longdan/LDProtocols$LDPostTag;

    .line 64
    iput-object p4, v0, Lmobisocial/longdan/LDProtocols$LDPostMessageRequest;->SecondaryTags:Ljava/util/List;

    .line 65
    iget-object v1, p0, Lmobisocial/omlib/client/ClientGameUtils;->longdanClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDAddPostResponse;

    invoke-virtual {v1, v0, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDAddPostResponse;

    return-object v1
.end method

.method public postScreenshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmobisocial/longdan/LDProtocols$LDPostTag;Ljava/util/List;IILjava/util/HashMap;)Lmobisocial/longdan/LDProtocols$LDAddPostResponse;
    .registers 13
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "blobLinkString"    # Ljava/lang/String;
    .param p4, "thumbnailLinkString"    # Ljava/lang/String;
    .param p5, "primaryTag"    # Lmobisocial/longdan/LDProtocols$LDPostTag;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmobisocial/longdan/LDProtocols$LDPostTag;",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDPostTag;",
            ">;II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmobisocial/longdan/LDProtocols$LDAddPostResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 69
    .local p6, "secondaryTags":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDPostTag;>;"
    .local p9, "reportMeta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDPostScreenShotRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDPostScreenShotRequest;-><init>()V

    .line 70
    .local v0, "postScreenShotRequest":Lmobisocial/longdan/LDProtocols$LDPostScreenShotRequest;
    iput-object p1, v0, Lmobisocial/longdan/LDProtocols$LDPostScreenShotRequest;->Title:Ljava/lang/String;

    .line 71
    iput-object p4, v0, Lmobisocial/longdan/LDProtocols$LDPostScreenShotRequest;->ThumbnailLinkString:Ljava/lang/String;

    .line 72
    iput-object p3, v0, Lmobisocial/longdan/LDProtocols$LDPostScreenShotRequest;->BlobLinkString:Ljava/lang/String;

    .line 73
    iput-object p2, v0, Lmobisocial/longdan/LDProtocols$LDPostScreenShotRequest;->Description:Ljava/lang/String;

    .line 74
    iput-object p5, v0, Lmobisocial/longdan/LDProtocols$LDPostScreenShotRequest;->PrimaryTag:Lmobisocial/longdan/LDProtocols$LDPostTag;

    .line 75
    iput-object p6, v0, Lmobisocial/longdan/LDProtocols$LDPostScreenShotRequest;->SecondaryTags:Ljava/util/List;

    .line 76
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDPostScreenShotRequest;->Width:Ljava/lang/Integer;

    .line 77
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDPostScreenShotRequest;->Height:Ljava/lang/Integer;

    .line 78
    iput-object p9, v0, Lmobisocial/longdan/LDProtocols$LDPostScreenShotRequest;->ReportMeta:Ljava/util/HashMap;

    .line 79
    iget-object v1, p0, Lmobisocial/omlib/client/ClientGameUtils;->longdanClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDAddPostResponse;

    invoke-virtual {v1, v0, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDAddPostResponse;

    return-object v1
.end method

.method public postVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmobisocial/longdan/LDProtocols$LDPostTag;Ljava/util/List;IIDLjava/util/HashMap;)Lmobisocial/longdan/LDProtocols$LDAddPostResponse;
    .registers 15
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "blobLinkString"    # Ljava/lang/String;
    .param p4, "thumbnailBlobLinkString"    # Ljava/lang/String;
    .param p5, "primaryTag"    # Lmobisocial/longdan/LDProtocols$LDPostTag;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "duration"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmobisocial/longdan/LDProtocols$LDPostTag;",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDPostTag;",
            ">;IID",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmobisocial/longdan/LDProtocols$LDAddPostResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 45
    .local p6, "secondaryTags":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDPostTag;>;"
    .local p11, "reportMeta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDPostVideoRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDPostVideoRequest;-><init>()V

    .line 46
    .local v0, "postVideoRequest":Lmobisocial/longdan/LDProtocols$LDPostVideoRequest;
    iput-object p1, v0, Lmobisocial/longdan/LDProtocols$LDPostVideoRequest;->Title:Ljava/lang/String;

    .line 47
    iput-object p2, v0, Lmobisocial/longdan/LDProtocols$LDPostVideoRequest;->Description:Ljava/lang/String;

    .line 48
    iput-object p3, v0, Lmobisocial/longdan/LDProtocols$LDPostVideoRequest;->BlobLinkString:Ljava/lang/String;

    .line 49
    iput-object p4, v0, Lmobisocial/longdan/LDProtocols$LDPostVideoRequest;->ThumbnailBlobLinkString:Ljava/lang/String;

    .line 50
    iput-object p5, v0, Lmobisocial/longdan/LDProtocols$LDPostVideoRequest;->PrimaryTag:Lmobisocial/longdan/LDProtocols$LDPostTag;

    .line 51
    iput-object p6, v0, Lmobisocial/longdan/LDProtocols$LDPostVideoRequest;->SecondaryTags:Ljava/util/List;

    .line 52
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDPostVideoRequest;->Width:Ljava/lang/Integer;

    .line 53
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDPostVideoRequest;->Height:Ljava/lang/Integer;

    .line 54
    invoke-static {p9, p10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDPostVideoRequest;->Duration:Ljava/lang/Double;

    .line 55
    iput-object p11, v0, Lmobisocial/longdan/LDProtocols$LDPostVideoRequest;->ReportMeta:Ljava/util/HashMap;

    .line 56
    iget-object v1, p0, Lmobisocial/omlib/client/ClientGameUtils;->longdanClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDAddPostResponse;

    invoke-virtual {v1, v0, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDAddPostResponse;

    return-object v1
.end method

.method public singleEventReportRequest(Ljava/lang/String;)V
    .registers 6
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "events":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDClientEvent;>;"
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDClientEvent;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDClientEvent;-><init>()V

    .line 154
    .local v0, "event":Lmobisocial/longdan/LDProtocols$LDClientEvent;
    iput-object p1, v0, Lmobisocial/longdan/LDProtocols$LDClientEvent;->Key:Ljava/lang/String;

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lmobisocial/longdan/LDProtocols$LDClientEvent;->UtcTimestamp:J

    .line 156
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-direct {p0, v1}, Lmobisocial/omlib/client/ClientGameUtils;->eventReportRequest(Ljava/util/List;)V

    .line 158
    return-void
.end method
